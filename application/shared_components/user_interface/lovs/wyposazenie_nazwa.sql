prompt --application/shared_components/user_interface/lovs/wyposazenie_nazwa
begin
--   Manifest
--     WYPOSAZENIE.NAZWA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>DEFAULT
,p_default_application_id=>DEFAULT
,p_default_id_offset=>DEFAULT
,p_default_owner=>'DEFAULT'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(451217197363487962)
,p_lov_name=>'WYPOSAZENIE.NAZWA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'WYPOSAZENIE'
,p_return_column_name=>'WYPOSAZENIEID'
,p_display_column_name=>'NAZWA'
,p_default_sort_column_name=>'NAZWA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>494732346
);
wwv_flow_imp.component_end;
end;
/
