
pub const GPIOH = struct {
};

pub const GPIOH_BASE_ADDRESS: usize = 0x58021C00;
pub const GPIOH_REGISTERS: *volatile GPIOH = @ptrFromInt(GPIOH_BASE_ADDRESS);
