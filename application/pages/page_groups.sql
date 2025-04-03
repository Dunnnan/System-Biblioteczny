prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: DEFAULT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(352468925554138912)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
