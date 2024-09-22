
pub const GPIOI = struct {
};

pub const GPIOI_BASE_ADDRESS: usize = 0x58022000;
pub const GPIOI_REGISTERS: *volatile GPIOI = @ptrFromInt(GPIOI_BASE_ADDRESS);
