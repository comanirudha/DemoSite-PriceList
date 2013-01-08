--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading the the catalog data used in the Archetype.   Implementers can change this file
-- to load their initial catalog.
--


--INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, PRICE_LIST_ID) values (1, 2);
--INSERT INTO mysearchfacetrangeimpl (SEARCH_FACET_RANGE_ID, PRICE_LIST_ID) values (2, 2);
--INSERT INTO mysearchfacetrangeimpl (SEARCH_FACET_RANGE_ID, PRICE_LIST_ID) values (3, 2);
--INSERT INTO mysearchfacetrangeimpl (SEARCH_FACET_RANGE_ID, PRICE_LIST_ID) values (4, 2);
--INSERT INTO mysearchfacetrangeimpl (SEARCH_FACET_RANGE_ID, PRICE_LIST_ID) values (5, 2);
--INSERT INTO mysearchfacetrangeimpl (SEARCH_FACET_RANGE_ID, PRICE_LIST_ID) values (6, 2);
--INSERT INTO mysearchfacetrangeimpl (SEARCH_FACET_RANGE_ID, PRICE_LIST_ID) values (7, 2);

update  BLC_SEARCH_FACET_RANGE set  PRICE_LIST_ID=2;
--insert into myproductoptionvalueimpl(PRODUCT_OPTION_VALUE_ID) values (1);
--insert into myproductoptionvalueimpl(PRODUCT_OPTION_VALUE_ID) values (2);
--insert into myproductoptionvalueimpl(PRODUCT_OPTION_VALUE_ID) values (3);
--insert into myproductoptionvalueimpl(PRODUCT_OPTION_VALUE_ID) values (11);
--insert into myproductoptionvalueimpl(PRODUCT_OPTION_VALUE_ID) values (12);
--insert into myproductoptionvalueimpl(PRODUCT_OPTION_VALUE_ID) values (13);
--insert into myproductoptionvalueimpl(PRODUCT_OPTION_VALUE_ID) values (14); 
--INSERT INTO MYOFFERIMPL(OFFER_ID) VALUES(1);
--INSERT INTO myskuimpl (SKU_ID) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (100), (111), (112), (113), (114), (121), (122), (123), (124), (131), (132), (133), (134), (200), (211), (212), (213), (214), (221), (222), (223), (224), (231), (232), (233), (234), (300), (311), (312), (313), (314), (321), (322), (323), (324), (331), (332), (333), (334), (400), (411), (412), (413), (414), (421), (422), (423), (424), (431), (432), (433), (434), (500), (511), (512), (513), (514), (521), (522), (523), (524), (531), (532), (533), (534), (600), (611), (612), (613), (614), (621), (622), (623), (624), (631), (632), (633), (634);