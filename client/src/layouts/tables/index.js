/* eslint-disable no-console */
/* eslint-disable import/no-unresolved */
/**
=========================================================
* Material Dashboard 2 React - v2.1.0
=========================================================

* Product Page: https://www.creative-tim.com/product/material-dashboard-react
* Copyright 2022 Creative Tim (https://www.creative-tim.com)

Coded by www.creative-tim.com

 =========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
*/

// @mui material components
import Grid from "@mui/material/Grid";
import Card from "@mui/material/Card";

// Material Dashboard 2 React components
import MDBox from "components/MDBox";
import MDButton from "components/MDButton";
import MDTypography from "components/MDTypography";

// Material Dashboard 2 React example components
import DashboardLayout from "examples/LayoutContainers/DashboardLayout";
import DashboardNavbar from "examples/Navbars/DashboardNavbar";
import Footer from "examples/Footer";

import { AgGridReact } from "ag-grid-react";
import { useState, useRef, useEffect, useMemo, useCallback } from "react";
import { mainApi } from "utils/Api";
import Preloader from "Preloader/Preloader";
import "ag-grid-community/styles/ag-grid.css";
import "ag-grid-community/styles/ag-theme-alpine.css";
import { Box, TextField } from "@mui/material";

function Tables() {
  // колонки таблицы "покупатели"
  const [customersColumns] = useState([
    {
      field: "id",
      maxWidth: 100,
    },
    {
      field: "first_name",
      editable: true,
    },
    { field: "last_name", editable: true },
    { field: "email", editable: true },
    { field: "balance", editable: true },
    { field: "creation_date" },
  ]);
  // колонки таблицы "заказы"
  const [goodsColumns] = useState([
    { field: "product_id", maxWidth: 100 },
    { field: "product_name" },
    { field: "date_buy" },
    { field: "price" },
    { field: "buyer_id" },
  ]);

  const [isLoading, setIsLoading] = useState(false);
  const [goodsList, setGoodsList] = useState([]);
  const [onEdit, setOnEdit] = useState(false);
  const [onAdding, setOnAdding] = useState(false);
  const [values, setValues] = useState({ first_name: "", last_name: "", email: "", balance: "" });

  // получение данных из БД для статичной таблицы:
  // заказы
  function getGoodsData() {
    setIsLoading(true);
    mainApi
      .getGoodsData()
      .then((data) => setGoodsList(data))
      .then(() => {
        setIsLoading(false);
      })
      .catch((err) => {
        console.log(err);
      });
  }

  useEffect(() => {
    getGoodsData();
  }, []);

  // AgGrid options
  const gridRef = useRef(); // доступ к AGGrid API
  const cacheBlockSize = 10; // кол-во получаемых строк с сервера

  // получение данных для таблицы "пользователи"
  const datasource = {
    getRows(params) {
      const { startRow } = params;
      const page = startRow / 10;
      let url = "http://localhost:4001/customers?";
      // загрузка строк Infinite Row
      url += `page=${page}`;
      fetch(url)
        .then((httpResponse) => httpResponse.json())
        .then((response) => {
          let lastRow = null;
          if (response.length < cacheBlockSize) {
            lastRow = startRow + response.length;
          }
          params.successCallback(response, lastRow);
        })
        .catch((error) => {
          console.error(error);
          params.failCallback();
        });
    },
  };

  const onGridReady = (params) => {
    params.api.setDatasource(datasource);
  };

  // общие настройки для всех колонок
  const defaultColDef = useMemo(() => ({
    sortable: true,
    editable: false,
    resizable: true,
    flex: 1,
    minWidth: 30,
  }));

  // обновление данных таблицы
  async function rowsRerender() {
    gridRef.current.api.setDatasource(datasource);
    setIsLoading(false);
  }
  // действия при начале редактирования строки
  const onRowEditingStarted = () => {
    setOnEdit(true);
  };
  // действия при окончании редактирования строки
  const onRowEditingStopped = () => {
    setOnEdit(false);
    setOnAdding(false);
    rowsRerender();
  };

  // сохранение новой строки в БД и отрисовка обновлённых данных
  const saveNewRow = () => {
    setOnAdding(false);
    mainApi.addCustomer(values).then(() => {
      setIsLoading(true);
      rowsRerender()
        .then(() => setOnEdit(false))
        .catch((err) => {
          setIsLoading(false);
          console.log(err);
        });
    });
  };

  const handleChange = (e) => {
    const { target } = e;
    const { name, value } = target;
    setValues({ ...values, [name]: value });
  };

  const handleValueChanger = (e) => {
    handleChange(e);
  };

  // редактирование строки
  const editRow = useCallback(() => {
    const { api } = gridRef.current;
    const selectedRow = api.getSelectedNodes();
    if (selectedRow.length > 0) {
      api.setFocusedCell(selectedRow[0].rowIndex, "id");
      api.startEditingCell({
        rowIndex: selectedRow[0].rowIndex,
        colKey: "id",
      });
    } else console.log("He выбрана строка для редактирования");
  }, []);

  // обновление данных строки
  const updateRow = () => {
    const { api } = gridRef.current;
    api.stopEditing();
    const selectedRow = api.getSelectedNodes();
    setIsLoading(true);
    mainApi.updateCustomer(selectedRow[0].data).then(() => {
      rowsRerender()
        .then(() => setOnEdit(false))
        .catch((err) => {
          console.log(err);
        });
    });
  };

  // удаление покупателя
  const deleteRow = () => {
    const selectedRow = gridRef.current.api.getSelectedNodes();
    setIsLoading(true);
    mainApi.deleteCustomer(selectedRow[0].data.id).then(() => {
      rowsRerender().catch((err) => {
        console.log(err);
      });
    });
  };

  const cancelEdit = () => {
    if (onAdding) setOnAdding(false);
    if (onEdit) {
      setOnEdit(false);
      gridRef.current.api.stopEditing();
    }
  };

  return (
    <DashboardLayout>
      <DashboardNavbar />
      <MDBox pt={6} pb={3}>
        <Grid container spacing={6}>
          <Grid item xs={12}>
            <Card>
              <Preloader isLoading={isLoading} />
              <MDBox
                mx={2}
                mt={-3}
                py={3}
                px={2}
                variant="gradient"
                bgColor="info"
                borderRadius="lg"
                coloredShadow="info"
              >
                <MDTypography variant="h6" color="white">
                  Покупатели
                </MDTypography>
              </MDBox>
              <MDBox pt={3}>
                {onAdding || onEdit ? (
                  <MDButton
                    sx={{ ml: "0.5rem" }}
                    size="small"
                    variant="gradient"
                    color="success"
                    onClick={cancelEdit}
                  >
                    Отменить
                  </MDButton>
                ) : (
                  <MDButton
                    sx={{ ml: "0.5rem" }}
                    size="small"
                    variant="gradient"
                    color="success"
                    onClick={() => {
                      setOnAdding(true);
                    }}
                  >
                    Добавить запись
                  </MDButton>
                )}
                {onEdit || onAdding ? (
                  <MDButton
                    sx={{ m: "0.5rem" }}
                    size="small"
                    variant="gradient"
                    color="warning"
                    onClick={() => {
                      if (onAdding) {
                        saveNewRow();
                      } else updateRow();
                    }}
                  >
                    Сохранить запись
                  </MDButton>
                ) : (
                  <MDButton
                    sx={{ m: "0.5rem" }}
                    size="small"
                    variant="gradient"
                    color="secondary"
                    onClick={editRow}
                  >
                    Изменить запись
                  </MDButton>
                )}
                <MDButton
                  size="small"
                  variant="gradient"
                  color="error"
                  onClick={deleteRow}
                  disabled={onEdit || onAdding}
                >
                  Удалить запись
                </MDButton>
                {onAdding ? (
                  <Box
                    component="form"
                    sx={{
                      "& .MuiTextField-root": { m: 1, width: "20ch" },
                    }}
                    noValidate
                    autoComplete="off"
                    autoFocus="true"
                  >
                    <div>
                      <TextField
                        required
                        type="text"
                        id="name"
                        name="name"
                        label="Имя"
                        placeholder="от 2 до 30 символов"
                        onChange={handleValueChanger}
                        inputProps={{ minlength: 2, maxLength: 30 }}
                      />
                      <TextField
                        required
                        id="surname"
                        name="surname"
                        label="Фамилия"
                        placeholder="от 2 до 30 символов"
                        onChange={handleValueChanger}
                        inputProps={{ minlength: 2, maxLength: 30 }}
                      />
                      <TextField
                        required
                        type="email"
                        id="email"
                        name="email"
                        label="email"
                        placeholder="email@mail.com"
                        onChange={handleValueChanger}
                      />
                      <TextField
                        id="balance"
                        name="balance"
                        inputProps={{ inputMode: "numeric", pattern: "[0-9]*" }}
                        label="Баланс"
                        onChange={handleValueChanger}
                      />
                    </div>
                  </Box>
                ) : (
                  ""
                )}
                <div className="ag-theme-alpine" style={{ height: 400, width: "100%" }}>
                  <AgGridReact
                    ref={gridRef} // Ref for accessing Grid's API
                    columnDefs={customersColumns} // Column Defs for Columns
                    defaultColDef={defaultColDef} // Default Column Properties
                    editType="fullRow"
                    suppressClickEdit
                    animateRows // Optional - set to 'true' to have rows animate when sorted
                    rowSelection="single" // Options - allows click selection of rows
                    onRowEditingStarted={onRowEditingStarted}
                    onRowEditingStopped={onRowEditingStopped}
                    rowModelType="infinite"
                    cacheBlockSize={cacheBlockSize}
                    cacheOverflowSize={2}
                    maxConcurrentDatasourceRequests={1}
                    infiniteInitialRowCount={10}
                    maxBlocksInCache={10}
                    onGridReady={onGridReady}
                  />
                </div>
              </MDBox>
            </Card>
          </Grid>
          <Grid item xs={12}>
            <Card>
              <Preloader isLoading={isLoading} />
              <MDBox
                mx={2}
                mt={-3}
                py={3}
                px={2}
                variant="gradient"
                bgColor="info"
                borderRadius="lg"
                coloredShadow="info"
              >
                <MDTypography variant="h6" color="white">
                  Товары
                </MDTypography>
              </MDBox>
              <MDBox pt={3}>
                <div className="ag-theme-alpine" style={{ height: 400, width: "100%" }}>
                  <AgGridReact
                    rowData={goodsList} // Row Data for Rows
                    columnDefs={goodsColumns} // Column Defs for Columns
                    defaultColDef={defaultColDef} // Default Column Properties
                    animateRows // Optional - set to 'true' to have rows animate when sorted
                    rowSelection="multiple" // Options - allows click selection of rows
                  />
                </div>
              </MDBox>
            </Card>
          </Grid>
        </Grid>
      </MDBox>
      <Footer />
    </DashboardLayout>
  );
}

export default Tables;
