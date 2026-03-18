###########################################################################
### Routing
###########################################################################

##In the layout window, click on Route -> Core Routing and Optimization

set sh_output_log_file "logs/route.log"
route_opt 

##Save the cel and report timing
verify_zrt_route -open_net true -drc true
save_mw_cel -as DSNN_2Layer_route
write_def -output output/DSNN_2Layer_route.def
report_placement_utilization > reports/DSNN_2Layer_route_util.rpt
report_qor_snapshot > reports/DSNN_2Layer_route_qor_snapshot.rpt
report_qor > reports/DSNN_2Layer_route_qor.rpt
report_timing -max_paths 20 -delay max > reports/DSNN_2Layer_route.setup.rpt
report_timing -max_paths 20 -delay min > reports/DSNN_2Layer_route.hold.rpt

## Run signoff drc from here
set_physical_signoff_options -exec_cmd {icv} -drc_runset {../../../library_32nm/SAED32_EDK/tech/icv_drc/saed32nm_1p9m_drc_rules.rs}
signoff_drc -show_stream_error_environment false -read_cel_view -run_dir {./signoff_drc_run} -max_errors_per_rule 1000
verify_lvs

## Run sign off lvs from here

