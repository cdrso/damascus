
pub const USART2 = struct {
};

pub const USART2_BASE_ADDRESS: usize = 0x40004400;
pub const USART2_REGISTERS: *volatile USART2 = @ptrFromInt(USART2_BASE_ADDRESS);
