// Low power timer
pub const LPTIM1 = struct {
    // Interrupt and Status Register
    ISR: packed struct(u32) {
        // Compare match
        CMPM: u1,
        // Autoreload match
        ARRM: u1,
        // External trigger edge event
        EXTTRIG: u1,
        // Compare register update OK
        CMPOK: u1,
        // Autoreload register update OK
        ARROK: u1,
        // Counter direction change down to up
        UP: u1,
        // Counter direction change up to down
        DOWN: u1,
        // Reserved
        _reserved_7: u25,
    },
    // Interrupt Clear Register
    ICR: packed struct(u32) {
        // compare match Clear Flag
        CMPMCF: u1,
        // Autoreload match Clear Flag
        ARRMCF: u1,
        // External trigger valid edge Clear Flag
        EXTTRIGCF: u1,
        // Compare register update OK Clear Flag
        CMPOKCF: u1,
        // Autoreload register update OK Clear Flag
        ARROKCF: u1,
        // Direction change to UP Clear Flag
        UPCF: u1,
        // Direction change to down Clear Flag
        DOWNCF: u1,
        // Reserved
        _reserved_7: u25,
    },
    // Interrupt Enable Register
    IER: packed struct(u32) {
        // Compare match Interrupt Enable
        CMPMIE: u1,
        // Autoreload match Interrupt Enable
        ARRMIE: u1,
        // External trigger valid edge Interrupt Enable
        EXTTRIGIE: u1,
        // Compare register update OK Interrupt Enable
        CMPOKIE: u1,
        // Autoreload register update OK Interrupt Enable
        ARROKIE: u1,
        // Direction change to UP Interrupt Enable
        UPIE: u1,
        // Direction change to down Interrupt Enable
        DOWNIE: u1,
        // Reserved
        _reserved_7: u25,
    },
    // Configuration Register
    CFGR: packed struct(u32) {
        // Clock selector
        CKSEL: u1,
        // Clock Polarity
        CKPOL: u2,
        // Configurable digital filter for external clock
        CKFLT: u2,
        // Reserved
        _reserved_5: u1,
        // Configurable digital filter for trigger
        TRGFLT: u2,
        // Reserved
        _reserved_8: u1,
        // Clock prescaler
        PRESC: u3,
        // Reserved
        _reserved_12: u1,
        // Trigger selector
        TRIGSEL: u3,
        // Reserved
        _reserved_16: u1,
        // Trigger enable and polarity
        TRIGEN: u2,
        // Timeout enable
        TIMOUT: u1,
        // Waveform shape
        WAVE: u1,
        // Waveform shape polarity
        WAVPOL: u1,
        // Registers update mode
        PRELOAD: u1,
        // counter mode enabled
        COUNTMODE: u1,
        // Encoder mode enable
        ENC: u1,
        // Reserved
        _reserved_25: u7,
    },
    // Control Register
    CR: packed struct(u32) {
        // LPTIM Enable
        ENABLE: u1,
        // LPTIM start in single mode
        SNGSTRT: u1,
        // Timer start in continuous mode
        CNTSTRT: u1,
        // Counter reset
        COUNTRST: u1,
        // Reset after read enable
        RSTARE: u1,
        // Reserved
        _reserved_5: u27,
    },
    // Compare Register
    CMP: packed struct(u32) {
        // Compare value
        CMP: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Autoreload Register
    ARR: packed struct(u32) {
        // Auto reload value
        ARR: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Counter Register
    CNT: packed struct(u32) {
        // Counter value
        CNT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // LPTIM configuration register 2
    CFGR2: packed struct(u32) {
        // LPTIM Input 1 selection
        IN1SEL: u2,
        // Reserved
        _reserved_2: u2,
        // LPTIM Input 2 selection
        IN2SEL: u2,
        // Reserved
        _reserved_6: u26,
    },
};

pub const LPTIM1_BASE_ADDRESS: usize = 0x40002400;
pub const LPTIM1_REGISTERS: *volatile LPTIM1 = @ptrFromInt(LPTIM1_BASE_ADDRESS);
