const { DataTypes } = require('sequelize');

module.exports = function (sequelize) {
  return sequelize.define('goods', {
    product_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
    },
    product_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    date_buy: {
      type: DataTypes.DATE,
      allowNull: false,
    },
    price: {
      type: DataTypes.NUMBER,
    },
    buyer_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  });
};
