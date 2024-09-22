
pub const SPI5 = struct {
};

pub const SPI5_BASE_ADDRESS: usize = 0x40015000;
pub const SPI5_REGISTERS: *volatile SPI5 = @ptrFromInt(SPI5_BASE_ADDRESS);
