prompt --application/shared_components/security/authorizations/librarian_rights
begin
--   Manifest
--     SECURITY SCHEME: Librarian Rights
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(372888784318498432)
,p_name=>'Librarian Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_status VARCHAR2(50);',
'BEGIN',
'    SELECT StatusKonta',
'    INTO v_status',
'    FROM Uzytkownik',
'    WHERE upper(email) = :APP_USER;',
'',
'',
'    IF upper(v_status) = ''BIBLIOTEKARZ'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN FALSE;',
'END;',
''))
,p_version_scn=>551043321
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
