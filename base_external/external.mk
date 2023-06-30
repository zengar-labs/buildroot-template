# Include any mk files in the package directory
include $(sort $(wildcard $(BR2_EXTERNAL_project_base_PATH)/package/*/*.mk))