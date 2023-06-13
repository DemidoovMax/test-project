const { Sequelize } = require('sequelize');
const { pgRoute } = require('../configs');

const { ENV, PATH_DATABASE } = process.env;

const sequelize = new Sequelize(
  ENV === 'production' ? PATH_DATABASE : pgRoute,
  {
    define: {
      freezeTableName: true,
      timestamps: false,
    },
  }
);

async function testConnection() {
  try {
    await sequelize.authenticate();
    console.log('Соединение успешно');
  } catch (error) {
    console.error('Ошибка соединения:', error);
  }
}

async function syncDB() {
  try {
    await sequelize.sync();
    console.log('Соединение успешно');
  } catch (error) {
    console.error('Ошибка соединения', error);
  }
}

const Customers = require('./models/customers')(sequelize);
const Goods = require('./models/goods')(sequelize);

module.exports = {
  sequelize: Sequelize,
  customers: Customers,
  goods: Goods,
  testConnection,
  syncDB,
};
