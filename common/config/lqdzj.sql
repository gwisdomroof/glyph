# 来源：unicode，汉语大字典，台湾异体字字典，高丽异体字字典，敦煌俗字典
CREATE TABLE IF NOT EXISTS `dzj_glyph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glyph_code` int(11) DEFAULT NULL COMMENT '字形编码',
  `source` tinyint(4) DEFAULT NULL COMMENT '来源',
  `pic_num` varchar(32) DEFAULT NULL COMMENT '图片编号',
  `pic_name` varchar(32) DEFAULT NULL COMMENT '图片名称',
  `radical` varchar(32) DEFAULT NULL COMMENT '部首',
  `stock_count` tinyint(4) DEFAULT NULL COMMENT '笔画数',
  `stock_collection` varchar(128) DEFAULT NULL COMMENT '部件集合',
  `structure` tinyint(4) DEFAULT NULL COMMENT '结构',
  `pinyin` varchar(32) DEFAULT NULL COMMENT '拼音',
  `bishun` varchar(64) DEFAULT NULL COMMENT '笔顺',
  `wubi` varchar(32) DEFAULT NULL COMMENT '五笔',
  `cangjie` varchar(32) DEFAULT NULL COMMENT '仓颉',
  `sijiao` varchar(32) DEFAULT NULL COMMENT '四角',
  `fuhao` varchar(32) DEFAULT NULL COMMENT '附号',
  `rel_sutra` varchar(128) DEFAULT NULL COMMENT '相关藏经',
  `use_frequency` int(11) DEFAULT NULL COMMENT '使用频率',
  `status` enum('active','blocked') NOT NULL DEFAULT 'active' COMMENT '状态',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `created_at` int(10) unsigned NOT NULL,
  `updated_at` int(10) unsigned NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4;

# 类型：unicode、variant1、variant2、汇总
# 状态：0，尚未统计；1，已经统计。
CREATE TABLE IF NOT EXISTS `dzj_Gaoli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glyph` varchar(32) DEFAULT NULL COMMENT '字形',
  `stocks` int(11) DEFAULT NULL COMMENT '字频',
  `type` tinyint(2) DEFAULT NULL COMMENT '类型',
  `files` varchar(32) DEFAULT NULL COMMENT '文件名',
  `status` tinyint(1) DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4;


# unicode ids search
CREATE TABLE IF NOT EXISTS `dzj_unicode_ids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unicode` varchar(8) DEFAULT NULL COMMENT 'Unicode',
  `glyph` varchar(8) DEFAULT NULL COMMENT '字形',
  `stocks1` int(8) DEFAULT NULL COMMENT '笔画1',
  `stocks2` int(8) DEFAULT NULL COMMENT '笔画2',
  `stocks3` int(8) DEFAULT NULL COMMENT '笔画3',
  `stocks4` int(8) DEFAULT NULL COMMENT '笔画4',
  `cjk_ids1` varchar(32) DEFAULT NULL COMMENT 'CJK_IDS1',
  `cjk_ids2` varchar(32) DEFAULT NULL COMMENT 'CJK_IDS2',
  `bab_ids1` varchar(32) DEFAULT NULL COMMENT 'Babel_IDS1',
  `bab_ids2` varchar(32) DEFAULT NULL COMMENT 'Babel_IDS2',
  `cjke_ids1` varchar(32) DEFAULT NULL COMMENT 'CJKE_IDS1',
  `cjke_ids2` varchar(32) DEFAULT NULL COMMENT 'CJKE_IDS2',
  `min_ids` varchar(128) DEFAULT NULL COMMENT '最小拆分',
  `max_ids` varchar(256) DEFAULT NULL COMMENT '最大拆分',
  `mix_ids` varchar(256) DEFAULT NULL COMMENT '混合拆分',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4;

-- CREATE TABLE IF NOT EXISTS `dzj_variant` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
--   `glyph_id` int(11) DEFAULT NULL COMMENT '字形ID码',
--   `variant_char` varchar(32) NOT NULL COMMENT '异体字：unicode码，或图片编号',
--   `type` tinyint(4) DEFAULT NULL COMMENT '类型：狭义，特定，广义',
--   `normal_char` char(4) DEFAULT NULL COMMENT '正字',
--   `sutra_char_num` text DEFAULT NULL COMMENT '经字号',
--   `spell` varchar(8) DEFAULT NULL COMMENT '字音',
--   `meaning` text DEFAULT NULL COMMENT '字义',
--   `remark` varchar(128) DEFAULT NULL COMMENT '备注',
--   `created_at` int(10) unsigned NOT NULL,
--   `updated_at` int(10) unsigned NOT NULL,
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `dzj_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `gender` enum('male','woman','other') NOT NULL DEFAULT 'male' COMMENT '性别',
  `mobile` char(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
  `status` enum('active','blocked') NOT NULL DEFAULT 'active' COMMENT '状态',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间'
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;