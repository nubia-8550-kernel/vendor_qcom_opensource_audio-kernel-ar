# Build audio kernel driver
PRODUCT_PACKAGES += $(KERNEL_MODULES_OUT)/q6_notifier_dlkm.ko\
	$(KERNEL_MODULES_OUT)/spf_core_dlkm.ko \
	$(KERNEL_MODULES_OUT)/audpkt_ion_dlkm.ko \
	$(KERNEL_MODULES_OUT)/gpr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/audio_pkt_dlkm.ko \
	$(KERNEL_MODULES_OUT)/q6_dlkm.ko \
	$(KERNEL_MODULES_OUT)/adsp_loader_dlkm.ko \
	$(KERNEL_MODULES_OUT)/audio_prm_dlkm.ko \
	$(KERNEL_MODULES_OUT)/q6_pdr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/pinctrl_lpi_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_ctrl_dlkm.ko \
	$(KERNEL_MODULES_OUT)/snd_event_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd_core_dlkm.ko \
	$(KERNEL_MODULES_OUT)/mbhc_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd9xxx_dlkm.ko \
	$(KERNEL_MODULES_OUT)/stub_dlkm.ko \
	$(KERNEL_MODULES_OUT)/machine_dlkm.ko
ifneq ($(call is-board-platform-in-list,bengal), true)
PRODUCT_PACKAGES += $(KERNEL_MODULES_OUT)/swr_dmic_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_haptics_dlkm.ko \
	$(KERNEL_MODULES_OUT)/hdmi_dlkm.ko \
	$(KERNEL_MODULES_OUT)/lpass_cdc_wsa2_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/lpass_cdc_wsa_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/lpass_cdc_va_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/lpass_cdc_rx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/lpass_cdc_tx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/lpass_cdc_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wsa884x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wsa883x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_slave_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd937x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd937x_slave_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd939x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd939x_slave_dlkm.ko
>>>>>>> 502806c7 (dsp: Import ZTE tfa98xx and aw882xx)
endif
ifeq ($(call is-board-platform-in-list,bengal), true)
PRODUCT_PACKAGES += $(KERNEL_MODULES_OUT)/bolero_cdc_dlkm.ko \
	$(KERNEL_MODULES_OUT)/va_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/tx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/rx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wsa881x_analog_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_slave_dlkm.ko
endif
### zte add by QC 20220810
LOCAL_CFLAGS += $(FEATURE_GLOBAL_CPPFLAGS)
ifeq ($(ZTE_FEATURE_AUDIO_AWINIC), true)
PRODUCT_PACKAGES += $(KERNEL_MODULES_OUT)/aw882xx_dlkm.ko
PRODUCT_PACKAGES += $(KERNEL_MODULES_OUT)/smartpa_stat_dlkm.ko
endif
### zte add by tfa98xx 20230207
ifeq ($(ZTE_FEATURE_GOODIXSMARTPA_ENABLE), true)
LOCAL_CFLAGS += $(FEATURE_GLOBAL_CPPFLAGS)
PRODUCT_PACKAGES += $(KERNEL_MODULES_OUT)/tfa98xx_dlkm.ko
endif

