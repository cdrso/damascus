// WWDG
pub const WWDG = struct {
    // Control register
    CR: packed struct(u32) {
        // 7-bit counter (MSB to LSB) These bits
        // contain the value of the watchdog counter. It is
        // decremented every (4096 x 2WDGTB[1:0]) PCLK cycles. A
        // reset is produced when it is decremented from 0x40 to
        // 0x3F (T6 becomes cleared).
        T: u7,
        // Activation bit This bit is set by
        // software and only cleared by hardware after a reset.
        // When WDGA=1, the watchdog can generate a
        // reset.
        WDGA: u1,
        // Reserved
        _reserved_8: u24,
    },
    // Configuration register
    CFR: packed struct(u32) {
        // 7-bit window value These bits contain
        // the window value to be compared to the
        // downcounter.
        W: u7,
        // Reserved
        _reserved_7: u2,
        // Early wakeup interrupt When set, an
        // interrupt occurs whenever the counter reaches the
        // value 0x40. This interrupt is only cleared by
        // hardware after a reset.
        EWI: u1,
        // Reserved
        _reserved_10: u1,
        // Timer base The time base of the prescaler can be modified as follows:
        WDGTB: u2,
        // Reserved
        _reserved_13: u19,
    },
    // Status register
    SR: packed struct(u32) {
        // Early wakeup interrupt flag This bit is
        // set by hardware when the counter has reached the
        // value 0x40. It must be cleared by software by writing
        // 0. A write of 1 has no effect. This bit is also set
        // if the interrupt is not enabled.
        EWIF: u1,
        // Reserved
        _reserved_1: u31,
    },
};

pub const WWDG_BASE_ADDRESS: usize = 0x50003000;
pub const WWDG_REGISTERS: *volatile WWDG = @ptrFromInt(WWDG_BASE_ADDRESS);
