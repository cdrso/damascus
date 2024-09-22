// USB 1 on the go high speed
pub const OTG1_HS_PWRCLK = struct {
    // Power and clock gating control register
    OTG_HS_PCGCR: packed struct(u32) {
        // Stop PHY clock
        STPPCLK: u1,
        // Gate HCLK
        GATEHCLK: u1,
        // Reserved
        _reserved_2: u2,
        // PHY suspended
        PHYSUSP: u1,
        // Reserved
        _reserved_5: u27,
    },
};

pub const OTG1_HS_PWRCLK_BASE_ADDRESS: usize = 0x40040E00;
pub const OTG1_HS_PWRCLK_REGISTERS: *volatile OTG1_HS_PWRCLK = @ptrFromInt(OTG1_HS_PWRCLK_BASE_ADDRESS);
