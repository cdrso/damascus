
pub const GPIOG = struct {
};

pub const GPIOG_BASE_ADDRESS: usize = 0x58021800;
pub const GPIOG_REGISTERS: *volatile GPIOG = @ptrFromInt(GPIOG_BASE_ADDRESS);
