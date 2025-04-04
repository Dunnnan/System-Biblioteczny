prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>unistr('Dodaj wyposa\017Cenie')
,p_alias=>unistr('DODAJ-WYPOSA\017BENIE')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Dodaj wyposa\017Cenie')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(451184090464282547)
,p_plug_name=>unistr('Dodaj wyposa\017Cenie')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352211954188138628)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'WYPOSAZENIE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(451187905615282552)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352214717080138630)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(451188384490282553)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(451187905615282552)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(451190509773282555)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(451187905615282552)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'NEXT'
,p_button_condition=>'P45_WYPOSAZENIEID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451184449596282548)
,p_name=>'P45_WYPOSAZENIEID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_item_source_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wyposazenieid'
,p_source=>'WYPOSAZENIEID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451184830959282549)
,p_name=>'P45_NAZWA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_item_source_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nazwa'
,p_source=>'NAZWA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451185295156282549)
,p_name=>'P45_OPIS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_item_source_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Opis'
,p_source=>'OPIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1024
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451185665804282550)
,p_name=>'P45_TYP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_item_source_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Typ'
,p_source=>'TYP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451186029708282550)
,p_name=>'P45_ZDJECIE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_item_source_plug_id=>wwv_flow_imp.id(451184090464282547)
,p_prompt=>unistr('Zdj\0119cie (wklej adres obrazu)')
,p_source=>'ZDJECIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(451188412227282553)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(451188384490282553)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(451189261821282553)
,p_event_id=>wwv_flow_imp.id(451188412227282553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(451191399576282555)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(451184090464282547)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Dodaj wyposa\017Cenie')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>451191399576282555
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(461388942688517902)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Generuj dost\0119pno\015B\0107')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    GENERUJ_DOSTEPNOSC();',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>461388942688517902
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(451191716256282556)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>451191716256282556
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(451190955493282555)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(451184090464282547)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Dodaj wyposa\017Cenie')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>451190955493282555
);
wwv_flow_imp.component_end;
end;
/
