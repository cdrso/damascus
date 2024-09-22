
pub const UART8 = struct {
};

pub const UART8_BASE_ADDRESS: usize = 0x40007C00;
pub const UART8_REGISTERS: *volatile UART8 = @ptrFromInt(UART8_BASE_ADDRESS);
