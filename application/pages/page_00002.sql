prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Publikacje'
,p_alias=>'PUBLIKACJE'
,p_step_title=>'Publikacje'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.gold-glow {',
'    color: gold;',
'    font-weight: bold;',
'    text-shadow: 0 0 5px rgba(255, 215, 0, 0.7), ',
'                 0 0 10px rgba(255, 215, 0, 0.5);',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(457158344195960140)
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
 p_id=>wwv_flow_imp.id(457159044000960146)
,p_plug_name=>'Publikacje'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352219068024138633)
,p_plug_display_sequence=>70
,p_query_type=>'TABLE'
,p_query_table=>'KARTYPUBLIKACJI'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPPER(TYTUL) LIKE ''%'' || UPPER(:P2_SZUKAJ) || ''%''',
'AND',
'(TYPWYDANIA LIKE :P2_TYPWYDANIA OR :P2_TYPWYDANIA IS NULL)',
'AND',
'(GATUNEK IN :P2_GATUNEK OR :P2_GATUNEK IS NULL)'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"TYTUL","expr":"\"TYTUL\" asc"},{"key":"TYTUL1","expr":"\"TYTUL\" desc"},{"key":"ROK","expr":"\"ROK\" asc"},{"key":"ROK1","expr":"\"ROK\"desc"},{"key":"OCENA","expr":"\"OCENA\" asc"},{"key":"OCENA1","expr":"\"OCENA\" desc"}],"item'
||'Name":"P2_ORDER_BY"}'
,p_include_rowid_column=>false
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(457159511132960149)
,p_region_id=>wwv_flow_imp.id(457159044000960146)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'transform w-60 hover:bg-indigo-600 transition duration-500 hover:scale-90 flex justify-center items-center'
,p_title_adv_formatting=>false
,p_title_column_name=>'TYTUL'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'OCENA'
,p_body_css_classes=>'gold-glow'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'ROK'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'GATUNEK'
,p_icon_position=>'START'
,p_badge_column_name=>'TYPWYDANIA'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'OKLADKA'
,p_media_display_position=>'FIRST'
,p_media_sizing=>'FIT'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(454719112826268540)
,p_card_id=>wwv_flow_imp.id(457159511132960149)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_WYDANIEID:&WYDANIEID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(457160055466960151)
,p_name=>'P2_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>50
,p_item_default=>'TYTUL'
,p_prompt=>'Sortuj'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Tytu\0142 rosn\0105co;TYTUL,Tytu\0142 malej\0105co;TYTUL1,Rok rosn\0105co;ROK,Rok malej\0105co;ROK1,Ocena rosn\0105co;OCENA,Ocena malej\0105co;OCENA1')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460494966558121036)
,p_name=>'P2_SZUKAJ'
,p_item_sequence=>20
,p_prompt=>'Szukaj'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460495253303121039)
,p_name=>'P2_TYPWYDANIA'
,p_item_sequence=>30
,p_prompt=>'Typ wydania'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Film;Film,Ksi\0105\017Cka;Ksi\0105\017Cka')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460495819821121045)
,p_name=>'P2_GATUNEK'
,p_item_sequence=>40
,p_prompt=>'Gatunek'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT GATUNEK AS display_value, GATUNEK AS return_value',
'FROM PUBLIKACJA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(460495047137121037)
,p_name=>unistr('Od\015Bwie\017C - tytu\0142')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SZUKAJ'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(460495115421121038)
,p_event_id=>wwv_flow_imp.id(460495047137121037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(457159044000960146)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(460495331689121040)
,p_name=>unistr('Od\015Bwie\017C - typ wydania')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_TYPWYDANIA'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(460495451046121041)
,p_event_id=>wwv_flow_imp.id(460495331689121040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(457159044000960146)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(460495636311121043)
,p_name=>unistr('Od\015Bwie\017C - gatunek')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_GATUNEK'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(460495791125121044)
,p_event_id=>wwv_flow_imp.id(460495636311121043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(457159044000960146)
);
wwv_flow_imp.component_end;
end;
/
