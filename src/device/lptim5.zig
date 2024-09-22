
pub const LPTIM5 = struct {
};

pub const LPTIM5_BASE_ADDRESS: usize = 0x58003000;
pub const LPTIM5_REGISTERS: *volatile LPTIM5 = @ptrFromInt(LPTIM5_BASE_ADDRESS);
