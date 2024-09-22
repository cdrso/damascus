
pub const UART4 = struct {
};

pub const UART4_BASE_ADDRESS: usize = 0x40004C00;
pub const UART4_REGISTERS: *volatile UART4 = @ptrFromInt(UART4_BASE_ADDRESS);
