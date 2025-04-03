prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>unistr('Wypo\017Cycz')
,p_alias=>unistr('WYPO\017BYCZ')
,p_step_title=>unistr('Wypo\017Cycz')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(372888784318498432)
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460598569329839173)
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
 p_id=>wwv_flow_imp.id(460599293339839197)
,p_plug_name=>unistr('Wypo\017Cycz')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(352278549325138678)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'WYPOZYCZENIE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(460606176223839209)
,p_button_sequence=>20
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Wypo\017Cycz')
,p_button_condition=>'P11_WYPOZYCZENIEID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(460606440858839209)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460599552908839197)
,p_name=>'P11_WYPOZYCZENIEID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_source_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wypozyczenieid'
,p_source=>'WYPOZYCZENIEID'
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
 p_id=>wwv_flow_imp.id(460599916072839198)
,p_name=>'P11_DATAWYPOZYCZENIA'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_source_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_source=>'DATAWYPOZYCZENIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460600384431839198)
,p_name=>'P11_DATAZWROTU'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_source_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_source=>'DATAZWROTU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460600772974839199)
,p_name=>'P11_MAKSYMALNADATAZWROTU'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_source_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_source=>'MAKSYMALNADATAZWROTU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460601175270839199)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_source_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_default=>unistr('Wypo\017Cyczony')
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460601543574839200)
,p_name=>'P11_EGZEMPLARZID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_source_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_prompt=>'ID Egzemplarza'
,p_source=>'EGZEMPLARZID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460602290894839203)
,p_name=>'P11_UZYTKOWNIKID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_item_source_plug_id=>wwv_flow_imp.id(460599293339839197)
,p_prompt=>'ID Czytelnika'
,p_source=>'UZYTKOWNIKID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(460573292158719702)
,p_validation_name=>unistr('Czy prawid\0142owe Egzemplarz ID')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM EGZEMPLARZ',
'    WHERE EGZEMPLARZID = :P11_EGZEMPLARZID;',
'',
'    IF v_count > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Egzemplarz o tym ID nie istnieje!'
,p_associated_item=>wwv_flow_imp.id(460601543574839200)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(460573384300719703)
,p_validation_name=>unistr('Czy prawid\0142owe Uzytkownik ID')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM UZYTKOWNIK',
'    WHERE UZYTKOWNIKID = :P11_UZYTKOWNIKID;',
'',
'    IF v_count > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('U\017Cytkownik o podanym ID nie istnieje!')
,p_associated_item=>wwv_flow_imp.id(460602290894839203)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(461389299346517905)
,p_validation_name=>'Zablokowany'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM UZYTKOWNIK',
'    WHERE UZYTKOWNIKID = :P11_UZYTKOWNIKID AND STATUSKONTA = ''Zablokowany'';',
'',
'    IF v_count > 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Konto tego u\017Cytkownika jest zablokowane!')
,p_associated_item=>wwv_flow_imp.id(460602290894839203)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(460607390673839210)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>unistr('Process form Wypo\017Cycz')
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'WYPOZYCZENIE_PACKAGE'
,p_attribute_04=>'WYPOZYCZ'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>460607390673839210
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(460573438261719704)
,p_page_process_id=>wwv_flow_imp.id(460607390673839210)
,p_page_id=>11
,p_name=>'p_uzytkownikid'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P11_UZYTKOWNIKID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(460573538190719705)
,p_page_process_id=>wwv_flow_imp.id(460607390673839210)
,p_page_id=>11
,p_name=>'p_egzemplarzid'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P11_EGZEMPLARZID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(460606979129839209)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(460599293339839197)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Wypo\017Cycz')
,p_internal_uid=>460606979129839209
);
wwv_flow_imp.component_end;
end;
/
