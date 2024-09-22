
pub const GPIOK = struct {
};

pub const GPIOK_BASE_ADDRESS: usize = 0x58022800;
pub const GPIOK_REGISTERS: *volatile GPIOK = @ptrFromInt(GPIOK_BASE_ADDRESS);
