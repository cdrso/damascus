// Digital filter for sigma delta modulators
pub const DFSDM = struct {
    // channel configuration y register
    CH0CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // CKOUTDIV
        CKOUTDIV: u8,
        // Reserved
        _reserved_24: u6,
        // CKOUTSRC
        CKOUTSRC: u1,
        // DFSDMEN
        DFSDMEN: u1,
    },
    // channel configuration y register
    CH0CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // analog watchdog and short-circuit detector register
    CH0AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // channel watchdog filter data register
    CH0WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // channel data input register
    CH0DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH0DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // CH1CFGR1
    CH1CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // Reserved
        _reserved_16: u16,
    },
    // CH1CFGR2
    CH1CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // CH1AWSCDR
    CH1AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // CH1WDATR
    CH1WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // CH1DATINR
    CH1DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH1DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // CH2CFGR1
    CH2CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // Reserved
        _reserved_16: u16,
    },
    // CH2CFGR2
    CH2CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // CH2AWSCDR
    CH2AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // CH2WDATR
    CH2WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // CH2DATINR
    CH2DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH2DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // CH3CFGR1
    CH3CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // Reserved
        _reserved_16: u16,
    },
    // CH3CFGR2
    CH3CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // CH3AWSCDR
    CH3AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // CH3WDATR
    CH3WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // CH3DATINR
    CH3DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH3DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // CH4CFGR1
    CH4CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // Reserved
        _reserved_16: u16,
    },
    // CH4CFGR2
    CH4CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // CH4AWSCDR
    CH4AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // CH4WDATR
    CH4WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // CH4DATINR
    CH4DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH4DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // CH5CFGR1
    CH5CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // Reserved
        _reserved_16: u16,
    },
    // CH5CFGR2
    CH5CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // CH5AWSCDR
    CH5AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // CH5WDATR
    CH5WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // CH5DATINR
    CH5DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH5DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // CH6CFGR1
    CH6CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // Reserved
        _reserved_16: u16,
    },
    // CH6CFGR2
    CH6CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // CH6AWSCDR
    CH6AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // CH6WDATR
    CH6WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // CH6DATINR
    CH6DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH6DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // CH7CFGR1
    CH7CFGR1: packed struct(u32) {
        // SITP
        SITP: u2,
        // SPICKSEL
        SPICKSEL: u2,
        // Reserved
        _reserved_4: u1,
        // SCDEN
        SCDEN: u1,
        // CKABEN
        CKABEN: u1,
        // CHEN
        CHEN: u1,
        // CHINSEL
        CHINSEL: u1,
        // Reserved
        _reserved_9: u3,
        // DATMPX
        DATMPX: u2,
        // DATPACK
        DATPACK: u2,
        // Reserved
        _reserved_16: u16,
    },
    // CH7CFGR2
    CH7CFGR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // DTRBS
        DTRBS: u5,
        // OFFSET
        OFFSET: u24,
    },
    // CH7AWSCDR
    CH7AWSCDR: packed struct(u32) {
        // SCDT
        SCDT: u8,
        // Reserved
        _reserved_8: u4,
        // BKSCD
        BKSCD: u4,
        // AWFOSR
        AWFOSR: u5,
        // Reserved
        _reserved_21: u1,
        // AWFORD
        AWFORD: u2,
        // Reserved
        _reserved_24: u8,
    },
    // CH7WDATR
    CH7WDATR: packed struct(u32) {
        // WDATA
        WDATA: u16,
        // Reserved
        _reserved_16: u16,
    },
    // CH7DATINR
    CH7DATINR: packed struct(u32) {
        // INDAT0
        INDAT0: u16,
        // INDAT1
        INDAT1: u16,
    },
    // channel y delay register
    CH7DLYR: packed struct(u32) {
        // PLSSKP
        PLSSKP: u6,
        // Reserved
        _reserved_6: u26,
    },
    // control register 1
    DFSDM_FLT0CR1: packed struct(u32) {
        // DFSDM enable
        DFEN: u1,
        // Start a conversion of the injected group of channels
        JSWSTART: u1,
        // Reserved
        _reserved_2: u1,
        // Launch an injected conversion
        // synchronously with the DFSDM0 JSWSTART
        // trigger
        JSYNC: u1,
        // Scanning conversion mode for injected conversions
        JSCAN: u1,
        // DMA channel enabled to read data for the injected channel group
        JDMAEN: u1,
        // Reserved
        _reserved_6: u2,
        // Trigger signal selection for launching injected conversions
        JEXTSEL: u3,
        // Reserved
        _reserved_11: u2,
        // Trigger enable and trigger edge selection for injected conversions
        JEXTEN: u2,
        // Reserved
        _reserved_15: u2,
        // Software start of a conversion on the regular channel
        RSWSTART: u1,
        // Continuous mode selection for regular conversions
        RCONT: u1,
        // Launch regular conversion synchronously with DFSDM0
        RSYNC: u1,
        // Reserved
        _reserved_20: u1,
        // DMA channel enabled to read data for the regular conversion
        RDMAEN: u1,
        // Reserved
        _reserved_22: u2,
        // Regular channel selection
        RCH: u3,
        // Reserved
        _reserved_27: u2,
        // Fast conversion mode selection for regular conversions
        FAST: u1,
        // Analog watchdog fast mode select
        AWFSEL: u1,
        // Reserved
        _reserved_31: u1,
    },
    // control register 2
    DFSDM_FLT0CR2: packed struct(u32) {
        // Injected end of conversion interrupt enable
        JEOCIE: u1,
        // Regular end of conversion interrupt enable
        REOCIE: u1,
        // Injected data overrun interrupt enable
        JOVRIE: u1,
        // Regular data overrun interrupt enable
        ROVRIE: u1,
        // Analog watchdog interrupt enable
        AWDIE: u1,
        // Short-circuit detector interrupt enable
        SCDIE: u1,
        // Clock absence interrupt enable
        CKABIE: u1,
        // Reserved
        _reserved_7: u1,
        // Extremes detector channel selection
        EXCH: u8,
        // Analog watchdog channel selection
        AWDCH: u8,
        // Reserved
        _reserved_24: u8,
    },
    // interrupt and status register
    DFSDM_FLT0ISR: packed struct(u32) {
        // End of injected conversion flag
        JEOCF: u1,
        // End of regular conversion flag
        REOCF: u1,
        // Injected conversion overrun flag
        JOVRF: u1,
        // Regular conversion overrun flag
        ROVRF: u1,
        // Analog watchdog
        AWDF: u1,
        // Reserved
        _reserved_5: u8,
        // Injected conversion in progress status
        JCIP: u1,
        // Regular conversion in progress status
        RCIP: u1,
        // Reserved
        _reserved_15: u1,
        // Clock absence flag
        CKABF: u8,
        // short-circuit detector flag
        SCDF: u8,
    },
    // interrupt flag clear register
    DFSDM_FLT0ICR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Clear the injected conversion overrun flag
        CLRJOVRF: u1,
        // Clear the regular conversion overrun flag
        CLRROVRF: u1,
        // Reserved
        _reserved_4: u12,
        // Clear the clock absence flag
        CLRCKABF: u8,
        // Clear the short-circuit detector flag
        CLRSCDF: u8,
    },
    // injected channel group selection register
    DFSDM_FLT0JCHGR: packed struct(u32) {
        // Injected channel group selection
        JCHG: u8,
        // Reserved
        _reserved_8: u24,
    },
    // filter control register
    DFSDM_FLT0FCR: packed struct(u32) {
        // Integrator oversampling ratio (averaging length)
        IOSR: u8,
        // Reserved
        _reserved_8: u8,
        // Sinc filter oversampling ratio (decimation rate)
        FOSR: u10,
        // Reserved
        _reserved_26: u3,
        // Sinc filter order
        FORD: u3,
    },
    // data register for injected group
    DFSDM_FLT0JDATAR: packed struct(u32) {
        // Injected channel most recently converted
        JDATACH: u3,
        // Reserved
        _reserved_3: u5,
        // Injected group conversion data
        JDATA: u24,
    },
    // data register for the regular channel
    DFSDM_FLT0RDATAR: packed struct(u32) {
        // Regular channel most recently converted
        RDATACH: u3,
        // Reserved
        _reserved_3: u1,
        // Regular channel pending data
        RPEND: u1,
        // Reserved
        _reserved_5: u3,
        // Regular channel conversion data
        RDATA: u24,
    },
    // analog watchdog high threshold register
    DFSDM_FLT0AWHTR: packed struct(u32) {
        // Break signal assignment to analog watchdog high threshold event
        BKAWH: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog high threshold
        AWHT: u24,
    },
    // analog watchdog low threshold register
    DFSDM_FLT0AWLTR: packed struct(u32) {
        // Break signal assignment to analog watchdog low threshold event
        BKAWL: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog low threshold
        AWLT: u24,
    },
    // analog watchdog status register
    DFSDM_FLT0AWSR: packed struct(u32) {
        // Analog watchdog low threshold flag
        AWLTF: u8,
        // Analog watchdog high threshold flag
        AWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // analog watchdog clear flag register
    DFSDM_FLT0AWCFR: packed struct(u32) {
        // Clear the analog watchdog low threshold flag
        CLRAWLTF: u8,
        // Clear the analog watchdog high threshold flag
        CLRAWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // Extremes detector maximum register
    DFSDM_FLT0EXMAX: packed struct(u32) {
        // Extremes detector maximum data channel
        EXMAXCH: u3,
        // Reserved
        _reserved_3: u5,
        // Extremes detector maximum value
        EXMAX: u24,
    },
    // Extremes detector minimum register
    DFSDM_FLT0EXMIN: packed struct(u32) {
        // Extremes detector minimum data channel
        EXMINCH: u3,
        // Reserved
        _reserved_3: u5,
        // EXMIN
        EXMIN: u24,
    },
    // conversion timer register
    DFSDM_FLT0CNVTIMR: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // 28-bit timer counting conversion time t = CNVCNT[27:0] / fDFSDM_CKIN
        CNVCNT: u28,
    },
    // control register 1
    DFSDM_FLT1CR1: packed struct(u32) {
        // DFSDM enable
        DFEN: u1,
        // Start a conversion of the injected group of channels
        JSWSTART: u1,
        // Reserved
        _reserved_2: u1,
        // Launch an injected conversion
        // synchronously with the DFSDM0 JSWSTART
        // trigger
        JSYNC: u1,
        // Scanning conversion mode for injected conversions
        JSCAN: u1,
        // DMA channel enabled to read data for the injected channel group
        JDMAEN: u1,
        // Reserved
        _reserved_6: u2,
        // Trigger signal selection for launching injected conversions
        JEXTSEL: u3,
        // Reserved
        _reserved_11: u2,
        // Trigger enable and trigger edge selection for injected conversions
        JEXTEN: u2,
        // Reserved
        _reserved_15: u2,
        // Software start of a conversion on the regular channel
        RSWSTART: u1,
        // Continuous mode selection for regular conversions
        RCONT: u1,
        // Launch regular conversion synchronously with DFSDM0
        RSYNC: u1,
        // Reserved
        _reserved_20: u1,
        // DMA channel enabled to read data for the regular conversion
        RDMAEN: u1,
        // Reserved
        _reserved_22: u2,
        // Regular channel selection
        RCH: u3,
        // Reserved
        _reserved_27: u2,
        // Fast conversion mode selection for regular conversions
        FAST: u1,
        // Analog watchdog fast mode select
        AWFSEL: u1,
        // Reserved
        _reserved_31: u1,
    },
    // control register 2
    DFSDM_FLT1CR2: packed struct(u32) {
        // Injected end of conversion interrupt enable
        JEOCIE: u1,
        // Regular end of conversion interrupt enable
        REOCIE: u1,
        // Injected data overrun interrupt enable
        JOVRIE: u1,
        // Regular data overrun interrupt enable
        ROVRIE: u1,
        // Analog watchdog interrupt enable
        AWDIE: u1,
        // Short-circuit detector interrupt enable
        SCDIE: u1,
        // Clock absence interrupt enable
        CKABIE: u1,
        // Reserved
        _reserved_7: u1,
        // Extremes detector channel selection
        EXCH: u8,
        // Analog watchdog channel selection
        AWDCH: u8,
        // Reserved
        _reserved_24: u8,
    },
    // interrupt and status register
    DFSDM_FLT1ISR: packed struct(u32) {
        // End of injected conversion flag
        JEOCF: u1,
        // End of regular conversion flag
        REOCF: u1,
        // Injected conversion overrun flag
        JOVRF: u1,
        // Regular conversion overrun flag
        ROVRF: u1,
        // Analog watchdog
        AWDF: u1,
        // Reserved
        _reserved_5: u8,
        // Injected conversion in progress status
        JCIP: u1,
        // Regular conversion in progress status
        RCIP: u1,
        // Reserved
        _reserved_15: u1,
        // Clock absence flag
        CKABF: u8,
        // short-circuit detector flag
        SCDF: u8,
    },
    // interrupt flag clear register
    DFSDM_FLT1ICR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Clear the injected conversion overrun flag
        CLRJOVRF: u1,
        // Clear the regular conversion overrun flag
        CLRROVRF: u1,
        // Reserved
        _reserved_4: u12,
        // Clear the clock absence flag
        CLRCKABF: u8,
        // Clear the short-circuit detector flag
        CLRSCDF: u8,
    },
    // injected channel group selection register
    DFSDM_FLT1CHGR: packed struct(u32) {
        // Injected channel group selection
        JCHG: u8,
        // Reserved
        _reserved_8: u24,
    },
    // filter control register
    DFSDM_FLT1FCR: packed struct(u32) {
        // Integrator oversampling ratio (averaging length)
        IOSR: u8,
        // Reserved
        _reserved_8: u8,
        // Sinc filter oversampling ratio (decimation rate)
        FOSR: u10,
        // Reserved
        _reserved_26: u3,
        // Sinc filter order
        FORD: u3,
    },
    // data register for injected group
    DFSDM_FLT1JDATAR: packed struct(u32) {
        // Injected channel most recently converted
        JDATACH: u3,
        // Reserved
        _reserved_3: u5,
        // Injected group conversion data
        JDATA: u24,
    },
    // data register for the regular channel
    DFSDM_FLT1RDATAR: packed struct(u32) {
        // Regular channel most recently converted
        RDATACH: u3,
        // Reserved
        _reserved_3: u1,
        // Regular channel pending data
        RPEND: u1,
        // Reserved
        _reserved_5: u3,
        // Regular channel conversion data
        RDATA: u24,
    },
    // analog watchdog high threshold register
    DFSDM_FLT1AWHTR: packed struct(u32) {
        // Break signal assignment to analog watchdog high threshold event
        BKAWH: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog high threshold
        AWHT: u24,
    },
    // analog watchdog low threshold register
    DFSDM_FLT1AWLTR: packed struct(u32) {
        // Break signal assignment to analog watchdog low threshold event
        BKAWL: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog low threshold
        AWLT: u24,
    },
    // analog watchdog status register
    DFSDM_FLT1AWSR: packed struct(u32) {
        // Analog watchdog low threshold flag
        AWLTF: u8,
        // Analog watchdog high threshold flag
        AWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // analog watchdog clear flag register
    DFSDM_FLT1AWCFR: packed struct(u32) {
        // Clear the analog watchdog low threshold flag
        CLRAWLTF: u8,
        // Clear the analog watchdog high threshold flag
        CLRAWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // Extremes detector maximum register
    DFSDM_FLT1EXMAX: packed struct(u32) {
        // Extremes detector maximum data channel
        EXMAXCH: u3,
        // Reserved
        _reserved_3: u5,
        // Extremes detector maximum value
        EXMAX: u24,
    },
    // Extremes detector minimum register
    DFSDM_FLT1EXMIN: packed struct(u32) {
        // Extremes detector minimum data channel
        EXMINCH: u3,
        // Reserved
        _reserved_3: u5,
        // EXMIN
        EXMIN: u24,
    },
    // conversion timer register
    DFSDM_FLT1CNVTIMR: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // 28-bit timer counting conversion time t = CNVCNT[27:0] / fDFSDM_CKIN
        CNVCNT: u28,
    },
    // control register 1
    DFSDM_FLT2CR1: packed struct(u32) {
        // DFSDM enable
        DFEN: u1,
        // Start a conversion of the injected group of channels
        JSWSTART: u1,
        // Reserved
        _reserved_2: u1,
        // Launch an injected conversion
        // synchronously with the DFSDM0 JSWSTART
        // trigger
        JSYNC: u1,
        // Scanning conversion mode for injected conversions
        JSCAN: u1,
        // DMA channel enabled to read data for the injected channel group
        JDMAEN: u1,
        // Reserved
        _reserved_6: u2,
        // Trigger signal selection for launching injected conversions
        JEXTSEL: u3,
        // Reserved
        _reserved_11: u2,
        // Trigger enable and trigger edge selection for injected conversions
        JEXTEN: u2,
        // Reserved
        _reserved_15: u2,
        // Software start of a conversion on the regular channel
        RSWSTART: u1,
        // Continuous mode selection for regular conversions
        RCONT: u1,
        // Launch regular conversion synchronously with DFSDM0
        RSYNC: u1,
        // Reserved
        _reserved_20: u1,
        // DMA channel enabled to read data for the regular conversion
        RDMAEN: u1,
        // Reserved
        _reserved_22: u2,
        // Regular channel selection
        RCH: u3,
        // Reserved
        _reserved_27: u2,
        // Fast conversion mode selection for regular conversions
        FAST: u1,
        // Analog watchdog fast mode select
        AWFSEL: u1,
        // Reserved
        _reserved_31: u1,
    },
    // control register 2
    DFSDM_FLT2CR2: packed struct(u32) {
        // Injected end of conversion interrupt enable
        JEOCIE: u1,
        // Regular end of conversion interrupt enable
        REOCIE: u1,
        // Injected data overrun interrupt enable
        JOVRIE: u1,
        // Regular data overrun interrupt enable
        ROVRIE: u1,
        // Analog watchdog interrupt enable
        AWDIE: u1,
        // Short-circuit detector interrupt enable
        SCDIE: u1,
        // Clock absence interrupt enable
        CKABIE: u1,
        // Reserved
        _reserved_7: u1,
        // Extremes detector channel selection
        EXCH: u8,
        // Analog watchdog channel selection
        AWDCH: u8,
        // Reserved
        _reserved_24: u8,
    },
    // interrupt and status register
    DFSDM_FLT2ISR: packed struct(u32) {
        // End of injected conversion flag
        JEOCF: u1,
        // End of regular conversion flag
        REOCF: u1,
        // Injected conversion overrun flag
        JOVRF: u1,
        // Regular conversion overrun flag
        ROVRF: u1,
        // Analog watchdog
        AWDF: u1,
        // Reserved
        _reserved_5: u8,
        // Injected conversion in progress status
        JCIP: u1,
        // Regular conversion in progress status
        RCIP: u1,
        // Reserved
        _reserved_15: u1,
        // Clock absence flag
        CKABF: u8,
        // short-circuit detector flag
        SCDF: u8,
    },
    // interrupt flag clear register
    DFSDM_FLT2ICR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Clear the injected conversion overrun flag
        CLRJOVRF: u1,
        // Clear the regular conversion overrun flag
        CLRROVRF: u1,
        // Reserved
        _reserved_4: u12,
        // Clear the clock absence flag
        CLRCKABF: u8,
        // Clear the short-circuit detector flag
        CLRSCDF: u8,
    },
    // injected channel group selection register
    DFSDM_FLT2JCHGR: packed struct(u32) {
        // Injected channel group selection
        JCHG: u8,
        // Reserved
        _reserved_8: u24,
    },
    // filter control register
    DFSDM_FLT2FCR: packed struct(u32) {
        // Integrator oversampling ratio (averaging length)
        IOSR: u8,
        // Reserved
        _reserved_8: u8,
        // Sinc filter oversampling ratio (decimation rate)
        FOSR: u10,
        // Reserved
        _reserved_26: u3,
        // Sinc filter order
        FORD: u3,
    },
    // data register for injected group
    DFSDM_FLT2JDATAR: packed struct(u32) {
        // Injected channel most recently converted
        JDATACH: u3,
        // Reserved
        _reserved_3: u5,
        // Injected group conversion data
        JDATA: u24,
    },
    // data register for the regular channel
    DFSDM_FLT2RDATAR: packed struct(u32) {
        // Regular channel most recently converted
        RDATACH: u3,
        // Reserved
        _reserved_3: u1,
        // Regular channel pending data
        RPEND: u1,
        // Reserved
        _reserved_5: u3,
        // Regular channel conversion data
        RDATA: u24,
    },
    // analog watchdog high threshold register
    DFSDM_FLT2AWHTR: packed struct(u32) {
        // Break signal assignment to analog watchdog high threshold event
        BKAWH: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog high threshold
        AWHT: u24,
    },
    // analog watchdog low threshold register
    DFSDM_FLT2AWLTR: packed struct(u32) {
        // Break signal assignment to analog watchdog low threshold event
        BKAWL: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog low threshold
        AWLT: u24,
    },
    // analog watchdog status register
    DFSDM_FLT2AWSR: packed struct(u32) {
        // Analog watchdog low threshold flag
        AWLTF: u8,
        // Analog watchdog high threshold flag
        AWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // analog watchdog clear flag register
    DFSDM_FLT2AWCFR: packed struct(u32) {
        // Clear the analog watchdog low threshold flag
        CLRAWLTF: u8,
        // Clear the analog watchdog high threshold flag
        CLRAWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // Extremes detector maximum register
    DFSDM_FLT2EXMAX: packed struct(u32) {
        // Extremes detector maximum data channel
        EXMAXCH: u3,
        // Reserved
        _reserved_3: u5,
        // Extremes detector maximum value
        EXMAX: u24,
    },
    // Extremes detector minimum register
    DFSDM_FLT2EXMIN: packed struct(u32) {
        // Extremes detector minimum data channel
        EXMINCH: u3,
        // Reserved
        _reserved_3: u5,
        // EXMIN
        EXMIN: u24,
    },
    // conversion timer register
    DFSDM_FLT2CNVTIMR: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // 28-bit timer counting conversion time t = CNVCNT[27:0] / fDFSDM_CKIN
        CNVCNT: u28,
    },
    // control register 1
    DFSDM_FLT3CR1: packed struct(u32) {
        // DFSDM enable
        DFEN: u1,
        // Start a conversion of the injected group of channels
        JSWSTART: u1,
        // Reserved
        _reserved_2: u1,
        // Launch an injected conversion
        // synchronously with the DFSDM0 JSWSTART
        // trigger
        JSYNC: u1,
        // Scanning conversion mode for injected conversions
        JSCAN: u1,
        // DMA channel enabled to read data for the injected channel group
        JDMAEN: u1,
        // Reserved
        _reserved_6: u2,
        // Trigger signal selection for launching injected conversions
        JEXTSEL: u3,
        // Reserved
        _reserved_11: u2,
        // Trigger enable and trigger edge selection for injected conversions
        JEXTEN: u2,
        // Reserved
        _reserved_15: u2,
        // Software start of a conversion on the regular channel
        RSWSTART: u1,
        // Continuous mode selection for regular conversions
        RCONT: u1,
        // Launch regular conversion synchronously with DFSDM0
        RSYNC: u1,
        // Reserved
        _reserved_20: u1,
        // DMA channel enabled to read data for the regular conversion
        RDMAEN: u1,
        // Reserved
        _reserved_22: u2,
        // Regular channel selection
        RCH: u3,
        // Reserved
        _reserved_27: u2,
        // Fast conversion mode selection for regular conversions
        FAST: u1,
        // Analog watchdog fast mode select
        AWFSEL: u1,
        // Reserved
        _reserved_31: u1,
    },
    // control register 2
    DFSDM_FLT3CR2: packed struct(u32) {
        // Injected end of conversion interrupt enable
        JEOCIE: u1,
        // Regular end of conversion interrupt enable
        REOCIE: u1,
        // Injected data overrun interrupt enable
        JOVRIE: u1,
        // Regular data overrun interrupt enable
        ROVRIE: u1,
        // Analog watchdog interrupt enable
        AWDIE: u1,
        // Short-circuit detector interrupt enable
        SCDIE: u1,
        // Clock absence interrupt enable
        CKABIE: u1,
        // Reserved
        _reserved_7: u1,
        // Extremes detector channel selection
        EXCH: u8,
        // Analog watchdog channel selection
        AWDCH: u8,
        // Reserved
        _reserved_24: u8,
    },
    // interrupt and status register
    DFSDM_FLT3ISR: packed struct(u32) {
        // End of injected conversion flag
        JEOCF: u1,
        // End of regular conversion flag
        REOCF: u1,
        // Injected conversion overrun flag
        JOVRF: u1,
        // Regular conversion overrun flag
        ROVRF: u1,
        // Analog watchdog
        AWDF: u1,
        // Reserved
        _reserved_5: u8,
        // Injected conversion in progress status
        JCIP: u1,
        // Regular conversion in progress status
        RCIP: u1,
        // Reserved
        _reserved_15: u1,
        // Clock absence flag
        CKABF: u8,
        // short-circuit detector flag
        SCDF: u8,
    },
    // interrupt flag clear register
    DFSDM_FLT3ICR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Clear the injected conversion overrun flag
        CLRJOVRF: u1,
        // Clear the regular conversion overrun flag
        CLRROVRF: u1,
        // Reserved
        _reserved_4: u12,
        // Clear the clock absence flag
        CLRCKABF: u8,
        // Clear the short-circuit detector flag
        CLRSCDF: u8,
    },
    // injected channel group selection register
    DFSDM_FLT3JCHGR: packed struct(u32) {
        // Injected channel group selection
        JCHG: u8,
        // Reserved
        _reserved_8: u24,
    },
    // filter control register
    DFSDM_FLT3FCR: packed struct(u32) {
        // Integrator oversampling ratio (averaging length)
        IOSR: u8,
        // Reserved
        _reserved_8: u8,
        // Sinc filter oversampling ratio (decimation rate)
        FOSR: u10,
        // Reserved
        _reserved_26: u3,
        // Sinc filter order
        FORD: u3,
    },
    // data register for injected group
    DFSDM_FLT3JDATAR: packed struct(u32) {
        // Injected channel most recently converted
        JDATACH: u3,
        // Reserved
        _reserved_3: u5,
        // Injected group conversion data
        JDATA: u24,
    },
    // data register for the regular channel
    DFSDM_FLT3RDATAR: packed struct(u32) {
        // Regular channel most recently converted
        RDATACH: u3,
        // Reserved
        _reserved_3: u1,
        // Regular channel pending data
        RPEND: u1,
        // Reserved
        _reserved_5: u3,
        // Regular channel conversion data
        RDATA: u24,
    },
    // analog watchdog high threshold register
    DFSDM_FLT3AWHTR: packed struct(u32) {
        // Break signal assignment to analog watchdog high threshold event
        BKAWH: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog high threshold
        AWHT: u24,
    },
    // analog watchdog low threshold register
    DFSDM_FLT3AWLTR: packed struct(u32) {
        // Break signal assignment to analog watchdog low threshold event
        BKAWL: u4,
        // Reserved
        _reserved_4: u4,
        // Analog watchdog low threshold
        AWLT: u24,
    },
    // analog watchdog status register
    DFSDM_FLT3AWSR: packed struct(u32) {
        // Analog watchdog low threshold flag
        AWLTF: u8,
        // Analog watchdog high threshold flag
        AWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // analog watchdog clear flag register
    DFSDM_FLT3AWCFR: packed struct(u32) {
        // Clear the analog watchdog low threshold flag
        CLRAWLTF: u8,
        // Clear the analog watchdog high threshold flag
        CLRAWHTF: u8,
        // Reserved
        _reserved_16: u16,
    },
    // Extremes detector maximum register
    DFSDM_FLT3EXMAX: packed struct(u32) {
        // Extremes detector maximum data channel
        EXMAXCH: u3,
        // Reserved
        _reserved_3: u5,
        // Extremes detector maximum value
        EXMAX: u24,
    },
    // Extremes detector minimum register
    DFSDM_FLT3EXMIN: packed struct(u32) {
        // Extremes detector minimum data channel
        EXMINCH: u3,
        // Reserved
        _reserved_3: u5,
        // EXMIN
        EXMIN: u24,
    },
    // conversion timer register
    DFSDM_FLT3CNVTIMR: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // 28-bit timer counting conversion time t = CNVCNT[27:0] / fDFSDM_CKIN
        CNVCNT: u28,
    },
};

pub const DFSDM_BASE_ADDRESS: usize = 0x40017000;
pub const DFSDM_REGISTERS: *volatile DFSDM = @ptrFromInt(DFSDM_BASE_ADDRESS);
