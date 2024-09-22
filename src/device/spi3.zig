
pub const SPI3 = struct {
};

pub const SPI3_BASE_ADDRESS: usize = 0x40003C00;
pub const SPI3_REGISTERS: *volatile SPI3 = @ptrFromInt(SPI3_BASE_ADDRESS);
