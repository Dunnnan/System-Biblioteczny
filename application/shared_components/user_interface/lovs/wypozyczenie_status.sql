prompt --application/shared_components/user_interface/lovs/wypozyczenie_status
begin
--   Manifest
--     WYPOZYCZENIE.STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>89367728885389629
,p_default_application_id=>281
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155988'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(431599102762171348)
,p_lov_name=>'WYPOZYCZENIE.STATUS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'WYPOZYCZENIE'
,p_return_column_name=>'WYPOZYCZENIEID'
,p_display_column_name=>'STATUS'
,p_default_sort_column_name=>'STATUS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>486924516
);
wwv_flow_imp.component_end;
end;
/
