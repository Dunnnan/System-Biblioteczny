prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>89367728885389629
,p_default_application_id=>281
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155988'
);
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>unistr('Szczeg\00F3\0142y publikacji')
,p_alias=>unistr('SZCZEG\00D3\0141Y-PUBLIKACJI')
,p_step_title=>unistr('Szczeg\00F3\0142y publikacji')
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.gold-glow {',
'    color: gold;',
'    font-weight: bold;',
'    text-shadow: 0 0 5px rgba(255, 215, 0, 0.7), ',
'                 0 0 10px rgba(255, 215, 0, 0.5);',
'}',
'.card-frame {',
'    max-width: 550px;',
'    max-height: 550px;',
'',
'    border: 5px solid gold;',
'    border-radius: 25px;',
'    padding: 5px;',
'    background-color: white;',
'    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3), ',
'                0 0 15px rgba(254, 255, 184, 0.7);',
'    display: inline-block;',
'}',
'.text-justify {',
'    text-align: justify;',
'}',
'',
'.button-glow:hover {',
'    color: gold;',
'    font-weight: bold;',
'    text-shadow: 0 0 5px rgba(255, 215, 0, 0.7), ',
'                 0 0 10px rgba(255, 215, 0, 0.5);',
'}',
'',
'.comments-text {',
'    white-space: pre-line;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(458432739157001938)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352290986886138687)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(352175289593138587)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(352353774767138737)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460491971635121006)
,p_plug_name=>'Recenzje'
,p_title=>'Recenzje'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352213310244138629)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_05'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    r.OCENA,',
unistr('    r.OCENA || ''\2B50'),
'    '' || r.KOMENTARZ AS KOMENTARZ,',
'    r.DATARECENZJI,',
'    u.ZDJECIE,',
'    u.IMIE || '' '' || u.NAZWISKO AS AUTOR',
'FROM RECENZJA r',
'JOIN UZYTKOWNIK u ON u.UZYTKOWNIKID = r.UZYTKOWNIKID',
'WHERE r.WYDANIEID = :P3_WYDANIEID;',
''))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"OCENA","expr":"\"OCENA\" asc"},{"key":"OCENA1","expr":"\"OCENA\" desc"},{"key":"DATARECENZJI","expr":"\"DATARECENZJI\" asc"},{"key":"DATARECENZJI1","expr":"\"DATARECENZJI\" desc"}],"itemName":"P3_ORDER_BY"}'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>true
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P3_WYDANIEID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>unistr('To wydanie jeszcze nie ma \017Cadnej recenzji !')
,p_show_total_row_count=>true
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_IMAGE', '{"source":"URL_COLUMN","urlColumn":"ZDJECIE"}',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'image',
  'COMMENT_CLASS', 'comments-text',
  'COMMENT_DATE', 'DATARECENZJI',
  'COMMENT_TEXT', 'KOMENTARZ',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'AUTOR')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(460492289324121009)
,p_name=>'KOMENTARZ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KOMENTARZ'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(460492394872121010)
,p_name=>'DATARECENZJI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATARECENZJI'
,p_data_type=>'DATE'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(460493860663121025)
,p_name=>'ZDJECIE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ZDJECIE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(460493941869121026)
,p_name=>'AUTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTOR'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461390190334517914)
,p_name=>'OCENA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OCENA'
,p_data_type=>'NUMBER'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460496049282121047)
,p_plug_name=>unistr('Powi\0105zane tytu\0142y')
,p_title=>unistr('Powi\0105zane tytu\0142y')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352219068024138633)
,p_plug_display_sequence=>230
,p_query_type=>'TABLE'
,p_query_table=>'KARTYPUBLIKACJI'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CYKL = :P3_CYKL AND',
'CYKL IS NOT NULL AND',
'WYDANIEID != :P3_WYDANIEID'))
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P3_CYKL'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>unistr('To wydanie nie posiada powi\0105zanych tytu\0142\00F3w.')
,p_no_data_found_icon_classes=>'fa-frown-o fa-2x'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(460496127238121048)
,p_region_id=>wwv_flow_imp.id(460496049282121047)
,p_layout_type=>'GRID'
,p_card_css_classes=>'transform w-60 hover:bg-indigo-600 transition duration-500 hover:scale-90 flex justify-center items-center'
,p_title_adv_formatting=>false
,p_title_column_name=>'TYTUL'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'URL'
,p_icon_image_url=>'&OKLADKA.'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(460573112355719701)
,p_card_id=>wwv_flow_imp.id(460496127238121048)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_WYDANIEID:&WYDANIEID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(460491415689121001)
,p_button_sequence=>240
,p_button_name=>'Recenzja'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Napisz recenzj\0119')
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_WYDANIEID:&P3_WYDANIEID.'
,p_button_css_classes=>'button-glow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458433531230002502)
,p_name=>'P3_OKLADKA'
,p_item_sequence=>20
,p_item_default=>'SELECT OKLADKA FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'card-frame'
,p_field_template=>wwv_flow_imp.id(352349527326138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'URL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458433603780002503)
,p_name=>'P3_WYDANIEID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458433844454002505)
,p_name=>'P3_TYTUL'
,p_item_sequence=>50
,p_item_default=>'SELECT TYTUL FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Tytu\0142')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458433969219002506)
,p_name=>'P3_GATUNEK'
,p_item_sequence=>60
,p_item_default=>'SELECT GATUNEK FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Gatunek'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434033313002507)
,p_name=>'P3_CYKL'
,p_item_sequence=>80
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CYKL FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Cykl'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434148757002508)
,p_name=>'P3_TYPWYDANIA'
,p_item_sequence=>90
,p_item_default=>'SELECT TYPWYDANIA FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Typ wydania'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434247224002509)
,p_name=>'P3_ROKWYDANIA'
,p_item_sequence=>100
,p_item_default=>'SELECT ROK FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Rok wydania'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>unistr('Ksi\0105\017Cka')
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434398326002510)
,p_name=>'P3_PODGATUNEK'
,p_item_sequence=>140
,p_item_default=>'SELECT PODGATUNEK FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Podgatunek'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434404406002511)
,p_name=>'P3_AUTOR'
,p_item_sequence=>120
,p_item_default=>'SELECT AUTOR FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Autor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>unistr('Ksi\0105\017Cka')
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434524152002512)
,p_name=>'P3_CZASTRWANIA'
,p_item_sequence=>150
,p_item_default=>'SELECT CZASTRWANIA FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Czas trwania (minuty)'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>'Film'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434615414002513)
,p_name=>'P3_PRODUKCJA'
,p_item_sequence=>160
,p_item_default=>'SELECT PRODUKCJA FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Produkcja'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>'Film'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434787234002514)
,p_name=>'P3_ISBN'
,p_item_sequence=>170
,p_item_default=>'SELECT ISBN FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'ISBN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>unistr('Ksi\0105\017Cka')
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434864134002515)
,p_name=>'P3_WYDAWNICTWO'
,p_item_sequence=>180
,p_item_default=>'SELECT WYDAWNICTWO FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Wydawnictwo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>unistr('Ksi\0105\017Cka')
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458434957286002516)
,p_name=>'P3_LICZBASTRON'
,p_item_sequence=>190
,p_item_default=>'SELECT LICZBASTRON FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Liczba stron'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>unistr('Ksi\0105\017Cka')
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458435062411002517)
,p_name=>'P3_OCENA'
,p_item_sequence=>40
,p_item_default=>'SELECT OCENA FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Ocena'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'gold-glow'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458435155851002518)
,p_name=>'P3_OPIS'
,p_item_sequence=>210
,p_item_default=>'SELECT OPIS FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Opis'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'text-justify'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_css_classes=>'comments-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458435341147002520)
,p_name=>'P3_ROKPRODUKCJI'
,p_item_sequence=>110
,p_item_default=>'SELECT ROK FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Rok produkcji'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>'Film'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458435405378002521)
,p_name=>'P3_REZYSER'
,p_item_sequence=>130
,p_item_default=>'SELECT AUTOR FROM KARTYPUBLIKACJI WHERE WYDANIEID = :P3_WYDANIEID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Re\017Cyser')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P3_TYPWYDANIA'
,p_display_when2=>'Film'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460494868872121035)
,p_name=>'P3_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(460491971635121006)
,p_item_default=>'OCENA'
,p_prompt=>'Sortuj'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Ocena rosn\0105co;OCENA,Ocena malej\0105co;OCENA1,Data recenzji rosn\0105co;DATARECENZJI,Data recenzji malej\0105co;DATARECENZJI1')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460495974322121046)
,p_name=>'P3_LICZBAEGZEMPLARZY'
,p_item_sequence=>200
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) ',
'FROM EGZEMPLARZ ',
'WHERE ',
'    WYDANIEID = :P3_WYDANIEID AND',
unistr('    STATUS = ''Dost\0119pny''')))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Liczba dost\0119pnych egzemplarzy')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'text-justify'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460496390610121050)
,p_name=>'P3_TYTULYPOWIAZANE'
,p_item_sequence=>220
,p_prompt=>unistr('Tytu\0142y powi\0105zane:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(460494650713121033)
,p_name=>unistr('Od\015Bwie\017C recenzje1')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(460491415689121001)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(460494744567121034)
,p_event_id=>wwv_flow_imp.id(460494650713121033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(460491971635121006)
);
wwv_flow_imp.component_end;
end;
/
