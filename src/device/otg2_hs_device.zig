
pub const OTG2_HS_DEVICE = struct {
};

pub const OTG2_HS_DEVICE_BASE_ADDRESS: usize = 0x40080800;
pub const OTG2_HS_DEVICE_REGISTERS: *volatile OTG2_HS_DEVICE = @ptrFromInt(OTG2_HS_DEVICE_BASE_ADDRESS);
