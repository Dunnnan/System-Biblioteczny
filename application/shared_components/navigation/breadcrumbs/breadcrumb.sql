prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>89367728885389629
,p_default_application_id=>281
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155988'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(352175289593138587)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(352175458122138587)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(352651424089448629)
,p_short_name=>unistr('Stw\00F3rz Konto')
,p_link=>'f?p=&APP_ID.:10009:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(369774795840818721)
,p_short_name=>'Modyfikuj publikacje'
,p_link=>'f?p=&APP_ID.:101:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(450916350688855608)
,p_short_name=>unistr('Napisz sugesti\0119')
,p_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(450958748193067730)
,p_short_name=>'Sugestie'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(451055139288959914)
,p_short_name=>unistr('Zam\00F3wienia')
,p_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(451109856289925561)
,p_short_name=>'Modyfikuj sale'
,p_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(451173792852255853)
,p_short_name=>unistr('Modyfikuj wyposa\017Cenie')
,p_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(451208781714465919)
,p_short_name=>'Sale'
,p_link=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(451226754753505342)
,p_short_name=>unistr('Wyposa\017Cenie')
,p_link=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(453039902485754836)
,p_short_name=>'Moje rezerwacje'
,p_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(454105061432555591)
,p_short_name=>'Wydania'
,p_link=>'f?p=&APP_ID.:104:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(454885295509582002)
,p_short_name=>'Egzemplarze'
,p_link=>'f?p=&APP_ID.:107:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>107
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(457158857536960144)
,p_short_name=>'Publikacje'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(458433215346001941)
,p_short_name=>unistr('Szczeg\00F3\0142y publikacji')
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460599013507839174)
,p_short_name=>unistr('Wypo\017Cycz')
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460616915683043627)
,p_short_name=>unistr('Zwr\00F3\0107')
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460663552670218411)
,p_short_name=>unistr('Znajd\017A egzemplarz')
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460705916009869083)
,p_short_name=>unistr('Moje wypo\017Cyczenia')
,p_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460719101190067456)
,p_short_name=>'Moje kary'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460778151032484269)
,p_short_name=>'Napisz komunikat'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460827859407713741)
,p_short_name=>'Kary'
,p_link=>'f?p=&APP_ID.:61:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(460862830745778259)
,p_short_name=>unistr('U\017Cytkownicy')
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(461436352021681923)
,p_short_name=>'Modyfikuj rezerwacje'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp.component_end;
end;
/
