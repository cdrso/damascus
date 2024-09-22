
pub const DELAY_Block_QUADSPI = struct {
};

pub const DELAY_Block_QUADSPI_BASE_ADDRESS: usize = 0x52006000;
pub const DELAY_Block_QUADSPI_REGISTERS: *volatile DELAY_Block_QUADSPI = @ptrFromInt(DELAY_Block_QUADSPI_BASE_ADDRESS);
