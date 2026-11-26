## Wireless Firmware for Nethunter

This Magisk module adds the required firmware for external wireless adapters to be used with Nethunter. Also, adds various functions to make cancunf function correctly with Kali Nethunter.

**NOTE:** Your kernel still needs to support external network adapters. This module only provides missing firmware, if any.

The list of included firmware is given below.

#### Supported chipsets:

- **Ralink** - RT2501, RT2501USB, RT2561, RT2561S, RT2571W, RT2600, RT2661, RT2671, RT2760, RT2790, RT2860, RT2870, RT2890, RT3070, RT3071, RT3090, RT3290, RT5201, RT5600
- **Realtek** - RTL8188* (EU/FTV), RTL8192* (CU/EU/DE/SE), RTL8821/12* (AE/AU/BU), RTL8822BU
- **Atheros** - AR9170, AR7010
- **Mediatek** - MT7601u
- **Broadcom** - bcm43xx (not tested), BRCM4335, BRCM4339, BRCM4354

#### Changelog

* v3
    - Fork, by Æsir. Initial commits.

* v2.0.4
    - Added files for RTL8812BU, RTL8822BU, BRCM4335, BRCM4339, BRCM4354

* v2.0.3
    - Added files for bcm43xx (meant for bcm4358)

* v2.0.2
    - Added all Ralink files
    - Check chipset list above

* v2.0.1
    - Added files for AR7010 and RTL8821

* v2.0.0
    - Migrated to new Magisk Installer template
    - Added upater-script for zip flashing

* v1.0.5
    - Added files for AR9170

* v1.0.4
    - Added files for RTL8192

* v1.0.3
    - Added files for RTL8188EU

* v1.0.2
    - Added files for RT3070 and RT3071

* v1.0.1
    - Added files for RT2870 and MT7601u

* v1.0
    - Initial release


**Source:** https://github.com/rithvikvibhu/nh-magisk-wifi-firmware
**Author:** [rithvikvibhu](https://github.com/rithvikvibhu) (https://github.com/rithvikvibhu)
