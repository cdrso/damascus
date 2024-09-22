// DELAY_Block_SDMMC1
pub const DELAY_Block_SDMMC1 = struct {
    // DLYB control register
    CR: packed struct(u32) {
        // Delay block enable bit
        DEN: u1,
        // Sampler length enable bit
        SEN: u1,
        // Reserved
        _reserved_2: u30,
    },
    // DLYB configuration register
    CFGR: packed struct(u32) {
        // Select the phase for the Output clock
        SEL: u4,
        // Reserved
        _reserved_4: u4,
        // Delay Defines the delay of a Unit delay cell
        UNIT: u7,
        // Reserved
        _reserved_15: u1,
        // Delay line length value
        LNG: u12,
        // Reserved
        _reserved_28: u3,
        // Length valid flag
        LNGF: u1,
    },
};

pub const DELAY_Block_SDMMC1_BASE_ADDRESS: usize = 0x52008000;
pub const DELAY_Block_SDMMC1_REGISTERS: *volatile DELAY_Block_SDMMC1 = @ptrFromInt(DELAY_Block_SDMMC1_BASE_ADDRESS);
