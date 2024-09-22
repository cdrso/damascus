
pub const GPIOC = struct {
};

pub const GPIOC_BASE_ADDRESS: usize = 0x58020800;
pub const GPIOC_REGISTERS: *volatile GPIOC = @ptrFromInt(GPIOC_BASE_ADDRESS);
