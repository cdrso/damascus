
pub const GPIOE = struct {
};

pub const GPIOE_BASE_ADDRESS: usize = 0x58021000;
pub const GPIOE_REGISTERS: *volatile GPIOE = @ptrFromInt(GPIOE_BASE_ADDRESS);
