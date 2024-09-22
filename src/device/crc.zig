// Cryptographic processor
pub const CRC = struct {
    // Data register
    DR: packed struct(u32) {
        // Data Register
        DR: u32,
    },
    // Independent Data register
    IDR: packed struct(u32) {
        // Independent Data register
        IDR: u32,
    },
    // Control register
    CR: packed struct(u32) {
        // RESET bit
        RESET: u1,
        // Reserved
        _reserved_1: u2,
        // Polynomial size
        POLYSIZE: u2,
        // Reverse input data
        REV_IN: u2,
        // Reverse output data
        REV_OUT: u1,
        // Reserved
        _reserved_8: u24,
    },
    // Initial CRC value
    INIT: packed struct(u32) {
        // Programmable initial CRC value
        CRC_INIT: u32,
    },
    // CRC polynomial
    POL: packed struct(u32) {
        // Programmable polynomial
        POL: u32,
    },
};

pub const CRC_BASE_ADDRESS: usize = 0x58024C00;
pub const CRC_REGISTERS: *volatile CRC = @ptrFromInt(CRC_BASE_ADDRESS);
