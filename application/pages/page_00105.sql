prompt --application/pages/page_00105
begin
--   Manifest
--     PAGE: 00105
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
 p_id=>105
,p_name=>'Edytuj wydanie'
,p_alias=>'EDYTUJ-WYDANIE'
,p_page_mode=>'MODAL'
,p_step_title=>'Edytuj wydanie'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(454700973846265147)
,p_plug_name=>'Edytuj wydanie'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352211954188138628)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'WYDANIE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(454710405467265159)
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
 p_id=>wwv_flow_imp.id(454710805732265160)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(454710405467265159)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454712272026265162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(454710405467265159)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P105_WYDANIEID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454713057532265163)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(454710405467265159)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edytuj'
,p_button_position=>'NEXT'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454701314314265147)
,p_name=>'P105_WYDANIEID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wydanieid'
,p_source=>'WYDANIEID'
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
 p_id=>wwv_flow_imp.id(454701758682265148)
,p_name=>'P105_TYPWYDANIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Typ wydania'
,p_source=>'TYPWYDANIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>unistr('STATIC:Ksi\0105\017Cka;Ksi\0105\017Cka,Film;Film')
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454702185024265149)
,p_name=>'P105_OKLADKA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>unistr('Ok\0142adka (wklej adres obrazu)')
,p_source=>'OKLADKA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454702520404265150)
,p_name=>'P105_ROK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Rok wydania | produkcji'
,p_source=>'ROK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454702914129265150)
,p_name=>'P105_AUTOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>unistr('Autor | Re\017Cyser')
,p_source=>'AUTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454703355860265151)
,p_name=>'P105_PODGATUNEK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Podgatunek'
,p_source=>'PODGATUNEK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454703764530265151)
,p_name=>'P105_CZASTRWANIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Czas trwania'
,p_source=>'CZASTRWANIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454704135676265152)
,p_name=>'P105_PRODUKCJA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Produkcja (kraj)'
,p_source=>'PRODUKCJA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454704534056265152)
,p_name=>'P105_ISBN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'ISBN'
,p_source=>'ISBN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>13
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454704940749265152)
,p_name=>'P105_WYDAWNICTWO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Wydawnictwo'
,p_source=>'WYDAWNICTWO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454705320484265153)
,p_name=>'P105_LICZBASTRON'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Liczba stron'
,p_source=>'LICZBASTRON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454705700329265153)
,p_name=>'P105_PUBLIKACJAID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_source=>'PUBLIKACJAID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(454706185416265154)
,p_name=>'P105_OPIS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_item_source_plug_id=>wwv_flow_imp.id(454700973846265147)
,p_prompt=>'Opis'
,p_source=>'OPIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2048
,p_cHeight=>8
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(454736388851348593)
,p_validation_name=>unistr('Ksia\017Cka/Film')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(',
unistr('    :P105_TypWydania = ''Ksi\0105\017Cka'' AND '),
'    :P105_ISBN IS NOT NULL AND ',
'    :P105_Wydawnictwo IS NOT NULL AND ',
'    :P105_LiczbaStron IS NOT NULL',
') ',
'OR',
'(',
'    :P105_TypWydania = ''Film'' AND ',
'    :P105_CzasTrwania IS NOT NULL AND ',
'    :P105_Produkcja IS NOT NULL',
')'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nie wype\0142ni\0142e\015B p\00F3l szczeg\00F3\0142owych dla typu wydania!')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(454710987822265160)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(454710805732265160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454711764849265161)
,p_event_id=>wwv_flow_imp.id(454710987822265160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(454715272786268501)
,p_name=>'Typ wydania'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P105_TYPWYDANIA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454715357575268502)
,p_event_id=>wwv_flow_imp.id(454715272786268501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P105_CZASTRWANIA,P105_PRODUKCJA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P105_TYPWYDANIA'
,p_client_condition_expression=>'Film'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454715483796268503)
,p_event_id=>wwv_flow_imp.id(454715272786268501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P105_CZASTRWANIA,P105_PRODUKCJA'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P105_TYPWYDANIA'
,p_client_condition_expression=>'Film'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454715550396268504)
,p_event_id=>wwv_flow_imp.id(454715272786268501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P105_ISBN,P105_WYDAWNICTWO,P105_LICZBASTRON'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P105_TYPWYDANIA'
,p_client_condition_expression=>unistr('Ksi\0105\017Cka')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454715601926268505)
,p_event_id=>wwv_flow_imp.id(454715272786268501)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P105_ISBN,P105_WYDAWNICTWO,P105_LICZBASTRON'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P105_TYPWYDANIA'
,p_client_condition_expression=>unistr('Ksi\0105\017Cka')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(454713807769265163)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(454700973846265147)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Edytuj wydanie'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>454713807769265163
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(454714235392265164)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>454714235392265164
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(454713476280265163)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(454700973846265147)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edytuj wydanie'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>454713476280265163
);
wwv_flow_imp.component_end;
end;
/
