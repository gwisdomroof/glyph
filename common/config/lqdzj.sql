
CREATE TABLE IF NOT EXISTS `dzj_glyph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glyph_code` int(11) DEFAULT NULL COMMENT '字形ID码',
  `pic_num` varchar(32) DEFAULT NULL COMMENT '图片编号',
  `first_stock` char(4) DEFAULT NULL COMMENT '首笔',
  `radical` varchar(32) DEFAULT NULL COMMENT '部首',
  `stock_count` tinyint(4) DEFAULT NULL COMMENT '笔画数',
  `double_ids` varchar(32) DEFAULT NULL COMMENT '二分IDS',
  `mutiple_ids` varchar(32) DEFAULT NULL COMMENT '多分IDS',
  `stock_collection` varchar(64) DEFAULT NULL COMMENT '部件集合',
  `source` varchar(32) DEFAULT NULL COMMENT '来源',
  `source_type` tinyint(4) DEFAULT NULL COMMENT '来源编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

