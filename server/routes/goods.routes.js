const goodsRouter = require('express').Router();
const { getAllGoods } = require('../controllers/goods');

goodsRouter.get('/', getAllGoods);
module.exports = { goodsRouter };
