
pub const GPIOF = struct {
};

pub const GPIOF_BASE_ADDRESS: usize = 0x58021400;
pub const GPIOF_REGISTERS: *volatile GPIOF = @ptrFromInt(GPIOF_BASE_ADDRESS);
