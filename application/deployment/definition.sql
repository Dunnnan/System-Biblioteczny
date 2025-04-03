prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: DEFAULT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(363401888112105500)
);
wwv_flow_imp.component_end;
end;
/
