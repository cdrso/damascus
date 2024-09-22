
pub const UART5 = struct {
};

pub const UART5_BASE_ADDRESS: usize = 0x40005000;
pub const UART5_REGISTERS: *volatile UART5 = @ptrFromInt(UART5_BASE_ADDRESS);
