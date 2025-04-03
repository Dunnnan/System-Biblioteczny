prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: DEFAULT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(352174637490138585)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>472853455
);
wwv_flow_imp.component_end;
end;
/
