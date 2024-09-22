
pub const DELAY_Block_SDMMC2 = struct {
};

pub const DELAY_Block_SDMMC2_BASE_ADDRESS: usize = 0x48022800;
pub const DELAY_Block_SDMMC2_REGISTERS: *volatile DELAY_Block_SDMMC2 = @ptrFromInt(DELAY_Block_SDMMC2_BASE_ADDRESS);
