
pub const GPIOJ = struct {
};

pub const GPIOJ_BASE_ADDRESS: usize = 0x58022400;
pub const GPIOJ_REGISTERS: *volatile GPIOJ = @ptrFromInt(GPIOJ_BASE_ADDRESS);
