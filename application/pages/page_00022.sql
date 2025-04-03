prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Moje kary'
,p_alias=>'MOJE-KARY'
,p_step_title=>'Moje kary'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.text-glow-red {',
'  color: red;',
'  font-weight: bold;',
'  text-shadow: 0 0 10px rgb(255, 0, 0), 0 0 20px rgb(255, 0, 0), 0 0 30px rgb(255, 0, 0);',
'}',
'',
'.text-glow-white {',
'  color: rgb(255, 255, 255);',
'  font-weight: bold;',
'  text-shadow: 0 0 10px rgb(255, 255, 255), 0 0 20px rgb(255, 255, 255), 0 0 30px rgb(255, 255, 255), 0 0 40px red;',
'}',
'',
'.center {',
'    text-align: center;',
'    display: flex;',
'    justify-content: center;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460718633769067455)
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
 p_id=>wwv_flow_imp.id(460719367659067456)
,p_name=>'Moje kary'
,p_template=>wwv_flow_imp.id(352278549325138678)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT k.KaraID,',
'       k.Kwota,',
'       k.Powod,',
'       k.DataNalozenia,',
'       k.WypozyczenieID,',
'       w.EgzemplarzID',
'FROM Kara k',
'JOIN Wypozyczenie w ON k.WypozyczenieID = w.WypozyczenieID',
'JOIN Uzytkownik u ON w.UzytkownikID = u.UzytkownikID',
'WHERE upper(u.Email) = :APP_USER;',
''))
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
 p_id=>wwv_flow_imp.id(460719702243067486)
,p_query_column_id=>1
,p_column_alias=>'KARAID'
,p_column_display_sequence=>0
,p_column_heading=>'Karaid'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460720198455067488)
,p_query_column_id=>2
,p_column_alias=>'KWOTA'
,p_column_display_sequence=>30
,p_column_heading=>'Kwota'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460720532420067488)
,p_query_column_id=>3
,p_column_alias=>'POWOD'
,p_column_display_sequence=>20
,p_column_heading=>unistr('Pow\00F3d')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460720927360067489)
,p_query_column_id=>4
,p_column_alias=>'DATANALOZENIA'
,p_column_display_sequence=>50
,p_column_heading=>unistr('Data na\0142o\017Cenia')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460721282494067489)
,p_query_column_id=>5
,p_column_alias=>'WYPOZYCZENIEID'
,p_column_display_sequence=>10
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(460576102728719731)
,p_query_column_id=>6
,p_column_alias=>'EGZEMPLARZID'
,p_column_display_sequence=>60
,p_column_heading=>'ID Egzemplarza'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460576250284719732)
,p_name=>'P22_WARNING1'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pami\0119taj \017Ce kiedy przekroczysz pr\00F3g 100z\0142 nieop\0142aconych kar twoje konto zostanie zablokowane!'),
unistr('Do zap\0142acenia:')))
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460576476042719734)
,p_name=>'P22_WARNING3'
,p_item_sequence=>30
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT SUM(KWOTA) || '' z\0142 / 100z\0142'' '),
'FROM KARA k',
'WHERE ',
'(SELECT UZYTKOWNIKID FROM WYPOZYCZENIE WHERE WYPOZYCZENIEID = k.WYPOZYCZENIEID)',
'= ',
'(SELECT UZYTKOWNIKID FROM UZYTKOWNIK WHERE upper(EMAIL) = :APP_USER)'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'center'
,p_field_template=>wwv_flow_imp.id(352349527326138734)
,p_item_css_classes=>'text-glow-red'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
