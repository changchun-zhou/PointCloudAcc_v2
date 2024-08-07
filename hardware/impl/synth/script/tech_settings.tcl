source ./config_temp.tcl
########################
## Read Library Files ##libdir_0p6
########################

set libdir_1p2  /materials/technology/tsmc65/IP/StdCell/7t/tcbn65lpbwp7t_220a/tcbn65lpbwp7t_141a_ecsm/TSMCHOME/digital/Front_End/timing_power_noise/ECSM/tcbn65lpbwp7t_141a
set libdir_1p2_hvt /materials/technology/tsmc65/IP/StdCell/7t/tcbn65lpbwp7thvt_220a/tcbn65lpbwp7thvt_141a_ecsm/TSMCHOME/digital/Front_End/timing_power_noise/ECSM/tcbn65lpbwp7thvt_141a
set libdir_1p2_lvt /materials/technology/tsmc65/IP/StdCell/7t/tcbn65lpbwp7tlvt_220a/tcbn65lpbwp7tlvt_141a_ecsm/TSMCHOME/digital/Front_End/timing_power_noise/ECSM/tcbn65lpbwp7tlvt_141a
set libdir_sram ../../src/sram
set libdir_pad  /materials/technology/tsmc65/IP/IO/IO/tpdn65lpnv2od3_200a/tpdn65lpnv2od3_200a_nldm/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tpdn65lpnv2od3_200a

set libdir_0p6  /workspace/home/songxy/EEG_Chip/Liberate/LIB_final
set libdir_ls   /workspace/home/songxy/EEG_Chip/Liberate/LIB_final/LS
#############################################################################################
##                                  Define worst-case library sets                         ## 
#############################################################################################
set worst_1p08_125_memory_libs   [exec find $libdir_sram -name *ss*125c*.lib]

# set worst_ls_libs                $libdir_ls/C3MLS_1.221.2c25_tc_ecsm.lib
set worst_ls_libs                $libdir_ls/C3MLS_0.621.2c25_tc_ecsm.lib

set worst_0p55_125_standard_libs [concat \
                                $libdir_0p6/tc_0p6/tcbn65lpbwp7t_hvt_0p6c25_tc_ecsm.lib\
                                $libdir_0p6/tc_0p6/tcbn65lpbwp7t_rvt_0p6c25_tc_ecsm.lib\
                                ]
set worst_1p08_125_standard_libs [concat \
                                $libdir_1p2/tcbn65lpbwp7twc_ecsm.lib\
                                $libdir_1p2_hvt/tcbn65lpbwp7thvtwc_ecsm.lib\
                                ]
# $libdir_1p2_lvt/tcbn65lpbwp7tlvtwc_ecsm.lib
set worst_pad_lib                $libdir_pad/tpdn65lpnv2od3wc.lib

set slow_HV_lib [concat \
    $worst_1p08_125_standard_libs\
    $worst_ls_libs\
    $worst_1p08_125_memory_libs\
    $worst_pad_lib\
    ]

set slow_LV_lib [concat \
    $worst_0p55_125_standard_libs\
    $worst_ls_libs\
    ]

#############################################################################################
##                                  Define typical-case library sets                       ## 
#############################################################################################
set typical_1p2_25_memory_libs   [exec find $libdir_sram -name *tt*25c*.lib]

# set typical_ls_libs                $libdir_ls/C3MLS_1.221.2c25_tc_ecsm.lib
set typical_ls_libs                $libdir_ls/C3MLS_0.621.2c25_tc_ecsm.lib


set typical_0p6_25_standard_libs [concat\
                                $libdir_0p6/tc_0p6/tcbn65lpbwp7t_hvt_0p6c25_tc_ecsm.lib\
                                $libdir_0p6/tc_0p6/tcbn65lpbwp7t_rvt_0p6c25_tc_ecsm.lib\
                                ]
set typical_1p2_25_standard_libs [concat \
                                $libdir_1p2/tcbn65lpbwp7ttc_ecsm.lib\
                                $libdir_1p2_hvt/tcbn65lpbwp7thvttc_ecsm.lib\
                                ]
# $libdir_1p2_lvt/tcbn65lpbwp7tlvttc_ecsm.lib
set typical_pad_lib              $libdir_pad/tpdn65lpnv2od3tc.lib

set typical_HV_lib [concat \
    $typical_1p2_25_standard_libs\
    $typical_ls_libs\
    $typical_1p2_25_memory_libs\
    $typical_pad_lib\
    ]

set typical_LV_lib [concat \
    $typical_0p6_25_standard_libs\
    $typical_ls_libs\
    ]

#############################################################################################
##                                  Define best-case library sets                          ## 
#############################################################################################
set fast_1p32_0_memory_libs     [exec find $libdir_sram -name *ff*v0c*.lib]

# set fast_ls_libs                $libdir_ls/C3MLS_1.221.2c0_bc_ecsm.lib
set fast_ls_libs                $libdir_ls/C3MLS_0.621.2c0_bc_ecsm.lib

set fast_0p65_m40_standard_libs [concat\
                                $libdir_0p6/bc_0p6/tcbn65lpbwp7t_rvt_0p6c0_bc_ecsm.lib\
                                $libdir_0p6/bc_0p6/tcbn65lpbwp7t_hvt_0p6c0_bc_ecsm.lib\
                                ]
set fast_1p32_0_standard_libs   [concat \
                                $libdir_1p2/tcbn65lpbwp7tbc_ecsm.lib\
                                $libdir_1p2_hvt/tcbn65lpbwp7thvtbc_ecsm.lib\
                                ]
# $libdir_1p2_lvt/tcbn65lpbwp7tlvtbc_ecsm.lib
set fast_pad_lib                $libdir_pad/tpdn65lpnv2od3bc.lib

set fast_HV_lib [concat \
    $fast_1p32_0_standard_libs\
    $fast_ls_libs\
    $fast_1p32_0_memory_libs\
    $fast_pad_lib\
    ]

set fast_LV_lib [concat \
    $fast_0p65_m40_standard_libs\
    $fast_ls_libs\
    ]
