prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'Sale'
,p_alias=>'SALE'
,p_step_title=>'Sale'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(451208251633465918)
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
 p_id=>wwv_flow_imp.id(451208965446465920)
,p_plug_name=>'Sale'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352219068024138633)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'SALA'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPPER(NAZWA) LIKE ''%'' || UPPER(:P47_SZUKAJ) || ''%''',
''))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"NAZWA","expr":"\"NAZWA\" asc"},{"key":"NAZWA1","expr":"\"NAZWA\" desc"}],"itemName":"P47_ORDER_BY"}'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(451209424395465923)
,p_region_id=>wwv_flow_imp.id(451208965446465920)
,p_layout_type=>'GRID'
,p_card_css_classes=>'transform w-60 hover:bg-indigo-600 transition duration-500 hover:scale-90 flex justify-center items-center'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAZWA'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'OPIS'
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'MAKSYMALNAPOJEMNOSC'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'ZDJECIE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(451178985338278204)
,p_card_id=>wwv_flow_imp.id(451209424395465923)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::P51_SALAID:&SALAID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451209967562465931)
,p_name=>'P47_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_default=>'NAZWA'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Nazwa rosn\0105co;NAZWA,Nazwa malej\0105co;NAZWA1')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp.component_end;
end;
/
