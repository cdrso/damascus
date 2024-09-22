
pub const SPI6 = struct {
};

pub const SPI6_BASE_ADDRESS: usize = 0x58001400;
pub const SPI6_REGISTERS: *volatile SPI6 = @ptrFromInt(SPI6_BASE_ADDRESS);
