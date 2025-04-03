prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>unistr('Moje wypo\017Cyczenia')
,p_alias=>unistr('MOJE-WYPO\017BYCZENIA')
,p_step_title=>unistr('Moje wypo\017Cyczenia')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460705491679869082)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(460706179991869084)
,p_name=>unistr('Moje wypo\017Cyczenia')
,p_template=>wwv_flow_imp.id(352278549325138678)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'WYPOZYCZENIE'
,p_query_where=>'UZYTKOWNIKID = (SELECT UZYTKOWNIKID FROM UZYTKOWNIK WHERE upper(EMAIL) = :APP_USER)'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(352316942143138707)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460706440411869123)
,p_query_column_id=>1
,p_column_alias=>'WYPOZYCZENIEID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460706853973869133)
,p_query_column_id=>2
,p_column_alias=>'DATAWYPOZYCZENIA'
,p_column_display_sequence=>30
,p_column_heading=>unistr('Data wypo\017Cyczenia')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460707211534869134)
,p_query_column_id=>3
,p_column_alias=>'DATAZWROTU'
,p_column_display_sequence=>40
,p_column_heading=>'Data zwrotu'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460707694613869134)
,p_query_column_id=>4
,p_column_alias=>'MAKSYMALNADATAZWROTU'
,p_column_display_sequence=>50
,p_column_heading=>'Maksymalna data zwrotu'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460708006008869134)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>60
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460708462042869135)
,p_query_column_id=>6
,p_column_alias=>'EGZEMPLARZID'
,p_column_display_sequence=>70
,p_column_heading=>'ID Egzemplarza'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460708843438869135)
,p_query_column_id=>7
,p_column_alias=>'UZYTKOWNIKID'
,p_column_display_sequence=>10
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp.component_end;
end;
/
