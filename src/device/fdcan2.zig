
pub const FDCAN2 = struct {
};

pub const FDCAN2_BASE_ADDRESS: usize = 0x4000A400;
pub const FDCAN2_REGISTERS: *volatile FDCAN2 = @ptrFromInt(FDCAN2_BASE_ADDRESS);
