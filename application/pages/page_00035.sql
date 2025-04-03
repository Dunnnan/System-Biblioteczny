prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>unistr('Zam\00F3wienia')
,p_alias=>unistr('ZAM\00D3WIENIA')
,p_step_title=>unistr('Zam\00F3wienia')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(372888784318498432)
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(451054603351959912)
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
 p_id=>wwv_flow_imp.id(451055337673959914)
,p_name=>unistr('Zam\00F3wienia')
,p_template=>wwv_flow_imp.id(352278549325138678)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    z.ZamowienieID,',
'    s.TytulPropozycji,',
'    s.AutorPropozycji,',
'    s.GatunekPropozycji,',
'    s.RokWydania,',
'    s.TypPublikacji,',
'    z.DataDodania,',
'    s.DataSugestii',
'FROM ',
'    Zamowienie z',
'JOIN ',
'    Sugestia s',
'ON ',
'    z.SugestiaID = s.SugestiaID',
'WHERE z.Status = ''Niezakupione'''))
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
 p_id=>wwv_flow_imp.id(451055774636959917)
,p_query_column_id=>1
,p_column_alias=>'ZAMOWIENIEID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(451056127638959917)
,p_query_column_id=>2
,p_column_alias=>'TYTULPROPOZYCJI'
,p_column_display_sequence=>2
,p_column_heading=>unistr('Tytu\0142')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(451056523852959918)
,p_query_column_id=>3
,p_column_alias=>'AUTORPROPOZYCJI'
,p_column_display_sequence=>3
,p_column_heading=>unistr('Autor | Re\017Cyser')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(451056979714959918)
,p_query_column_id=>4
,p_column_alias=>'GATUNEKPROPOZYCJI'
,p_column_display_sequence=>4
,p_column_heading=>'Gatunek'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(451057316952959918)
,p_query_column_id=>5
,p_column_alias=>'ROKWYDANIA'
,p_column_display_sequence=>5
,p_column_heading=>'Rok wydania'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(451057777868959919)
,p_query_column_id=>6
,p_column_alias=>'TYPPUBLIKACJI'
,p_column_display_sequence=>6
,p_column_heading=>'Typ'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450928387828866020)
,p_query_column_id=>7
,p_column_alias=>'DATADODANIA'
,p_column_display_sequence=>18
,p_column_heading=>'Data dodania'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(451058592236959920)
,p_query_column_id=>8
,p_column_alias=>'DATASUGESTII'
,p_column_display_sequence=>8
,p_column_heading=>'Data sugestii'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450928413158866021)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>28
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_ZAMOWIENIEID:#ZAMOWIENIEID#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-check fam-minus fam-is-success"></span> '
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450928709779866024)
,p_name=>unistr('Od\015Bwie\017C')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(451055337673959914)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450928851002866025)
,p_event_id=>wwv_flow_imp.id(450928709779866024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(451055337673959914)
);
wwv_flow_imp.component_end;
end;
/
