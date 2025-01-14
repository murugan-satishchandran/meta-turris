require ccsp_common_turris.inc

LDFLAGS_append_dunfell = " -lsafec-3.5.1"

do_install_append() {
    # Config files and scripts
    install -d ${D}/usr/ccsp/config
    install -m 644 ${S}/config/bbhm_def_cfg_qemu.xml ${D}/usr/ccsp/config/bbhm_def_cfg.xml
    install -m 755 ${S}/scripts/bbhm_patch.sh ${D}/usr/ccsp/psm/bbhm_patch.sh
#    sed -i '/NotifyWiFiChanges/a \
#      <Record name="eRT.com.cisco.spvtg.ccsp.Device.WiFi.Radio.SSID.1.SSID" type="astr">TURRIS_RDKB-AP0</Record> \
#      <Record name="eRT.com.cisco.spvtg.ccsp.Device.WiFi.Radio.SSID.2.SSID" type="astr">TURRIS_RDKB-AP1</Record> \
#      <Record name="eRT.com.cisco.spvtg.ccsp.Device.WiFi.Radio.SSID.1.Passphrase" type="astr">rdk@1234</Record> \
#      <Record name="eRT.com.cisco.spvtg.ccsp.Device.WiFi.Radio.SSID.2.Passphrase" type="astr">rdk@1234</Record>' ${D}/usr/ccsp/config/bbhm_def_cfg.xml
}

LDFLAGS_append_dunfell = " -lpthread"
