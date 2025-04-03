prompt --application/shared_components/user_interface/lovs/egzemplarz_film_status
begin
--   Manifest
--     EGZEMPLARZ_FILM.STATUS
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
 p_id=>wwv_flow_imp.id(431503724895976891)
,p_lov_name=>'EGZEMPLARZ_FILM.STATUS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EGZEMPLARZ_FILM'
,p_return_column_name=>'EGZEMPLARZID'
,p_display_column_name=>'STATUS'
,p_default_sort_column_name=>'STATUS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>486788680
);
wwv_flow_imp.component_end;
end;
/
