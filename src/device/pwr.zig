// PWR
pub const PWR = struct {
    // PWR control register 1
    CR1: packed struct(u32) {
        // Low-power Deepsleep with SVOS3 (SVOS4
        // and SVOS5 always use low-power, regardless of the
        // setting of this bit)
        LPDS: u1,
        // Reserved
        _reserved_1: u3,
        // Programmable voltage detector enable
        PVDE: u1,
        // Programmable voltage detector level
        // selection These bits select the voltage threshold
        // detected by the PVD. Note: Refer to Section
        // Electrical characteristics of the product datasheet
        // for more details.
        PLS: u3,
        // Disable backup domain write protection
        // In reset state, the RCC_BDCR register, the RTC
        // registers (including the backup registers), BREN and
        // MOEN bits in PWR_CR2 register, are protected against
        // parasitic write access. This bit must be set to
        // enable write access to these registers.
        DBP: u1,
        // Flash low-power mode in DStop mode This
        // bit allows to obtain the best trade-off between
        // low-power consumption and restart time when exiting
        // from DStop mode. When it is set, the Flash memory
        // enters low-power mode when D1 domain is in DStop
        // mode.
        FLPS: u1,
        // Reserved
        _reserved_10: u4,
        // System Stop mode voltage scaling
        // selection These bits control the VCORE voltage level
        // in system Stop mode, to obtain the best trade-off
        // between power consumption and
        // performance.
        SVOS: u2,
        // Peripheral voltage monitor on VDDA enable
        AVDEN: u1,
        // Analog voltage detector level selection
        // These bits select the voltage threshold detected by
        // the AVD.
        ALS: u2,
        // Reserved
        _reserved_19: u13,
    },
    // PWR control status register 1
    CSR1: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // Programmable voltage detect output This
        // bit is set and cleared by hardware. It is valid only
        // if the PVD has been enabled by the PVDE bit. Note:
        // since the PVD is disabled in Standby mode, this bit
        // is equal to 0 after Standby or reset until the PVDE
        // bit is set.
        PVDO: u1,
        // Reserved
        _reserved_5: u8,
        // Voltage levels ready bit for currently
        // used VOS and SDLEVEL This bit is set to 1 by hardware
        // when the voltage regulator and the SD converter are
        // both disabled and Bypass mode is selected in PWR
        // control register 3 (PWR_CR3).
        ACTVOSRDY: u1,
        // VOS currently applied for VCORE voltage
        // scaling selection. These bits reflect the last VOS
        // value applied to the PMU.
        ACTVOS: u2,
        // Analog voltage detector output on VDDA
        // This bit is set and cleared by hardware. It is valid
        // only if AVD on VDDA is enabled by the AVDEN bit.
        // Note: Since the AVD is disabled in Standby mode, this
        // bit is equal to 0 after Standby or reset until the
        // AVDEN bit is set.
        AVDO: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is not reset by wakeup from
    // Standby mode, RESET signal and VDD POR. It is only reset
    // by VSW POR and VSWRST reset. This register shall not be
    // accessed when VSWRST bit in RCC_BDCR register resets the
    // VSW domain.After reset, PWR_CR2 register is
    // write-protected. Prior to modifying its content, the DBP
    // bit in PWR_CR1 register must be set to disable the write
    // protection.
    CR2: packed struct(u32) {
        // Backup regulator enable When set, the
        // Backup regulator (used to maintain the backup RAM
        // content in Standby and VBAT modes) is enabled. If
        // BREN is reset, the backup regulator is switched off.
        // The backup RAM can still be used in Run and Stop
        // modes. However, its content will be lost in Standby
        // and VBAT modes. If BREN is set, the application must
        // wait till the Backup Regulator Ready flag (BRRDY) is
        // set to indicate that the data written into the SRAM
        // will be maintained in Standby and VBAT
        // modes.
        BREN: u1,
        // Reserved
        _reserved_1: u3,
        // VBAT and temperature monitoring enable
        // When set, the VBAT supply and temperature monitoring
        // is enabled.
        MONEN: u1,
        // Reserved
        _reserved_5: u11,
        // Backup regulator ready This bit is set
        // by hardware to indicate that the Backup regulator is
        // ready.
        BRRDY: u1,
        // Reserved
        _reserved_17: u3,
        // VBAT level monitoring versus low threshold
        VBATL: u1,
        // VBAT level monitoring versus high threshold
        VBATH: u1,
        // Temperature level monitoring versus low threshold
        TEMPL: u1,
        // Temperature level monitoring versus high threshold
        TEMPH: u1,
        // Reserved
        _reserved_24: u8,
    },
    // Reset only by POR only, not reset by wakeup
    // from Standby mode and RESET pad. The lower byte of this
    // register is written once after POR and shall be written
    // before changing VOS level or ck_sys clock frequency. No
    // limitation applies to the upper bytes.Programming data
    // corresponding to an invalid combination of SDLEVEL,
    // SDEXTHP, SDEN, LDOEN and BYPASS bits (see Table9) will be
    // ignored: data will not be written, the written-once
    // mechanism will lock the register and any further write
    // access will be ignored. The default supply configuration
    // will be kept and the ACTVOSRDY bit in PWR control status
    // register 1 (PWR_CSR1) will go on indicating invalid
    // voltage levels. The system shall be power cycled before
    // writing a new value.
    CR3: packed struct(u32) {
        // Power management unit bypass
        BYPASS: u1,
        // Low drop-out regulator enable
        LDOEN: u1,
        // SD converter Enable
        SCUEN: u1,
        // Reserved
        _reserved_3: u5,
        // VBAT charging enable
        VBE: u1,
        // VBAT charging resistor selection
        VBRS: u1,
        // Reserved
        _reserved_10: u14,
        // VDD33USB voltage level detector enable.
        USB33DEN: u1,
        // USB regulator enable.
        USBREGEN: u1,
        // USB supply ready.
        USB33RDY: u1,
        // Reserved
        _reserved_27: u5,
    },
    // This register allows controlling CPU1 power.
    CPUCR: packed struct(u32) {
        // D1 domain Power Down Deepsleep
        // selection. This bit allows CPU1 to define the
        // Deepsleep mode for D1 domain.
        PDDS_D1: u1,
        // D2 domain Power Down Deepsleep. This bit
        // allows CPU1 to define the Deepsleep mode for D2
        // domain.
        PDDS_D2: u1,
        // System D3 domain Power Down Deepsleep.
        // This bit allows CPU1 to define the Deepsleep mode for
        // System D3 domain.
        PDDS_D3: u1,
        // Reserved
        _reserved_3: u2,
        // STOP flag This bit is set by hardware
        // and cleared only by any reset or by setting the CPU1
        // CSSF bit.
        STOPF: u1,
        // System Standby flag This bit is set by
        // hardware and cleared only by a POR (Power-on Reset)
        // or by setting the CPU1 CSSF bit
        SBF: u1,
        // D1 domain DStandby flag This bit is set
        // by hardware and cleared by any system reset or by
        // setting the CPU1 CSSF bit. Once set, this bit can be
        // cleared only when the D1 domain is no longer in
        // DStandby mode.
        SBF_D1: u1,
        // D2 domain DStandby flag This bit is set
        // by hardware and cleared by any system reset or by
        // setting the CPU1 CSSF bit. Once set, this bit can be
        // cleared only when the D2 domain is no longer in
        // DStandby mode.
        SBF_D2: u1,
        // Clear D1 domain CPU1 Standby, Stop and
        // HOLD flags (always read as 0) This bit is cleared to
        // 0 by hardware.
        CSSF: u1,
        // Reserved
        _reserved_10: u1,
        // Keep system D3 domain in Run mode regardless of the CPU sub-systems modes
        RUN_D3: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register allows controlling D3 domain
    // power.Following reset VOSRDY will be read 1 by
    // software
    D3CR: packed struct(u32) {
        // Reserved
        _reserved_0: u13,
        // VOS Ready bit for VCORE voltage scaling
        // output selection. This bit is set to 1 by hardware
        // when Bypass mode is selected in PWR control register
        // 3 (PWR_CR3).
        VOSRDY: u1,
        // Voltage scaling selection according to
        // performance These bits control the VCORE voltage
        // level and allow to obtains the best trade-off between
        // power consumption and performance: When increasing
        // the performance, the voltage scaling shall be changed
        // before increasing the system frequency. When
        // decreasing performance, the system frequency shall
        // first be decreased before changing the voltage
        // scaling.
        VOS: u2,
        // Reserved
        _reserved_16: u16,
    },
    // reset only by system reset, not reset by
    // wakeup from Standby mode5 wait states are required when
    // writing this register (when clearing a WKUPF bit in
    // PWR_WKUPFR, the AHB write access will complete after the
    // WKUPF has been cleared).
    WKUPCR: packed struct(u32) {
        // Clear Wakeup pin flag for WKUP. These bits are always read as 0.
        WKUPC: u6,
        // Reserved
        _reserved_6: u26,
    },
    // reset only by system reset, not reset by wakeup from Standby mode
    WKUPFR: packed struct(u32) {
        // Wakeup pin WKUPF flag. This bit is set
        // by hardware and cleared only by a Reset pin or by
        // setting the WKUPCn+1 bit in the PWR wakeup clear
        // register (PWR_WKUPCR).
        WKUPF1: u1,
        // Wakeup pin WKUPF flag. This bit is set
        // by hardware and cleared only by a Reset pin or by
        // setting the WKUPCn+1 bit in the PWR wakeup clear
        // register (PWR_WKUPCR).
        WKUPF2: u1,
        // Wakeup pin WKUPF flag. This bit is set
        // by hardware and cleared only by a Reset pin or by
        // setting the WKUPCn+1 bit in the PWR wakeup clear
        // register (PWR_WKUPCR).
        WKUPF3: u1,
        // Wakeup pin WKUPF flag. This bit is set
        // by hardware and cleared only by a Reset pin or by
        // setting the WKUPCn+1 bit in the PWR wakeup clear
        // register (PWR_WKUPCR).
        WKUPF4: u1,
        // Wakeup pin WKUPF flag. This bit is set
        // by hardware and cleared only by a Reset pin or by
        // setting the WKUPCn+1 bit in the PWR wakeup clear
        // register (PWR_WKUPCR).
        WKUPF5: u1,
        // Wakeup pin WKUPF flag. This bit is set
        // by hardware and cleared only by a Reset pin or by
        // setting the WKUPCn+1 bit in the PWR wakeup clear
        // register (PWR_WKUPCR).
        WKUPF6: u1,
        // Reserved
        _reserved_6: u26,
    },
    // Reset only by system reset, not reset by wakeup from Standby mode
    WKUPEPR: packed struct(u32) {
        // Enable Wakeup Pin WKUPn+1 Each bit is
        // set and cleared by software. Note: An additional
        // wakeup event is detected if WKUPn+1 pin is enabled
        // (by setting the WKUPENn+1 bit) when WKUPn+1 pin level
        // is already high when WKUPPn+1 selects rising edge, or
        // low when WKUPPn+1 selects falling edge.
        WKUPEN1: u1,
        // Enable Wakeup Pin WKUPn+1 Each bit is
        // set and cleared by software. Note: An additional
        // wakeup event is detected if WKUPn+1 pin is enabled
        // (by setting the WKUPENn+1 bit) when WKUPn+1 pin level
        // is already high when WKUPPn+1 selects rising edge, or
        // low when WKUPPn+1 selects falling edge.
        WKUPEN2: u1,
        // Enable Wakeup Pin WKUPn+1 Each bit is
        // set and cleared by software. Note: An additional
        // wakeup event is detected if WKUPn+1 pin is enabled
        // (by setting the WKUPENn+1 bit) when WKUPn+1 pin level
        // is already high when WKUPPn+1 selects rising edge, or
        // low when WKUPPn+1 selects falling edge.
        WKUPEN3: u1,
        // Enable Wakeup Pin WKUPn+1 Each bit is
        // set and cleared by software. Note: An additional
        // wakeup event is detected if WKUPn+1 pin is enabled
        // (by setting the WKUPENn+1 bit) when WKUPn+1 pin level
        // is already high when WKUPPn+1 selects rising edge, or
        // low when WKUPPn+1 selects falling edge.
        WKUPEN4: u1,
        // Enable Wakeup Pin WKUPn+1 Each bit is
        // set and cleared by software. Note: An additional
        // wakeup event is detected if WKUPn+1 pin is enabled
        // (by setting the WKUPENn+1 bit) when WKUPn+1 pin level
        // is already high when WKUPPn+1 selects rising edge, or
        // low when WKUPPn+1 selects falling edge.
        WKUPEN5: u1,
        // Enable Wakeup Pin WKUPn+1 Each bit is
        // set and cleared by software. Note: An additional
        // wakeup event is detected if WKUPn+1 pin is enabled
        // (by setting the WKUPENn+1 bit) when WKUPn+1 pin level
        // is already high when WKUPPn+1 selects rising edge, or
        // low when WKUPPn+1 selects falling edge.
        WKUPEN6: u1,
        // Reserved
        _reserved_6: u2,
        // Wakeup pin polarity bit for WKUPn-7
        // These bits define the polarity used for event
        // detection on WKUPn-7 external wakeup
        // pin.
        WKUPP1: u1,
        // Wakeup pin polarity bit for WKUPn-7
        // These bits define the polarity used for event
        // detection on WKUPn-7 external wakeup
        // pin.
        WKUPP2: u1,
        // Wakeup pin polarity bit for WKUPn-7
        // These bits define the polarity used for event
        // detection on WKUPn-7 external wakeup
        // pin.
        WKUPP3: u1,
        // Wakeup pin polarity bit for WKUPn-7
        // These bits define the polarity used for event
        // detection on WKUPn-7 external wakeup
        // pin.
        WKUPP4: u1,
        // Wakeup pin polarity bit for WKUPn-7
        // These bits define the polarity used for event
        // detection on WKUPn-7 external wakeup
        // pin.
        WKUPP5: u1,
        // Wakeup pin polarity bit for WKUPn-7
        // These bits define the polarity used for event
        // detection on WKUPn-7 external wakeup
        // pin.
        WKUPP6: u1,
        // Reserved
        _reserved_14: u2,
        // Wakeup pin pull configuration
        WKUPPUPD1: u2,
        // Wakeup pin pull configuration
        WKUPPUPD2: u2,
        // Wakeup pin pull configuration
        WKUPPUPD3: u2,
        // Wakeup pin pull configuration
        WKUPPUPD4: u2,
        // Wakeup pin pull configuration
        WKUPPUPD5: u2,
        // Wakeup pin pull configuration for
        // WKUP(truncate(n/2)-7) These bits define the I/O pad
        // pull configuration used when WKUPEN(truncate(n/2)-7)
        // = 1. The associated GPIO port pull configuration
        // shall be set to the same value or to 00. The Wakeup
        // pin pull configuration is kept in Standby
        // mode.
        WKUPPUPD6: u2,
        // Reserved
        _reserved_28: u4,
    },
};

pub const PWR_BASE_ADDRESS: usize = 0x58024800;
pub const PWR_REGISTERS: *volatile PWR = @ptrFromInt(PWR_BASE_ADDRESS);
