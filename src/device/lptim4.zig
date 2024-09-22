
pub const LPTIM4 = struct {
};

pub const LPTIM4_BASE_ADDRESS: usize = 0x58002C00;
pub const LPTIM4_REGISTERS: *volatile LPTIM4 = @ptrFromInt(LPTIM4_BASE_ADDRESS);
