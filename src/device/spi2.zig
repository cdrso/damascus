
pub const SPI2 = struct {
};

pub const SPI2_BASE_ADDRESS: usize = 0x40003800;
pub const SPI2_REGISTERS: *volatile SPI2 = @ptrFromInt(SPI2_BASE_ADDRESS);
