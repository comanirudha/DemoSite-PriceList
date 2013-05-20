--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading international data the pricelist data in multiple currencies.  Implementers can exclude this file
-- to load their own international data.
--


INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY) VALUES (2,'EUR','EUR Dollar','EUR');
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY) VALUES (3,'GBP','GB Pound','GBP');
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY) VALUES (4,'MXN','Mexican Peso','MXN');

--if GBP then use EUR
insert into BLC_PL_CRITERIA_RULE values(1,'MVEL.eval("toUpperCase()",locale.localeCode).contains(MVEL.eval("toUpperCase()","en_GB"))')
insert into BLC_PRICE_LIST_RULE(PRICE_LIST_RULE_ID,PRICE_LIST,PRIORITY,FRIENDLY_NAME) VALUES(1,3,1,'GB Pound if contains en_GB');
INSERT INTO BLC_PL_RULE_MAP VALUES (1,1,'LOCALE');
--if US then use EUR
insert into BLC_PL_CRITERIA_RULE values(2,'MVEL.eval("toUpperCase()",locale.localeCode).contains(MVEL.eval("toUpperCase()","en_US"))')
insert into BLC_PRICE_LIST_RULE(PRICE_LIST_RULE_ID,PRICE_LIST,PRIORITY,FRIENDLY_NAME) VALUES(2,1,2,'US Dollar if contains en_US');
INSERT INTO BLC_PL_RULE_MAP VALUES (2,2,'LOCALE');
--if GBP then use EUR
insert into BLC_PL_CRITERIA_RULE values(3,'MVEL.eval("toUpperCase()",locale.localeCode).contains(MVEL.eval("toUpperCase()","es_ES"))')
insert into BLC_PRICE_LIST_RULE(PRICE_LIST_RULE_ID,PRICE_LIST,PRIORITY,FRIENDLY_NAME) VALUES(3,2,3,'EUR Dollar if contains es_ES');
INSERT INTO BLC_PL_RULE_MAP VALUES (3,3,'LOCALE');
--if US then use EUR
insert into BLC_PL_CRITERIA_RULE values(4,'MVEL.eval("toUpperCase()",locale.localeCode).contains(MVEL.eval("toUpperCase()","MX"))')
insert into BLC_PRICE_LIST_RULE(PRICE_LIST_RULE_ID,PRICE_LIST,PRIORITY,FRIENDLY_NAME) VALUES(4,4,4,'Mexican Peso if contains MX');
INSERT INTO BLC_PL_RULE_MAP VALUES (4,4,'LOCALE');
--if GBP then use EUR
insert into BLC_PL_CRITERIA_RULE values(5,'MVEL.eval("toUpperCase()",locale.localeCode).contains(MVEL.eval("toUpperCase()","FR"))')
insert into BLC_PRICE_LIST_RULE(PRICE_LIST_RULE_ID,PRICE_LIST,PRIORITY,FRIENDLY_NAME) VALUES(5,2,5,'EUR Dollar if contains FR');
INSERT INTO BLC_PL_RULE_MAP VALUES (5,5,'LOCALE');
--if US then use EUR
insert into BLC_PL_CRITERIA_RULE values(6,'MVEL.eval("toUpperCase()",locale.localeCode).contains(MVEL.eval("toUpperCase()","US"))')
insert into BLC_PRICE_LIST_RULE(PRICE_LIST_RULE_ID,PRICE_LIST,PRIORITY,FRIENDLY_NAME) VALUES(6,1,6,'US Dollar if contains US');
INSERT INTO BLC_PL_RULE_MAP VALUES (6,6,'LOCALE');
