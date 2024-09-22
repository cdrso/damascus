// Analog to Digital Converter
pub const ADC3 = struct {
    // ADC interrupt and status register
    ISR: packed struct(u32) {
        // ADC ready flag
        ADRDY: u1,
        // ADC group regular end of sampling flag
        EOSMP: u1,
        // ADC group regular end of unitary conversion flag
        EOC: u1,
        // ADC group regular end of sequence conversions flag
        EOS: u1,
        // ADC group regular overrun flag
        OVR: u1,
        // ADC group injected end of unitary conversion flag
        JEOC: u1,
        // ADC group injected end of sequence conversions flag
        JEOS: u1,
        // ADC analog watchdog 1 flag
        AWD1: u1,
        // ADC analog watchdog 2 flag
        AWD2: u1,
        // ADC analog watchdog 3 flag
        AWD3: u1,
        // ADC group injected contexts queue overflow flag
        JQOVF: u1,
        // Reserved
        _reserved_11: u21,
    },
    // ADC interrupt enable register
    IER: packed struct(u32) {
        // ADC ready interrupt
        ADRDYIE: u1,
        // ADC group regular end of sampling interrupt
        EOSMPIE: u1,
        // ADC group regular end of unitary conversion interrupt
        EOCIE: u1,
        // ADC group regular end of sequence conversions interrupt
        EOSIE: u1,
        // ADC group regular overrun interrupt
        OVRIE: u1,
        // ADC group injected end of unitary conversion interrupt
        JEOCIE: u1,
        // ADC group injected end of sequence conversions interrupt
        JEOSIE: u1,
        // ADC analog watchdog 1 interrupt
        AWD1IE: u1,
        // ADC analog watchdog 2 interrupt
        AWD2IE: u1,
        // ADC analog watchdog 3 interrupt
        AWD3IE: u1,
        // ADC group injected contexts queue overflow interrupt
        JQOVFIE: u1,
        // Reserved
        _reserved_11: u21,
    },
    // ADC control register
    CR: packed struct(u32) {
        // ADC enable
        ADEN: u1,
        // ADC disable
        ADDIS: u1,
        // ADC group regular conversion start
        ADSTART: u1,
        // ADC group injected conversion start
        JADSTART: u1,
        // ADC group regular conversion stop
        ADSTP: u1,
        // ADC group injected conversion stop
        JADSTP: u1,
        // Reserved
        _reserved_6: u2,
        // Boost mode control
        BOOST: u1,
        // Reserved
        _reserved_9: u7,
        // Linearity calibration
        ADCALLIN: u1,
        // Reserved
        _reserved_17: u5,
        // Linearity calibration ready Word 1
        LINCALRDYW1: u1,
        // Linearity calibration ready Word 2
        LINCALRDYW2: u1,
        // Linearity calibration ready Word 3
        LINCALRDYW3: u1,
        // Linearity calibration ready Word 4
        LINCALRDYW4: u1,
        // Linearity calibration ready Word 5
        LINCALRDYW5: u1,
        // Linearity calibration ready Word 6
        LINCALRDYW6: u1,
        // ADC voltage regulator enable
        ADVREGEN: u1,
        // ADC deep power down enable
        DEEPPWD: u1,
        // ADC differential mode for calibration
        ADCALDIF: u1,
        // ADC calibration
        ADCAL: u1,
    },
    // ADC configuration register 1
    CFGR: packed struct(u32) {
        // ADC DMA transfer enable
        DMNGT: u2,
        // ADC data resolution
        RES: u3,
        // ADC group regular external trigger source
        EXTSEL: u5,
        // ADC group regular external trigger polarity
        EXTEN: u2,
        // ADC group regular overrun configuration
        OVRMOD: u1,
        // ADC group regular continuous conversion mode
        CONT: u1,
        // ADC low power auto wait
        AUTDLY: u1,
        // Reserved
        _reserved_15: u1,
        // ADC group regular sequencer discontinuous mode
        DISCEN: u1,
        // ADC group regular sequencer discontinuous number of ranks
        DISCNUM: u3,
        // ADC group injected sequencer discontinuous mode
        JDISCEN: u1,
        // ADC group injected contexts queue mode
        JQM: u1,
        // ADC analog watchdog 1 monitoring a single channel or all channels
        AWD1SGL: u1,
        // ADC analog watchdog 1 enable on scope ADC group regular
        AWD1EN: u1,
        // ADC analog watchdog 1 enable on scope ADC group injected
        JAWD1EN: u1,
        // ADC group injected automatic trigger mode
        JAUTO: u1,
        // ADC analog watchdog 1 monitored channel selection
        AWDCH1CH: u5,
        // ADC group injected contexts queue disable
        JQDIS: u1,
    },
    // ADC configuration register 2
    CFGR2: packed struct(u32) {
        // ADC oversampler enable on scope ADC group regular
        ROVSE: u1,
        // ADC oversampler enable on scope ADC group injected
        JOVSE: u1,
        // Reserved
        _reserved_2: u3,
        // ADC oversampling shift
        OVSS: u4,
        // ADC oversampling discontinuous mode (triggered mode) for ADC group regular
        TROVS: u1,
        // Regular Oversampling mode
        ROVSM: u1,
        // Right-shift data after Offset 1 correction
        RSHIFT1: u1,
        // Right-shift data after Offset 2 correction
        RSHIFT2: u1,
        // Right-shift data after Offset 3 correction
        RSHIFT3: u1,
        // Right-shift data after Offset 4 correction
        RSHIFT4: u1,
        // Reserved
        _reserved_15: u1,
        // Oversampling ratio
        OSR: u10,
        // Reserved
        _reserved_26: u2,
        // Left shift factor
        LSHIFT: u4,
    },
    // ADC sampling time register 1
    SMPR1: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // ADC channel 1 sampling time selection
        SMP1: u3,
        // ADC channel 2 sampling time selection
        SMP2: u3,
        // ADC channel 3 sampling time selection
        SMP3: u3,
        // ADC channel 4 sampling time selection
        SMP4: u3,
        // ADC channel 5 sampling time selection
        SMP5: u3,
        // ADC channel 6 sampling time selection
        SMP6: u3,
        // ADC channel 7 sampling time selection
        SMP7: u3,
        // ADC channel 8 sampling time selection
        SMP8: u3,
        // ADC channel 9 sampling time selection
        SMP9: u3,
        // Reserved
        _reserved_30: u2,
    },
    // ADC sampling time register 2
    SMPR2: packed struct(u32) {
        // ADC channel 10 sampling time selection
        SMP10: u3,
        // ADC channel 11 sampling time selection
        SMP11: u3,
        // ADC channel 12 sampling time selection
        SMP12: u3,
        // ADC channel 13 sampling time selection
        SMP13: u3,
        // ADC channel 14 sampling time selection
        SMP14: u3,
        // ADC channel 15 sampling time selection
        SMP15: u3,
        // ADC channel 16 sampling time selection
        SMP16: u3,
        // ADC channel 17 sampling time selection
        SMP17: u3,
        // ADC channel 18 sampling time selection
        SMP18: u3,
        // ADC channel 18 sampling time selection
        SMP19: u3,
        // Reserved
        _reserved_30: u2,
    },
    // ADC analog watchdog 1 threshold register
    LTR1: packed struct(u32) {
        // ADC analog watchdog 1 threshold low
        LTR1: u26,
        // Reserved
        _reserved_26: u6,
    },
    // ADC analog watchdog 2 threshold register
    LHTR1: packed struct(u32) {
        // ADC analog watchdog 2 threshold low
        LHTR1: u26,
        // Reserved
        _reserved_26: u6,
    },
    // ADC group regular sequencer ranks register 1
    SQR1: packed struct(u32) {
        // L3
        L3: u4,
        // Reserved
        _reserved_4: u2,
        // ADC group regular sequencer rank 1
        SQ1: u5,
        // Reserved
        _reserved_11: u1,
        // ADC group regular sequencer rank 2
        SQ2: u5,
        // Reserved
        _reserved_17: u1,
        // ADC group regular sequencer rank 3
        SQ3: u5,
        // Reserved
        _reserved_23: u1,
        // ADC group regular sequencer rank 4
        SQ4: u5,
        // Reserved
        _reserved_29: u3,
    },
    // ADC group regular sequencer ranks register 2
    SQR2: packed struct(u32) {
        // ADC group regular sequencer rank 5
        SQ5: u5,
        // Reserved
        _reserved_5: u1,
        // ADC group regular sequencer rank 6
        SQ6: u5,
        // Reserved
        _reserved_11: u1,
        // ADC group regular sequencer rank 7
        SQ7: u5,
        // Reserved
        _reserved_17: u1,
        // ADC group regular sequencer rank 8
        SQ8: u5,
        // Reserved
        _reserved_23: u1,
        // ADC group regular sequencer rank 9
        SQ9: u5,
        // Reserved
        _reserved_29: u3,
    },
    // ADC group regular sequencer ranks register 3
    SQR3: packed struct(u32) {
        // ADC group regular sequencer rank 10
        SQ10: u5,
        // Reserved
        _reserved_5: u1,
        // ADC group regular sequencer rank 11
        SQ11: u5,
        // Reserved
        _reserved_11: u1,
        // ADC group regular sequencer rank 12
        SQ12: u5,
        // Reserved
        _reserved_17: u1,
        // ADC group regular sequencer rank 13
        SQ13: u5,
        // Reserved
        _reserved_23: u1,
        // ADC group regular sequencer rank 14
        SQ14: u5,
        // Reserved
        _reserved_29: u3,
    },
    // ADC group regular sequencer ranks register 4
    SQR4: packed struct(u32) {
        // ADC group regular sequencer rank 15
        SQ15: u5,
        // Reserved
        _reserved_5: u1,
        // ADC group regular sequencer rank 16
        SQ16: u5,
        // Reserved
        _reserved_11: u21,
    },
    // ADC group regular conversion data register
    DR: packed struct(u32) {
        // ADC group regular conversion data
        RDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // ADC group injected sequencer register
    JSQR: packed struct(u32) {
        // ADC group injected sequencer scan length
        JL: u2,
        // ADC group injected external trigger source
        JEXTSEL: u5,
        // ADC group injected external trigger polarity
        JEXTEN: u2,
        // ADC group injected sequencer rank 1
        JSQ1: u5,
        // Reserved
        _reserved_14: u1,
        // ADC group injected sequencer rank 2
        JSQ2: u5,
        // Reserved
        _reserved_20: u1,
        // ADC group injected sequencer rank 3
        JSQ3: u5,
        // Reserved
        _reserved_26: u1,
        // ADC group injected sequencer rank 4
        JSQ4: u5,
    },
    // ADC offset number 1 register
    OFR1: packed struct(u32) {
        // ADC offset number 1 offset level
        OFFSET1: u26,
        // ADC offset number 1 channel selection
        OFFSET1_CH: u5,
        // ADC offset number 1 enable
        SSATE: u1,
    },
    // ADC offset number 2 register
    OFR2: packed struct(u32) {
        // ADC offset number 1 offset level
        OFFSET1: u26,
        // ADC offset number 1 channel selection
        OFFSET1_CH: u5,
        // ADC offset number 1 enable
        SSATE: u1,
    },
    // ADC offset number 3 register
    OFR3: packed struct(u32) {
        // ADC offset number 1 offset level
        OFFSET1: u26,
        // ADC offset number 1 channel selection
        OFFSET1_CH: u5,
        // ADC offset number 1 enable
        SSATE: u1,
    },
    // ADC offset number 4 register
    OFR4: packed struct(u32) {
        // ADC offset number 1 offset level
        OFFSET1: u26,
        // ADC offset number 1 channel selection
        OFFSET1_CH: u5,
        // ADC offset number 1 enable
        SSATE: u1,
    },
    // ADC group injected sequencer rank 1 register
    JDR1: packed struct(u32) {
        // ADC group injected sequencer rank 1 conversion data
        JDATA1: u32,
    },
    // ADC group injected sequencer rank 2 register
    JDR2: packed struct(u32) {
        // ADC group injected sequencer rank 2 conversion data
        JDATA2: u32,
    },
    // ADC group injected sequencer rank 3 register
    JDR3: packed struct(u32) {
        // ADC group injected sequencer rank 3 conversion data
        JDATA3: u32,
    },
    // ADC group injected sequencer rank 4 register
    JDR4: packed struct(u32) {
        // ADC group injected sequencer rank 4 conversion data
        JDATA4: u32,
    },
    // ADC analog watchdog 2 configuration register
    AWD2CR: packed struct(u32) {
        // ADC analog watchdog 2 monitored channel selection
        AWD2CH: u20,
        // Reserved
        _reserved_20: u12,
    },
    // ADC analog watchdog 3 configuration register
    AWD3CR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // ADC analog watchdog 3 monitored channel selection
        AWD3CH: u20,
        // Reserved
        _reserved_21: u11,
    },
    // ADC channel differential or single-ended mode selection register
    DIFSEL: packed struct(u32) {
        // ADC channel differential or single-ended mode for channel
        DIFSEL: u20,
        // Reserved
        _reserved_20: u12,
    },
    // ADC calibration factors register
    CALFACT: packed struct(u32) {
        // ADC calibration factor in single-ended mode
        CALFACT_S: u11,
        // Reserved
        _reserved_11: u5,
        // ADC calibration factor in differential mode
        CALFACT_D: u11,
        // Reserved
        _reserved_27: u5,
    },
    // ADC pre channel selection register
    PCSEL: packed struct(u32) {
        // Channel x (VINP[i]) pre selection
        PCSEL: u20,
        // Reserved
        _reserved_20: u12,
    },
    // ADC watchdog lower threshold register 2
    LTR2: packed struct(u32) {
        // Analog watchdog 2 lower threshold
        LTR2: u26,
        // Reserved
        _reserved_26: u6,
    },
    // ADC watchdog higher threshold register 2
    HTR2: packed struct(u32) {
        // Analog watchdog 2 higher threshold
        HTR2: u26,
        // Reserved
        _reserved_26: u6,
    },
    // ADC watchdog lower threshold register 3
    LTR3: packed struct(u32) {
        // Analog watchdog 3 lower threshold
        LTR3: u26,
        // Reserved
        _reserved_26: u6,
    },
    // ADC watchdog higher threshold register 3
    HTR3: packed struct(u32) {
        // Analog watchdog 3 higher threshold
        HTR3: u26,
        // Reserved
        _reserved_26: u6,
    },
    // ADC Calibration Factor register 2
    CALFACT2: packed struct(u32) {
        // Linearity Calibration Factor
        LINCALFACT: u30,
        // Reserved
        _reserved_30: u2,
    },
};

pub const ADC3_BASE_ADDRESS: usize = 0x58026000;
pub const ADC3_REGISTERS: *volatile ADC3 = @ptrFromInt(ADC3_BASE_ADDRESS);
