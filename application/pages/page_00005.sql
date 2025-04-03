prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>unistr('Znajd\017A egzemplarz')
,p_alias=>unistr('ZNAJD\0179-EGZEMPLARZ')
,p_step_title=>unistr('Znajd\017A egzemplarz')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(352182600797138595)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460663058049218410)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(460574892359719718)
,p_button_sequence=>20
,p_button_name=>'FIND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Znajd\017A')
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(460575507330719725)
,p_branch_name=>'Redirect'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_WYDANIEID:&P5_WYDANIEID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(460574892359719718)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460574478755719714)
,p_name=>'P5_EGZEMPLARZID'
,p_item_sequence=>10
,p_prompt=>'ID Egzemplarza'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(352349667455138734)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460574553671719715)
,p_name=>'P5_WYDANIEID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(460574988477719719)
,p_validation_name=>'Czy egzemplarz istnieje'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM EGZEMPLARZ',
'    WHERE EGZEMPLARZID = :P5_EGZEMPLARZID;',
'',
'    IF v_count > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Egzemplarz o takim ID nie istnieje!'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(460574892359719718)
,p_associated_item=>wwv_flow_imp.id(460574478755719714)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(460574694069719716)
,p_name=>unistr('Znajd\017A ID wydania')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_EGZEMPLARZID'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(460574717047719717)
,p_event_id=>wwv_flow_imp.id(460574694069719716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_WYDANIEID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WYDANIEID ',
'FROM EGZEMPLARZ ',
'WHERE EGZEMPLARZID = :P5_EGZEMPLARZID'))
,p_attribute_07=>'P5_EGZEMPLARZID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
