
pub const UART7 = struct {
};

pub const UART7_BASE_ADDRESS: usize = 0x40007800;
pub const UART7_REGISTERS: *volatile UART7 = @ptrFromInt(UART7_BASE_ADDRESS);
