prompt --application/shared_components/user_interface/lovs/sugestia_tytulpropozycji
begin
--   Manifest
--     SUGESTIA.TYTULPROPOZYCJI
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
 p_id=>wwv_flow_imp.id(450982121208351683)
,p_lov_name=>'SUGESTIA.TYTULPROPOZYCJI'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SUGESTIA'
,p_return_column_name=>'SUGESTIAID'
,p_display_column_name=>'TYTULPROPOZYCJI'
,p_default_sort_column_name=>'TYTULPROPOZYCJI'
,p_default_sort_direction=>'ASC'
,p_version_scn=>494399755
);
wwv_flow_imp.component_end;
end;
/
