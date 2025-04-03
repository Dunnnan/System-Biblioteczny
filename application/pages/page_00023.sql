prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'Moje rezerwacje'
,p_alias=>'MOJE-REZERWACJE'
,p_step_title=>'Moje rezerwacje'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(453039488779754833)
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
 p_id=>wwv_flow_imp.id(453040143929754838)
,p_name=>'Moje rezerwacje'
,p_template=>wwv_flow_imp.id(352278549325138678)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REZERWACJAID,',
'       DATAREZERWACJI,',
'       REPLACE(TO_CHAR(GODZINAOD, ''999.99''), '','', '':''),',
'       REPLACE(TO_CHAR(GODZINADO, ''999.99''), '','', '':''),',
'       UZYTKOWNIKID,',
'       SALAID,',
'       WYPOSAZENIEID,',
'       CASE ',
'        WHEN SALAID IS NOT NULL THEN ',
'            (SELECT NAZWA FROM SALA WHERE SALAID = R.SALAID)',
'        WHEN WYPOSAZENIEID IS NOT NULL THEN ',
'            (SELECT NAZWA FROM WYPOSAZENIE WHERE WYPOSAZENIEID = R.WYPOSAZENIEID)',
'        END AS Nazwa',
'  from REZERWACJA R',
' where UZYTKOWNIKID = (SELECT UZYTKOWNIKID FROM UZYTKOWNIK WHERE UPPER(EMAIL) = UPPER(:APP_USER))'))
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
 p_id=>wwv_flow_imp.id(453040538614754870)
,p_query_column_id=>1
,p_column_alias=>'REZERWACJAID'
,p_column_display_sequence=>0
,p_column_heading=>'Rezerwacjaid'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(453040996727754872)
,p_query_column_id=>2
,p_column_alias=>'DATAREZERWACJI'
,p_column_display_sequence=>20
,p_column_heading=>'Data rezerwacji'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(461389336938517906)
,p_query_column_id=>3
,p_column_alias=>'REPLACE(TO_CHAR(GODZINAOD,''999.99''),'','','':'')'
,p_column_display_sequence=>30
,p_column_heading=>'Od godziny'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(461389441663517907)
,p_query_column_id=>4
,p_column_alias=>'REPLACE(TO_CHAR(GODZINADO,''999.99''),'','','':'')'
,p_column_display_sequence=>40
,p_column_heading=>'Do godziny'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(453042150862754876)
,p_query_column_id=>5
,p_column_alias=>'UZYTKOWNIKID'
,p_column_display_sequence=>10
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(453042503525754876)
,p_query_column_id=>6
,p_column_alias=>'SALAID'
,p_column_display_sequence=>50
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(453042926061754876)
,p_query_column_id=>7
,p_column_alias=>'WYPOSAZENIEID'
,p_column_display_sequence=>60
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460576089213719730)
,p_query_column_id=>8
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>80
,p_column_heading=>'Nazwa'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(461389566376517908)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>90
,p_column_heading=>unistr('Odwo\0142aj')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::P53_REZERWACJAID:#REZERWACJAID#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-times-rectangle fam-minus fam-is-danger"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(461389642596517909)
,p_name=>unistr('Od\015Bwie\017C')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(453040143929754838)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461389735398517910)
,p_event_id=>wwv_flow_imp.id(461389642596517909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(453040143929754838)
);
wwv_flow_imp.component_end;
end;
/
