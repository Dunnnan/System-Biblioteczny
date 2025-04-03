prompt --application/shared_components/user_interface/lovs/wydanie_typwydania
begin
--   Manifest
--     WYDANIE.TYPWYDANIA
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
 p_id=>wwv_flow_imp.id(454889612919582008)
,p_lov_name=>'WYDANIE.TYPWYDANIA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'WYDANIE'
,p_return_column_name=>'WYDANIEID'
,p_display_column_name=>'TYPWYDANIA'
,p_default_sort_column_name=>'TYPWYDANIA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>497087799
);
wwv_flow_imp.component_end;
end;
/
