LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := qdcm_calib_data_SW43402_cmd_mode_dsc_dsi_panel.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := qdcm_calib_data_SW43402_cmd_mode_dsc_dsi_panel.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := hdr_tm_config.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := hdr_tm_config.xml
include $(BUILD_PREBUILT)
