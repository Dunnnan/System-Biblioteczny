prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Modyfikuj rezerwacje'
,p_alias=>'MODYFIKUJ-REZERWACJE'
,p_step_title=>'Modyfikuj rezerwacje'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(372888784318498432)
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(461435833460681921)
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
 p_id=>wwv_flow_imp.id(461436569862681923)
,p_plug_name=>'Modyfikuj rezerwacje'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352268768448138670)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'WHERE TRUNC(DATAREZERWACJI) = TRUNC(SYSDATE)'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461390924378517922)
,p_name=>'REZERWACJAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REZERWACJAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391059973517923)
,p_name=>'DATAREZERWACJI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATAREZERWACJI'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Data rezerwacji'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391130912517924)
,p_name=>'REPLACE(TO_CHAR(GODZINAOD,''999.99''),'','','':'')'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPLACE(TO_CHAR(GODZINAOD,''999.99''),'','','':'')'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Od godziny'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391217297517925)
,p_name=>'REPLACE(TO_CHAR(GODZINADO,''999.99''),'','','':'')'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPLACE(TO_CHAR(GODZINADO,''999.99''),'','','':'')'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Do godziny'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391395345517926)
,p_name=>'UZYTKOWNIKID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UZYTKOWNIKID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('ID u\017Cytkownika')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391441827517927)
,p_name=>'SALAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALAID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sala ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391521500517928)
,p_name=>'WYPOSAZENIEID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WYPOSAZENIEID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('Wyposa\017Cenie ID')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391690777517929)
,p_name=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwa'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461391725070517930)
,p_name=>unistr('Odwo\0142aj')
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Odwo\0142aj')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::P53_REZERWACJAID:&REZERWACJAID.'
,p_link_text=>'<span aria-hidden="true" class="fa fa-times-rectangle fam-minus fam-is-danger"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(461390853910517921)
,p_internal_uid=>461390853910517921
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(461447257010712338)
,p_interactive_grid_id=>wwv_flow_imp.id(461390853910517921)
,p_static_id=>'4614473'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(461447407408712338)
,p_report_id=>wwv_flow_imp.id(461447257010712338)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461447938634712341)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(461390924378517922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461448883731712346)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(461391059973517923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461449745946712350)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(461391130912517924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461450695804712355)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(461391217297517925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461451517134712360)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(461391395345517926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461452471251712364)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(461391441827517927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461453368628712370)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(461391521500517928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461454260364712374)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(461391690777517929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461463413888727360)
,p_view_id=>wwv_flow_imp.id(461447407408712338)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(461391725070517930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp.component_end;
end;
/
