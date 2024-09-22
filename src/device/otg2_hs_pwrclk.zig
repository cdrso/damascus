
pub const OTG2_HS_PWRCLK = struct {
};

pub const OTG2_HS_PWRCLK_BASE_ADDRESS: usize = 0x40080E00;
pub const OTG2_HS_PWRCLK_REGISTERS: *volatile OTG2_HS_PWRCLK = @ptrFromInt(OTG2_HS_PWRCLK_BASE_ADDRESS);
