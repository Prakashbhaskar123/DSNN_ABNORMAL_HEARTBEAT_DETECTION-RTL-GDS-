###########################################################################
### Clock Tree Synthesis
###########################################################################
set sh_output_log_file "logs/cts.log"

## 	due to error in the  cts  and the  clock creation   we added these
 get_clocks *
     read_sdc ../../dc_synth/DSNN_2Layer/output/DSNN_2Layer.sdc
      read_sdc ../../dc_synth/DSNN_2Layer/const/DSNN_2Layer.sdc
      report_clock
      # Replace 'clk' with the actual port name in your top-level Verilog
      # Replace '4.0' with your desired period in ns
      create_clock -name "clk" -period 4.0 [get_ports clk]
      report_clock
      clock_opt -only_cts
    

save_mw_cel -as fifo_cts
set icc_snapshot_storage_location  "reports" ;# This setting is needed when default snapshot directory is not available 
report_placement_utilization > reports/DSNN_2Layer_cts_util.rpt
report_qor_snapshot > reports/DSNN_2Layer_cts_qor_snapshot.rpt
report_qor > reports/DSNN_2Layer_cts_qor.rpt
report_timing -max_paths 20 -delay max > reports/DSNN_2Layer_cts.setup.rpt
report_timing -max_paths 20 -delay min > reports/DSNN_2Layer_cts.hold.rpt
