##############################################################
### Inital design setup
###########################################################################

set sh_output_log_file "logs/init_design.log"
set LIBRARY_HOME "../../../library_32nm/SAED32_EDK" ;# Parent home for synopsys libraries 
set LOGICAL_LIBRARY_PATH  "$LIBRARY_HOME/lib/stdcell_rvt/db_nldm " ;#  Additional search path to be added to the default search path

set TARGET_LIBRARY_FILES      "saed32rvt_ss0p95v125c.db"  ;#  Target technology logical libraries
## update library files
set_app_var search_path "${LOGICAL_LIBRARY_PATH} $search_path"
set_app_var target_library ${TARGET_LIBRARY_FILES}
set_app_var link_library "* $target_library"

set MW_REFERENCE_LIB_DIRS " ${LIBRARY_HOME}/lib/stdcell_rvt/milkyway/saed32nm_rvt_1p9m " ;# milkyway reference libraries

set mw_logic0_net VSS
set mw_logic1_net VDD

set_tlu_plus_files -max_tluplus ${LIBRARY_HOME}/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus -min_tluplus ${LIBRARY_HOME}/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus  -tech2itf_map ${LIBRARY_HOME}/tech/star_rcxt/saed32nm_tf_itf_tluplus.map

create_mw_lib -technology ${LIBRARY_HOME}/tech/milkyway/saed32nm_1p9m_mw.tf -mw_reference_library $MW_REFERENCE_LIB_DIRS DSNN_2Layer_design.mw 


open_mw_lib DSNN_2Layer_design.mw



read_verilog {../../dc_synth/DSNN_2Layer/output/MAC_HDL.v ../../dc_synth/DSNN_2Layer/output/DSNN_2Layer.v}  ##  WE DONT KNOW  WHERE TO DEFINE THE MAC BLOCK SO HERE WE ASKED ICC TO READ MULTIPLE FILES THAT IS MAC AND DSNN


current_design DSNN_2Layer

uniquify_fp_mw_cel

link


read_sdc ../../dc_synth/DSNN_2Layer/const/DSNN_2Layer.sdc



save_mw_cel -as DSNN_2Layer_inital
