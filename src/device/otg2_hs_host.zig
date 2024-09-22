
pub const OTG2_HS_HOST = struct {
};

pub const OTG2_HS_HOST_BASE_ADDRESS: usize = 0x40080400;
pub const OTG2_HS_HOST_REGISTERS: *volatile OTG2_HS_HOST = @ptrFromInt(OTG2_HS_HOST_BASE_ADDRESS);
