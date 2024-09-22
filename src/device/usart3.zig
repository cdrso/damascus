
pub const USART3 = struct {
};

pub const USART3_BASE_ADDRESS: usize = 0x40004800;
pub const USART3_REGISTERS: *volatile USART3 = @ptrFromInt(USART3_BASE_ADDRESS);
