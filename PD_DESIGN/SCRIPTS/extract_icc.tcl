###########################################################################
### Extraction
###########################################################################


set sh_output_log_file "logs/extract.log"
extract_rc  -coupling_cap  -routed_nets_only  -incremental

##write parasitic to a file for delay calculations tools (e.g PrimeTime).
write_parasitics -output ./output/DSNN_2Layer_extracted.spef -format SPEF




##Write Standard Delay Format (SDF) back-annotation file
write_sdf ./output/DSNN_2Layer_extracted.sdf

##Write out a script in Synopsys Design Constraints format
write_sdc ./const/DSNN_2Layer_extracted.sdc

##Write out a hierarchical Verilog file for the current design, extracted from layout
#ungroup -all -flatten
write_verilog ./output/DSNN_2Layer_extracted.v

##Save the cel and report timing
report_timing -max_paths 20 -delay max > reports/DSNN_2Layer_extracted.setup.rpt
report_timing -max_paths 20 -delay min > reports/DSNN_2Layer_extracted.hold.rpt

report_power > reports/DSNN_2Layer_power.rpt

save_mw_cel -as DSNN_2Layer_extracted

