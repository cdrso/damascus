// Analog-to-Digital Converter
pub const ADC3_Common = struct {
    // ADC Common status register
    CSR: packed struct(u32) {
        // Master ADC ready
        ADRDY_MST: u1,
        // End of Sampling phase flag of the master ADC
        EOSMP_MST: u1,
        // End of regular conversion of the master ADC
        EOC_MST: u1,
        // End of regular sequence flag of the master ADC
        EOS_MST: u1,
        // Overrun flag of the master ADC
        OVR_MST: u1,
        // End of injected conversion flag of the master ADC
        JEOC_MST: u1,
        // End of injected sequence flag of the master ADC
        JEOS_MST: u1,
        // Analog watchdog 1 flag of the master ADC
        AWD1_MST: u1,
        // Analog watchdog 2 flag of the master ADC
        AWD2_MST: u1,
        // Analog watchdog 3 flag of the master ADC
        AWD3_MST: u1,
        // Injected Context Queue Overflow flag of the master ADC
        JQOVF_MST: u1,
        // Reserved
        _reserved_11: u5,
        // Slave ADC ready
        ADRDY_SLV: u1,
        // End of Sampling phase flag of the slave ADC
        EOSMP_SLV: u1,
        // End of regular conversion of the slave ADC
        EOC_SLV: u1,
        // End of regular sequence flag of the slave ADC
        EOS_SLV: u1,
        // Overrun flag of the slave ADC
        OVR_SLV: u1,
        // End of injected conversion flag of the slave ADC
        JEOC_SLV: u1,
        // End of injected sequence flag of the slave ADC
        JEOS_SLV: u1,
        // Analog watchdog 1 flag of the slave ADC
        AWD1_SLV: u1,
        // Analog watchdog 2 flag of the slave ADC
        AWD2_SLV: u1,
        // Analog watchdog 3 flag of the slave ADC
        AWD3_SLV: u1,
        // Injected Context Queue Overflow flag of the slave ADC
        JQOVF_SLV: u1,
        // Reserved
        _reserved_27: u5,
    },
    // ADC common control register
    CCR: packed struct(u32) {
        // Dual ADC mode selection
        DUAL: u5,
        // Reserved
        _reserved_5: u3,
        // Delay between 2 sampling phases
        DELAY: u4,
        // Reserved
        _reserved_12: u2,
        // Dual ADC Mode Data Format
        DAMDF: u2,
        // ADC clock mode
        CKMODE: u2,
        // ADC prescaler
        PRESC: u4,
        // VREFINT enable
        VREFEN: u1,
        // Temperature sensor enable
        VSENSEEN: u1,
        // VBAT enable
        VBATEN: u1,
        // Reserved
        _reserved_25: u7,
    },
    // ADC common regular data register for dual and triple modes
    CDR: packed struct(u32) {
        // Regular data of the master ADC
        RDATA_MST: u16,
        // Regular data of the slave ADC
        RDATA_SLV: u16,
    },
    // ADC x common regular data register for 32-bit dual mode
    CDR2: packed struct(u32) {
        // Regular data of the master/slave alternated ADCs
        RDATA_ALT: u32,
    },
};

pub const ADC3_Common_BASE_ADDRESS: usize = 0x58026300;
pub const ADC3_Common_REGISTERS: *volatile ADC3_Common = @ptrFromInt(ADC3_Common_BASE_ADDRESS);
