const db = require('../db');

const Goods = db.goods;

module.exports.getAllGoods = (req, res, next) => {
  Goods.findAll()
    .then((data) => res.send(data))
    .catch(next);
};
