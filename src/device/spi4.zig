
pub const SPI4 = struct {
};

pub const SPI4_BASE_ADDRESS: usize = 0x40013400;
pub const SPI4_REGISTERS: *volatile SPI4 = @ptrFromInt(SPI4_BASE_ADDRESS);
