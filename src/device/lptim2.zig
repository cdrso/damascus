
pub const LPTIM2 = struct {
};

pub const LPTIM2_BASE_ADDRESS: usize = 0x58002400;
pub const LPTIM2_REGISTERS: *volatile LPTIM2 = @ptrFromInt(LPTIM2_BASE_ADDRESS);
