prompt --application/shared_components/user_interface/lovs/sala_nazwa
begin
--   Manifest
--     SALA.NAZWA
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
 p_id=>wwv_flow_imp.id(451216412665487960)
,p_lov_name=>'SALA.NAZWA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SALA'
,p_return_column_name=>'SALAID'
,p_display_column_name=>'NAZWA'
,p_default_sort_column_name=>'NAZWA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>494732346
);
wwv_flow_imp.component_end;
end;
/
