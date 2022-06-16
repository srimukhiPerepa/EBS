prompt --application/set_environment/4274114028061119040
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>1250430451235357
,p_default_application_id=>100
,p_default_owner=>'NICE'
);
end;
/
 
prompt APPLICATION 100 - Bug Tracking
--
-- Application Export:
--   Application:     100
--   Name:            Bug Tracking
--   Date and Time:   15:28 Tuesday June 4, 2019
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     LOV: BUGS
--   Manifest End
--   Version:         19.1.0.00.15
--   Instance ID:     248362027330078
--

-- C O M P O N E N T    E X P O R T
begin
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/user_interface/lovs/bugs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4274114028061119040)
,p_lov_name=>'BUGS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select bug_number||''. ''||subject d , id ',
'from EBA_BT_SW_DEFECTS'))
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
