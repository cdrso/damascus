// External interrupt/event controller
pub const EXTI = struct {
    // EXTI rising trigger selection register
    RTSR1: packed struct(u32) {
        // Rising trigger event configuration bit of Configurable Event input
        TR0: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR1: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR2: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR3: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR4: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR5: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR6: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR7: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR8: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR9: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR10: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR11: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR12: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR13: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR14: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR15: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR16: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR17: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR18: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR19: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR20: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR21: u1,
        // Reserved
        _reserved_22: u10,
    },
    // EXTI falling trigger selection register
    FTSR1: packed struct(u32) {
        // Rising trigger event configuration bit of Configurable Event input
        TR0: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR1: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR2: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR3: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR4: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR5: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR6: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR7: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR8: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR9: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR10: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR11: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR12: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR13: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR14: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR15: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR16: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR17: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR18: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR19: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR20: u1,
        // Rising trigger event configuration bit of Configurable Event input
        TR21: u1,
        // Reserved
        _reserved_22: u10,
    },
    // EXTI software interrupt event register
    SWIER1: packed struct(u32) {
        // Rising trigger event configuration bit of Configurable Event input
        SWIER0: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER1: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER2: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER3: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER4: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER5: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER6: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER7: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER8: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER9: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER10: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER11: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER12: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER13: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER14: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER15: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER16: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER17: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER18: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER19: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER20: u1,
        // Rising trigger event configuration bit of Configurable Event input
        SWIER21: u1,
        // Reserved
        _reserved_22: u10,
    },
    // EXTI D3 pending mask register
    D3PMR1: packed struct(u32) {
        // Rising trigger event configuration bit of Configurable Event input
        MR0: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR1: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR2: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR3: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR4: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR5: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR6: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR7: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR8: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR9: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR10: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR11: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR12: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR13: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR14: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR15: u1,
        // Reserved
        _reserved_16: u3,
        // Rising trigger event configuration bit of Configurable Event input
        MR19: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR20: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR21: u1,
        // Reserved
        _reserved_22: u3,
        // Rising trigger event configuration bit of Configurable Event input
        MR25: u1,
        // Reserved
        _reserved_26: u6,
    },
    // EXTI D3 pending clear selection register low
    D3PCR1L: packed struct(u32) {
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS0: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS1: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS2: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS3: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS4: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS5: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS6: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS7: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS8: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS9: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS10: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS11: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS12: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS13: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS14: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // (n/2)
        PCS15: u2,
    },
    // EXTI D3 pending clear selection register high
    D3PCR1H: packed struct(u32) {
        // Reserved
        _reserved_0: u6,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // ((n+32)/2)
        PCS19: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // ((n+32)/2)
        PCS20: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // ((n+32)/2)
        PCS21: u2,
        // Reserved
        _reserved_12: u6,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // ((n+32)/2)
        PCS25: u2,
        // Reserved
        _reserved_20: u12,
    },
    // EXTI rising trigger selection register
    RTSR2: packed struct(u32) {
        // Reserved
        _reserved_0: u17,
        // Rising trigger event configuration bit of Configurable Event input x+32
        TR49: u1,
        // Reserved
        _reserved_18: u1,
        // Rising trigger event configuration bit of Configurable Event input x+32
        TR51: u1,
        // Reserved
        _reserved_20: u12,
    },
    // EXTI falling trigger selection register
    FTSR2: packed struct(u32) {
        // Reserved
        _reserved_0: u17,
        // Falling trigger event configuration bit of Configurable Event input x+32
        TR49: u1,
        // Reserved
        _reserved_18: u1,
        // Falling trigger event configuration bit of Configurable Event input x+32
        TR51: u1,
        // Reserved
        _reserved_20: u12,
    },
    // EXTI software interrupt event register
    SWIER2: packed struct(u32) {
        // Reserved
        _reserved_0: u17,
        // Software interrupt on line x+32
        SWIER49: u1,
        // Reserved
        _reserved_18: u1,
        // Software interrupt on line x+32
        SWIER51: u1,
        // Reserved
        _reserved_20: u12,
    },
    // EXTI D3 pending mask register
    D3PMR2: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // D3 Pending Mask on Event input x+32
        MR34: u1,
        // D3 Pending Mask on Event input x+32
        MR35: u1,
        // Reserved
        _reserved_4: u5,
        // D3 Pending Mask on Event input x+32
        MR41: u1,
        // Reserved
        _reserved_10: u6,
        // D3 Pending Mask on Event input x+32
        MR48: u1,
        // D3 Pending Mask on Event input x+32
        MR49: u1,
        // D3 Pending Mask on Event input x+32
        MR50: u1,
        // D3 Pending Mask on Event input x+32
        MR51: u1,
        // D3 Pending Mask on Event input x+32
        MR52: u1,
        // D3 Pending Mask on Event input x+32
        MR53: u1,
        // Reserved
        _reserved_22: u10,
    },
    // EXTI D3 pending clear selection register low
    D3PCR2L: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // ((n+64)/2)
        PCS34: u2,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // ((n+64)/2)
        PCS35: u2,
        // Reserved
        _reserved_8: u10,
        // D3 Pending request clear input signal
        // selection on Event input x = truncate
        // ((n+64)/2)
        PCS41: u2,
        // Reserved
        _reserved_20: u12,
    },
    // EXTI D3 pending clear selection register high
    D3PCR2H: packed struct(u32) {
        // Pending request clear input signal
        // selection on Event input x= truncate
        // ((n+96)/2)
        PCS48: u2,
        // Pending request clear input signal
        // selection on Event input x= truncate
        // ((n+96)/2)
        PCS49: u2,
        // Pending request clear input signal
        // selection on Event input x= truncate
        // ((n+96)/2)
        PCS50: u2,
        // Pending request clear input signal
        // selection on Event input x= truncate
        // ((n+96)/2)
        PCS51: u2,
        // Pending request clear input signal
        // selection on Event input x= truncate
        // ((n+96)/2)
        PCS52: u2,
        // Pending request clear input signal
        // selection on Event input x= truncate
        // ((n+96)/2)
        PCS53: u2,
        // Reserved
        _reserved_12: u20,
    },
    // EXTI rising trigger selection register
    RTSR3: packed struct(u32) {
        // Reserved
        _reserved_0: u18,
        // Rising trigger event configuration bit of Configurable Event input x+64
        TR82: u1,
        // Reserved
        _reserved_19: u1,
        // Rising trigger event configuration bit of Configurable Event input x+64
        TR84: u1,
        // Rising trigger event configuration bit of Configurable Event input x+64
        TR85: u1,
        // Rising trigger event configuration bit of Configurable Event input x+64
        TR86: u1,
        // Reserved
        _reserved_23: u9,
    },
    // EXTI falling trigger selection register
    FTSR3: packed struct(u32) {
        // Reserved
        _reserved_0: u18,
        // Falling trigger event configuration bit of Configurable Event input x+64
        TR82: u1,
        // Reserved
        _reserved_19: u1,
        // Falling trigger event configuration bit of Configurable Event input x+64
        TR84: u1,
        // Falling trigger event configuration bit of Configurable Event input x+64
        TR85: u1,
        // Falling trigger event configuration bit of Configurable Event input x+64
        TR86: u1,
        // Reserved
        _reserved_23: u9,
    },
    // EXTI software interrupt event register
    SWIER3: packed struct(u32) {
        // Reserved
        _reserved_0: u18,
        // Software interrupt on line x+64
        SWIER82: u1,
        // Reserved
        _reserved_19: u1,
        // Software interrupt on line x+64
        SWIER84: u1,
        // Software interrupt on line x+64
        SWIER85: u1,
        // Software interrupt on line x+64
        SWIER86: u1,
        // Reserved
        _reserved_23: u9,
    },
    // EXTI D3 pending mask register
    D3PMR3: packed struct(u32) {
        // Reserved
        _reserved_0: u24,
        // D3 Pending Mask on Event input x+64
        MR88: u1,
        // Reserved
        _reserved_25: u7,
    },
    // EXTI D3 pending clear selection register high
    D3PCR3H: packed struct(u32) {
        // Reserved
        _reserved_0: u18,
        // D3 Pending request clear input signal
        // selection on Event input x= truncate
        // N+160/2
        PCS88: u2,
        // Reserved
        _reserved_20: u12,
    },
    // EXTI interrupt mask register
    CPUIMR1: packed struct(u32) {
        // Rising trigger event configuration bit of Configurable Event input
        MR0: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR1: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR2: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR3: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR4: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR5: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR6: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR7: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR8: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR9: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR10: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR11: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR12: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR13: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR14: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR15: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR16: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR17: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR18: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR19: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR20: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR21: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR22: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR23: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR24: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR25: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR26: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR27: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR28: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR29: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR30: u1,
        // Rising trigger event configuration bit of Configurable Event input
        MR31: u1,
    },
    // EXTI event mask register
    CPUEMR1: packed struct(u32) {
        // CPU Event mask on Event input x
        MR0: u1,
        // CPU Event mask on Event input x
        MR1: u1,
        // CPU Event mask on Event input x
        MR2: u1,
        // CPU Event mask on Event input x
        MR3: u1,
        // CPU Event mask on Event input x
        MR4: u1,
        // CPU Event mask on Event input x
        MR5: u1,
        // CPU Event mask on Event input x
        MR6: u1,
        // CPU Event mask on Event input x
        MR7: u1,
        // CPU Event mask on Event input x
        MR8: u1,
        // CPU Event mask on Event input x
        MR9: u1,
        // CPU Event mask on Event input x
        MR10: u1,
        // CPU Event mask on Event input x
        MR11: u1,
        // CPU Event mask on Event input x
        MR12: u1,
        // CPU Event mask on Event input x
        MR13: u1,
        // CPU Event mask on Event input x
        MR14: u1,
        // CPU Event mask on Event input x
        MR15: u1,
        // CPU Event mask on Event input x
        MR16: u1,
        // CPU Event mask on Event input x
        MR17: u1,
        // CPU Event mask on Event input x
        MR18: u1,
        // CPU Event mask on Event input x
        MR19: u1,
        // CPU Event mask on Event input x
        MR20: u1,
        // CPU Event mask on Event input x
        MR21: u1,
        // CPU Event mask on Event input x
        MR22: u1,
        // CPU Event mask on Event input x
        MR23: u1,
        // CPU Event mask on Event input x
        MR24: u1,
        // CPU Event mask on Event input x
        MR25: u1,
        // CPU Event mask on Event input x
        MR26: u1,
        // CPU Event mask on Event input x
        MR27: u1,
        // CPU Event mask on Event input x
        MR28: u1,
        // CPU Event mask on Event input x
        MR29: u1,
        // CPU Event mask on Event input x
        MR30: u1,
        // CPU Event mask on Event input x
        MR31: u1,
    },
    // EXTI pending register
    CPUPR1: packed struct(u32) {
        // CPU Event mask on Event input x
        PR0: u1,
        // CPU Event mask on Event input x
        PR1: u1,
        // CPU Event mask on Event input x
        PR2: u1,
        // CPU Event mask on Event input x
        PR3: u1,
        // CPU Event mask on Event input x
        PR4: u1,
        // CPU Event mask on Event input x
        PR5: u1,
        // CPU Event mask on Event input x
        PR6: u1,
        // CPU Event mask on Event input x
        PR7: u1,
        // CPU Event mask on Event input x
        PR8: u1,
        // CPU Event mask on Event input x
        PR9: u1,
        // CPU Event mask on Event input x
        PR10: u1,
        // CPU Event mask on Event input x
        PR11: u1,
        // CPU Event mask on Event input x
        PR12: u1,
        // CPU Event mask on Event input x
        PR13: u1,
        // CPU Event mask on Event input x
        PR14: u1,
        // CPU Event mask on Event input x
        PR15: u1,
        // CPU Event mask on Event input x
        PR16: u1,
        // CPU Event mask on Event input x
        PR17: u1,
        // CPU Event mask on Event input x
        PR18: u1,
        // CPU Event mask on Event input x
        PR19: u1,
        // CPU Event mask on Event input x
        PR20: u1,
        // CPU Event mask on Event input x
        PR21: u1,
        // Reserved
        _reserved_22: u10,
    },
    // EXTI interrupt mask register
    CPUIMR2: packed struct(u32) {
        // CPU Interrupt Mask on Direct Event input x+32
        MR0: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR1: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR2: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR3: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR4: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR5: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR6: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR7: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR8: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR9: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR10: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR11: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR12: u1,
        // Reserved
        _reserved_13: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR14: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR15: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR16: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR17: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR18: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR19: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR20: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR21: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR22: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR23: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR24: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR25: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR26: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR27: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR28: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR29: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR30: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR31: u1,
    },
    // EXTI event mask register
    CPUEMR2: packed struct(u32) {
        // CPU Interrupt Mask on Direct Event input x+32
        MR32: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR33: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR34: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR35: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR36: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR37: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR38: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR39: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR40: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR41: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR42: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR43: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR44: u1,
        // Reserved
        _reserved_13: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR46: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR47: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR48: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR49: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR50: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR51: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR52: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR53: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR54: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR55: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR56: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR57: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR58: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR59: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR60: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR61: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR62: u1,
        // CPU Interrupt Mask on Direct Event input x+32
        MR63: u1,
    },
    // EXTI pending register
    CPUPR2: packed struct(u32) {
        // Reserved
        _reserved_0: u17,
        // Configurable event inputs x+32 Pending bit
        PR49: u1,
        // Reserved
        _reserved_18: u1,
        // Configurable event inputs x+32 Pending bit
        PR51: u1,
        // Reserved
        _reserved_20: u12,
    },
    // EXTI interrupt mask register
    CPUIMR3: packed struct(u32) {
        // CPU Interrupt Mask on Direct Event input x+64
        MR64: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR65: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR66: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR67: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR68: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR69: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR70: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR71: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR72: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR73: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR74: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR75: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR76: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR77: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR78: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR79: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR80: u1,
        // Reserved
        _reserved_17: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR82: u1,
        // Reserved
        _reserved_19: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR84: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR85: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR86: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR87: u1,
        // CPU Interrupt Mask on Direct Event input x+64
        MR88: u1,
        // Reserved
        _reserved_25: u7,
    },
    // EXTI event mask register
    CPUEMR3: packed struct(u32) {
        // CPU Event mask on Event input x+64
        MR64: u1,
        // CPU Event mask on Event input x+64
        MR65: u1,
        // CPU Event mask on Event input x+64
        MR66: u1,
        // CPU Event mask on Event input x+64
        MR67: u1,
        // CPU Event mask on Event input x+64
        MR68: u1,
        // CPU Event mask on Event input x+64
        MR69: u1,
        // CPU Event mask on Event input x+64
        MR70: u1,
        // CPU Event mask on Event input x+64
        MR71: u1,
        // CPU Event mask on Event input x+64
        MR72: u1,
        // CPU Event mask on Event input x+64
        MR73: u1,
        // CPU Event mask on Event input x+64
        MR74: u1,
        // CPU Event mask on Event input x+64
        MR75: u1,
        // CPU Event mask on Event input x+64
        MR76: u1,
        // CPU Event mask on Event input x+64
        MR77: u1,
        // CPU Event mask on Event input x+64
        MR78: u1,
        // CPU Event mask on Event input x+64
        MR79: u1,
        // CPU Event mask on Event input x+64
        MR80: u1,
        // Reserved
        _reserved_17: u1,
        // CPU Event mask on Event input x+64
        MR82: u1,
        // Reserved
        _reserved_19: u1,
        // CPU Event mask on Event input x+64
        MR84: u1,
        // CPU Event mask on Event input x+64
        MR85: u1,
        // CPU Event mask on Event input x+64
        MR86: u1,
        // CPU Event mask on Event input x+64
        MR87: u1,
        // CPU Event mask on Event input x+64
        MR88: u1,
        // Reserved
        _reserved_25: u7,
    },
    // EXTI pending register
    CPUPR3: packed struct(u32) {
        // Reserved
        _reserved_0: u18,
        // Configurable event inputs x+64 Pending bit
        PR82: u1,
        // Reserved
        _reserved_19: u1,
        // Configurable event inputs x+64 Pending bit
        PR84: u1,
        // Configurable event inputs x+64 Pending bit
        PR85: u1,
        // Configurable event inputs x+64 Pending bit
        PR86: u1,
        // Reserved
        _reserved_23: u9,
    },
};

pub const EXTI_BASE_ADDRESS: usize = 0x58000000;
pub const EXTI_REGISTERS: *volatile EXTI = @ptrFromInt(EXTI_BASE_ADDRESS);
