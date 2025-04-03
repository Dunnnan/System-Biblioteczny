prompt --application/shared_components/security/authentications/database_accounts
begin
--   Manifest
--     AUTHENTICATION: Database Accounts
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(352479410337141978)
,p_name=>'Database Accounts'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'authenticate_user'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>472885271
);
wwv_flow_imp.component_end;
end;
/
