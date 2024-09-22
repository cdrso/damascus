// RNG
pub const RNG = struct {
    // RNG control register
    CR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Random number generator enable
        RNGEN: u1,
        // Interrupt enable
        IE: u1,
        // Reserved
        _reserved_4: u1,
        // Clock error detection Note: The clock
        // error detection can be used only when ck_rc48 or
        // ck_pll1_q (ck_pll1_q = 48MHz) source is selected
        // otherwise, CED bit must be equal to 1. The clock
        // error detection cannot be enabled nor disabled on the
        // fly when RNG peripheral is enabled, to enable or
        // disable CED the RNG must be disabled.
        CED: u1,
        // Reserved
        _reserved_6: u26,
    },
    // RNG status register
    SR: packed struct(u32) {
        // Data ready Note: If IE=1 in RNG_CR, an
        // interrupt is generated when DRDY=1. It can rise when
        // the peripheral is disabled. When the output buffer
        // becomes empty (after reading RNG_DR), this bit
        // returns to 0 until a new random value is
        // generated.
        DRDY: u1,
        // Clock error current status Note: This
        // bit is meaningless if CED (Clock error detection) bit
        // in RNG_CR is equal to 1.
        CECS: u1,
        // Seed error current status ** More than
        // 64 consecutive bits at the same value (0 or 1) **
        // More than 32 consecutive alternances of 0 and 1
        // (0101010101...01)
        SECS: u1,
        // Reserved
        _reserved_3: u2,
        // Clock error interrupt status This bit is
        // set at the same time as CECS. It is cleared by
        // writing it to 0. An interrupt is pending if IE = 1 in
        // the RNG_CR register. Note: This bit is meaningless if
        // CED (Clock error detection) bit in RNG_CR is equal to
        // 1.
        CEIS: u1,
        // Seed error interrupt status This bit is
        // set at the same time as SECS. It is cleared by
        // writing it to 0. ** More than 64 consecutive bits at
        // the same value (0 or 1) ** More than 32 consecutive
        // alternances of 0 and 1 (0101010101...01) An interrupt
        // is pending if IE = 1 in the RNG_CR
        // register.
        SEIS: u1,
        // Reserved
        _reserved_7: u25,
    },
    // The RNG_DR register is a read-only register
    // that delivers a 32-bit random value when read. The
    // content of this register is valid when DRDY= 1, even if
    // RNGEN=0.
    DR: packed struct(u32) {
        // Random data 32-bit random data which are valid when DRDY=1.
        RNDATA: u32,
    },
};

pub const RNG_BASE_ADDRESS: usize = 0x48021800;
pub const RNG_REGISTERS: *volatile RNG = @ptrFromInt(RNG_BASE_ADDRESS);
