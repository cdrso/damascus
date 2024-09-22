
pub const SDMMC2 = struct {
};

pub const SDMMC2_BASE_ADDRESS: usize = 0x48022400;
pub const SDMMC2_REGISTERS: *volatile SDMMC2 = @ptrFromInt(SDMMC2_BASE_ADDRESS);
