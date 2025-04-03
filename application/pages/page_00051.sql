prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_name=>'Rezerwacja sali'
,p_alias=>'REZERWACJA-SALI'
,p_page_mode=>'MODAL'
,p_step_title=>'Rezerwacja sali'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(452955156963279490)
,p_plug_name=>'Rezerwacja sali'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(352211954188138628)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'REZERWACJA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(452960321808279497)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(904529676812685092)
,p_plug_name=>unistr('Dost\0119pno\015B\0107')
,p_region_css_classes=>'.schedule-container {     display: flex;     flex-direction: column;     gap: 5px; }  .time-block {     padding: 10px;     border: 1px solid #ccc;     border-radius: 5px;     text-align: center;     font-size: 14px; }  .time-block.zajete {     backgr'
||'ound-'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(352278549325138678)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    html_output CLOB;',
'BEGIN',
'    html_output := ',
'        ''<style>',
'            .schedule-container {',
'                display: flex;',
'                flex-direction: column;',
'                gap: 8px;',
'                margin: 15px;',
'                font-family: Arial, sans-serif;',
'            }',
'            .time-block {',
'                padding: 10px;',
'                border-radius: 8px;',
'                text-align: center;',
'                font-size: 16px;',
unistr('                color: #ffffff; /* Bia\0142y tekst */'),
'                font-weight: bold;',
'                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);',
'            }',
'            .time-block.zajete {',
unistr('                background-color: #d9534f; /* Czerwony dla zaj\0119tych */'),
'            }',
'            .time-block.wolne {',
'                background-color: #5cb85c; /* Zielony dla wolnych */',
'            }',
'            .time-block:hover {',
'                filter: brightness(90%);',
'            }',
'        </style>',
'        <div class="schedule-container">'';',
'',
'    FOR record IN (',
'        WITH zakres AS (',
'            SELECT ',
'                GODZINAOD,',
'                GODZINADO',
'            FROM ',
'                DOSTEPNOSC',
'            WHERE ',
'                SALAID = :P51_SALAID',
'                AND DATA = :P51_DATAREZERWACJI',
'        ),',
'        przedzialy AS (',
'            SELECT ',
'                GODZINAOD + (LEVEL - 1) * 0.50 + ',
'                CASE ',
'                    WHEN MOD(GODZINAOD + (LEVEL - 1) * 0.50, 1) = 0.5 THEN -0.20',
'                    ELSE 0.00',
'                END AS przedzial_start,',
'                ',
'                GODZINAOD + (LEVEL - 1) * 0.50 + ',
'                CASE ',
'                    WHEN MOD(GODZINAOD + (LEVEL - 1) * 0.50, 1) = 0.5 THEN -0.20',
'                    ELSE 0.00',
'                END AS przedzial_end',
'            FROM ',
'                zakres',
'            CONNECT BY ',
'                GODZINAOD + (LEVEL - 1) * 0.50 <= GODZINADO',
'            ORDER BY ',
'                przedzial_start',
'        ),',
'        zajetosc AS (',
'            SELECT ',
'                p.przedzial_start,',
'                p.przedzial_end,',
'                CASE ',
'                    WHEN EXISTS (',
'                        SELECT 1',
'                        FROM REZERWACJA r',
'                        WHERE r.DATAREZERWACJI = :P51_DATAREZERWACJI',
'                          AND r.SALAID = :P51_SALAID',
'                          AND r.GODZINAOD <= p.przedzial_end',
'                          AND r.GODZINADO > p.przedzial_start',
'                    ) THEN ''zajete''',
'                    ELSE ''wolne''',
'                END AS status',
'            FROM ',
'                przedzialy p',
'        )',
'        SELECT ',
'            przedzial_start,',
'            przedzial_end,',
'            status',
'        FROM ',
'            zajetosc',
'        ORDER BY ',
'            przedzial_start',
'    ) LOOP',
unistr('        -- Dodanie bloku HTML dla ka\017Cdego przedzia\0142u'),
'        html_output := html_output || ',
'            ''<div class="time-block '' || record.status || ''">'' ||',
'            ''<span>'' || ',
'            TO_CHAR(record.przedzial_start, ''FM09.00'') || ',
'            ''</span></div>'';',
'    END LOOP;',
'',
'    html_output := html_output || ''</div>'';',
'',
'    RETURN html_output;',
'END;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P51_DATAREZERWACJI,P51_SALAID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(452960703598279497)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(452960321808279497)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(452962940161279500)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(452960321808279497)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(352352178050138736)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zarezerwuj'
,p_button_position=>'NEXT'
,p_button_condition=>'P51_REZERWACJAID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452955454984279490)
,p_name=>'P51_REZERWACJAID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_source_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rezerwacjaid'
,p_source=>'REZERWACJAID'
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
 p_id=>wwv_flow_imp.id(452955807808279491)
,p_name=>'P51_DATAREZERWACJI'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_source_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_prompt=>'Data rezerwacji'
,p_source=>'DATAREZERWACJI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452956280975279492)
,p_name=>'P51_GODZINAOD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_source_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_prompt=>'Od godziny'
,p_source=>'GODZINAOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH zakres AS (',
'    SELECT ',
'        GODZINAOD,',
'        GODZINADO',
'    FROM ',
'        DOSTEPNOSC',
'    WHERE SALAID = :P51_SALAID',
'    AND DATA = :P51_DATAREZERWACJI',
')',
'SELECT ',
'    TO_CHAR(',
'        GODZINAOD + (LEVEL - 1) * 0.50 + ',
'        CASE ',
'            WHEN MOD(GODZINAOD + (LEVEL - 1) * 0.50, 1) = 0.5 THEN -0.20',
'            ELSE 0.00',
'        END, ',
'        ''FM09.00''',
'    ) AS display_value,',
'    ',
'        GODZINAOD + (LEVEL - 1) * 0.50 + ',
'        CASE ',
'            WHEN MOD(GODZINAOD + (LEVEL - 1) * 0.50, 1) = 0.5 THEN -0.20',
'            ELSE 0.00',
'        END AS return_value',
'FROM ',
'    zakres',
'CONNECT BY ',
'    GODZINAOD + (LEVEL - 1) * 0.50 <= GODZINADO',
'ORDER BY ',
'    display_value;',
''))
,p_lov_cascade_parent_items=>'P51_DATAREZERWACJI,P51_SALAID'
,p_ajax_items_to_submit=>'P51_DATAREZERWACJI,P51_SALAID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452956697071279493)
,p_name=>'P51_GODZINADO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_source_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_prompt=>'Do godziny'
,p_source=>'GODZINADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH zakres AS (',
'    SELECT ',
'        GODZINAOD,',
'        GODZINADO',
'    FROM ',
'        DOSTEPNOSC',
'    WHERE SALAID = :P51_SALAID',
'    AND DATA = :P51_DATAREZERWACJI',
')',
'SELECT ',
'    TO_CHAR(',
'        GODZINAOD + (LEVEL - 1) * 0.50 + ',
'        CASE ',
'            WHEN MOD(GODZINAOD + (LEVEL - 1) * 0.50, 1) = 0.5 THEN -0.20',
'            ELSE 0.00',
'        END, ',
'        ''FM09.00''',
'    ) AS display_value,',
'    ',
'        GODZINAOD + (LEVEL - 1) * 0.50 + ',
'        CASE ',
'            WHEN MOD(GODZINAOD + (LEVEL - 1) * 0.50, 1) = 0.5 THEN -0.20',
'            ELSE 0.00',
'        END AS return_value',
'FROM ',
'    zakres',
'CONNECT BY ',
'    GODZINAOD + (LEVEL - 1) * 0.50 <= GODZINADO',
'ORDER BY ',
'    display_value;',
''))
,p_lov_cascade_parent_items=>'P51_DATAREZERWACJI,P51_SALAID'
,p_ajax_items_to_submit=>'P51_DATAREZERWACJI,P51_SALAID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(352350983821138735)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452957091304279493)
,p_name=>'P51_UZYTKOWNIKID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_source_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_default=>'SELECT UZYTKOWNIKID FROM UZYTKOWNIK WHERE UPPER(EMAIL) = UPPER(:APP_USER)'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'UZYTKOWNIKID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452957443995279494)
,p_name=>'P51_SALAID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_source_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_source=>'SALAID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452957842363279494)
,p_name=>'P51_WYPOSAZENIEID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_item_source_plug_id=>wwv_flow_imp.id(452955156963279490)
,p_source=>'WYPOSAZENIEID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(451516066160011549)
,p_validation_name=>'PustaRezerwacja'
,p_validation_sequence=>10
,p_validation=>':P51_GODZINAOD != :P51_GODZINADO'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nie mo\017Cesz dokona\0107 rezerwacji o zerowej d\0142ugo\015Bci czasu !')
,p_associated_item=>wwv_flow_imp.id(452956280975279492)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(451516124351011550)
,p_validation_name=>'RezerwacjaWstecz'
,p_validation_sequence=>20
,p_validation=>'TO_NUMBER(:P51_GODZINAOD) <= TO_NUMBER(:P51_GODZINADO)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pocz\0105tkowa godzina rezerwacji musi by\0107 mniejsza od ko\0144cowej !')
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(452956280975279492)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(461389012433517903)
,p_validation_name=>'Zablokowany'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_status VARCHAR2(50);',
'BEGIN',
'    SELECT STATUSKONTA',
'    INTO v_status',
'    FROM UZYTKOWNIK',
'    WHERE UZYTKOWNIKID = (SELECT UZYTKOWNIKID ',
'                          FROM UZYTKOWNIK ',
'                          WHERE upper(EMAIL) = :APP_USER)',
'    AND ROWNUM = 1;',
'',
'    IF v_status != ''Zablokowany'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Twoje konto jest zablokowane! Zg\0142o\015B si\0119 do biblioteki.')
,p_associated_item=>wwv_flow_imp.id(452957091304279493)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(452960893145279497)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(452960703598279497)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(452961669302279498)
,p_event_id=>wwv_flow_imp.id(452960893145279497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(451515876110011547)
,p_name=>unistr('Od\015Bwie\017C dost\0119pno\015B\0107')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_DATAREZERWACJI'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(451515967862011548)
,p_event_id=>wwv_flow_imp.id(451515876110011547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(904529676812685092)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(452963758559279501)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Process form Rezerwacja sali'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'REZERWACJA_PACKAGE'
,p_attribute_04=>'DODAJ_REZERWACJE_SALI'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452963758559279501
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(453030474457716301)
,p_page_process_id=>wwv_flow_imp.id(452963758559279501)
,p_page_id=>51
,p_name=>'p_datarezerwacji'
,p_direction=>'IN'
,p_data_type=>'DATE'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P51_DATAREZERWACJI'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(453030543736716302)
,p_page_process_id=>wwv_flow_imp.id(452963758559279501)
,p_page_id=>51
,p_name=>'p_godzinaod'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P51_GODZINAOD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(453030615722716303)
,p_page_process_id=>wwv_flow_imp.id(452963758559279501)
,p_page_id=>51
,p_name=>'p_godzinado'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'P51_GODZINADO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(453030761434716304)
,p_page_process_id=>wwv_flow_imp.id(452963758559279501)
,p_page_id=>51
,p_name=>'p_uzytkownikid'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'ITEM'
,p_value=>'P51_UZYTKOWNIKID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(453030830466716305)
,p_page_process_id=>wwv_flow_imp.id(452963758559279501)
,p_page_id=>51
,p_name=>'p_salaid'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'P51_SALAID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(452964108641279501)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>452964108641279501
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(452963300446279500)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(452955156963279490)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Rezerwacja sali'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452963300446279500
);
wwv_flow_imp.component_end;
end;
/
