
pub const OTG2_HS_GLOBAL = struct {
};

pub const OTG2_HS_GLOBAL_BASE_ADDRESS: usize = 0x40080000;
pub const OTG2_HS_GLOBAL_REGISTERS: *volatile OTG2_HS_GLOBAL = @ptrFromInt(OTG2_HS_GLOBAL_BASE_ADDRESS);
