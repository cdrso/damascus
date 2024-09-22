
pub const GPIOD = struct {
};

pub const GPIOD_BASE_ADDRESS: usize = 0x58020C00;
pub const GPIOD_REGISTERS: *volatile GPIOD = @ptrFromInt(GPIOD_BASE_ADDRESS);
