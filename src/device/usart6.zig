
pub const USART6 = struct {
};

pub const USART6_BASE_ADDRESS: usize = 0x40011400;
pub const USART6_REGISTERS: *volatile USART6 = @ptrFromInt(USART6_BASE_ADDRESS);
