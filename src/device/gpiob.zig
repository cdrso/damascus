
pub const GPIOB = struct {
};

pub const GPIOB_BASE_ADDRESS: usize = 0x58020400;
pub const GPIOB_REGISTERS: *volatile GPIOB = @ptrFromInt(GPIOB_BASE_ADDRESS);
