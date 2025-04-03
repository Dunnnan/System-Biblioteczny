prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'System Biblioteczny'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.text-center {',
'  color: white;',
'  text-align: center;',
'',
'}',
'.text-glow {',
'  color: white;',
'  text-align: center;',
'  text-shadow: 0 0 10px white, 0 0 20px white, 0 0 30px white, 0 0 40px white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(352476500345138924)
,p_plug_name=>'System Biblioteczny'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(352245239672138653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460576501587719735)
,p_plug_name=>'Komunikaty'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352219068024138633)
,p_plug_display_sequence=>70
,p_query_type=>'TABLE'
,p_query_table=>'KOMUNIKAT'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(460576676137719736)
,p_region_id=>wwv_flow_imp.id(460576501587719735)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'TYTUL'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'TRESC'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'ZDJECIE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(459639113651370404)
,p_name=>'P1_WITAJ'
,p_item_sequence=>10
,p_item_default=>'Witaj'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460575691731719726)
,p_name=>'P1_WYPOZYCZONE'
,p_item_sequence=>40
,p_item_default=>unistr('Liczba aktywnych wypo\017Cycze\0144:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460575768109719727)
,p_name=>'P1_WITAJ_1'
,p_item_sequence=>20
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMIE || '' '' || NAZWISKO ',
'FROM UZYTKOWNIK ',
'WHERE upper(EMAIL) = :APP_USER'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_css_classes=>'text-glow'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460575806680719728)
,p_name=>'P1_WYPOZYCZONE_1'
,p_item_sequence=>50
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)',
'FROM WYPOZYCZENIE',
unistr('WHERE UZYTKOWNIKID = (SELECT UZYTKOWNIKID FROM UZYTKOWNIK WHERE upper(EMAIL) = :APP_USER) AND STATUS = ''Wypo\017Cyczony''')))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352349482500138734)
,p_item_css_classes=>'text-glow'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460576797848719737)
,p_name=>'KOMUNIKATY'
,p_item_sequence=>60
,p_item_default=>'Komunikaty'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'text-glow'
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_css_classes=>'text-center'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp.component_end;
end;
/
