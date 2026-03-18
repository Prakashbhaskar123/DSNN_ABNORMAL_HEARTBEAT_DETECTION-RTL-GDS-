###########################################################################
### Placement
###########################################################################


set sh_output_log_file "logs/place.log"
set_buffer_opt_strategy -effort low

set_tlu_plus_files -max_tluplus $LIBRARY_HOME/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus -min_tluplus $LIBRARY_HOME/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus  -tech2itf_map $LIBRARY_HOME/tech/star_rcxt/saed32nm_tf_itf_tluplus.map


place_opt -congestion

save_mw_cel -as DSNN_2Layer_place


### Reports 

write_def -output output/DSNN_2Layer_place.def
report_placement_utilization > output/DSNN_2Layer_place_util.rpt
report_qor_snapshot > output/DSNN_2Layer_place_qor_snapshot.rpt
report_qor > output/DSNN_2Layer_place_qor.rpt

### Timing Report
