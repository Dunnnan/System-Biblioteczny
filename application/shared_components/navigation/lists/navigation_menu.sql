prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(352175770987138588)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>500991931
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(352475671504138922)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460662693492218409)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>unistr('Znajd\017A egzemplarz')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(457157976196960131)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Publikacje'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(451207827139465917)
,p_list_item_display_sequence=>21
,p_list_item_link_text=>'Sale'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-meeting-room'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'47'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(451225806481505340)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>unistr('Wyposa\017Cenie')
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'48'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(450915444336855594)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>unistr('Napisz sugesti\0119')
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460705090871869082)
,p_list_item_display_sequence=>49
,p_list_item_link_text=>unistr('Moje wypo\017Cyczenia')
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bookmark'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(453039064660754831)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Moje rezerwacje'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460718269061067454)
,p_list_item_display_sequence=>51
,p_list_item_link_text=>'Moje kary'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-emoji-stuck-out-tongue-closed-eyes'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(372890162380544659)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Zarz\0105dzanie')
,p_list_item_icon=>'fa-exchange fa-anim-spin-step'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(369773886790818719)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Modyfikuj publikacje'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-notebook fam-information fam-is-info'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'101'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(451108947287925559)
,p_list_item_display_sequence=>131
,p_list_item_link_text=>'Modyfikuj sale'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-building-o fam-information fam-is-info'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(451172852522255850)
,p_list_item_display_sequence=>132
,p_list_item_link_text=>unistr('Modyfikuj wyposa\017Cenie')
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-hardware fam-information fam-is-info'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(461435485467681920)
,p_list_item_display_sequence=>133
,p_list_item_link_text=>'Modyfikuj rezerwacje'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-presentation fam-information fam-is-info'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(450957886748067728)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Sugestie'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-head-ai-sparkle fam-information fam-is-success'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(451054227487959911)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>unistr('Zam\00F3wienia')
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-cart fam-information fam-is-success'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460598105613839172)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('Wypo\017Cycz')
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-hand-stop-o fam-information fam-is-warning'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460616016020043626)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('Zwr\00F3\0107')
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-hand-grab-o fam-information fam-is-warning'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460826765250713739)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Kary'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-thumbs-o-down fam-information fam-is-danger'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'61'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460861942133778255)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>unistr('U\017Cytkownicy')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-hand-coins fam-information fam-is-danger'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(460777236521484261)
,p_list_item_display_sequence=>271
,p_list_item_link_text=>'Napisz komunikat'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil fam-information fam-is-disabled'
,p_security_scheme=>wwv_flow_imp.id(372888784318498432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp.component_end;
end;
/
