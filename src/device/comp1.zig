// COMP1
pub const COMP1 = struct {
    // Comparator status register
    SR: packed struct(u32) {
        // COMP channel 1 output status bit
        C1VAL: u1,
        // COMP channel 2 output status bit
        C2VAL: u1,
        // Reserved
        _reserved_2: u14,
        // COMP channel 1 Interrupt Flag
        C1IF: u1,
        // COMP channel 2 Interrupt Flag
        C2IF: u1,
        // Reserved
        _reserved_18: u14,
    },
    // Comparator interrupt clear flag register
    ICFR: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Clear COMP channel 1 Interrupt Flag
        CC1IF: u1,
        // Clear COMP channel 2 Interrupt Flag
        CC2IF: u1,
        // Reserved
        _reserved_18: u14,
    },
    // Comparator option register
    OR: packed struct(u32) {
        // Selection of source for alternate function of output ports
        AFOP: u11,
        // Option Register
        OR: u21,
    },
    // Comparator configuration register 1
    CFGR1: packed struct(u32) {
        // COMP channel 1 enable bit
        EN: u1,
        // Scaler bridge enable
        BRGEN: u1,
        // Voltage scaler enable bit
        SCALEN: u1,
        // COMP channel 1 polarity selection bit
        POLARITY: u1,
        // Reserved
        _reserved_4: u2,
        // COMP channel 1 interrupt enable
        ITEN: u1,
        // Reserved
        _reserved_7: u1,
        // COMP channel 1 hysteresis selection bits
        HYST: u2,
        // Reserved
        _reserved_10: u2,
        // Power Mode of the COMP channel 1
        PWRMODE: u2,
        // Reserved
        _reserved_14: u2,
        // COMP channel 1 inverting input selection field
        INMSEL: u3,
        // Reserved
        _reserved_19: u1,
        // COMP channel 1 non-inverting input selection bit
        INPSEL: u1,
        // Reserved
        _reserved_21: u3,
        // COMP channel 1 blanking source selection bits
        BLANKING: u4,
        // Reserved
        _reserved_28: u3,
        // Lock bit
        LOCK: u1,
    },
    // Comparator configuration register 2
    CFGR2: packed struct(u32) {
        // COMP channel 1 enable bit
        EN: u1,
        // Scaler bridge enable
        BRGEN: u1,
        // Voltage scaler enable bit
        SCALEN: u1,
        // COMP channel 1 polarity selection bit
        POLARITY: u1,
        // Window comparator mode selection bit
        WINMODE: u1,
        // Reserved
        _reserved_5: u1,
        // COMP channel 1 interrupt enable
        ITEN: u1,
        // Reserved
        _reserved_7: u1,
        // COMP channel 1 hysteresis selection bits
        HYST: u2,
        // Reserved
        _reserved_10: u2,
        // Power Mode of the COMP channel 1
        PWRMODE: u2,
        // Reserved
        _reserved_14: u2,
        // COMP channel 1 inverting input selection field
        INMSEL: u3,
        // Reserved
        _reserved_19: u1,
        // COMP channel 1 non-inverting input selection bit
        INPSEL: u1,
        // Reserved
        _reserved_21: u3,
        // COMP channel 1 blanking source selection bits
        BLANKING: u4,
        // Reserved
        _reserved_28: u3,
        // Lock bit
        LOCK: u1,
    },
};

pub const COMP1_BASE_ADDRESS: usize = 0x58003800;
pub const COMP1_REGISTERS: *volatile COMP1 = @ptrFromInt(COMP1_BASE_ADDRESS);
