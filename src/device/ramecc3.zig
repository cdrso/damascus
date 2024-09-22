// ECC controller is associated to each RAM area
pub const RAMECC3 = struct {
    // RAMECC interrupt enable register
    IER: packed struct(u32) {
        // Global interrupt enable
        GIE: u1,
        // Global ECC single error interrupt enable
        GECCSEIE_: u1,
        // Global ECC double error interrupt enable
        GECCDEIE: u1,
        // Global ECC double error on byte write (BW) interrupt enable
        GECCDEBWIE: u1,
        // Reserved
        _reserved_4: u28,
    },
    // RAMECC monitor x configuration register
    M1CR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // ECC single error interrupt enable
        ECCSEIE: u1,
        // ECC double error interrupt enable
        ECCDEIE: u1,
        // ECC double error on byte write (BW) interrupt enable
        ECCDEBWIE: u1,
        // ECC error latching enable
        ECCELEN: u1,
        // Reserved
        _reserved_6: u26,
    },
    // RAMECC monitor x configuration register
    M2CR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // ECC single error interrupt enable
        ECCSEIE: u1,
        // ECC double error interrupt enable
        ECCDEIE: u1,
        // ECC double error on byte write (BW) interrupt enable
        ECCDEBWIE: u1,
        // ECC error latching enable
        ECCELEN: u1,
        // Reserved
        _reserved_6: u26,
    },
    // RAMECC monitor x status register
    M1SR: packed struct(u32) {
        // ECC single error detected and corrected flag
        SEDCF: u1,
        // ECC double error detected flag
        DEDF: u1,
        // ECC double error on byte write (BW) detected flag
        DEBWDF: u1,
        // Reserved
        _reserved_3: u29,
    },
    // RAMECC monitor x status register
    M2SR: packed struct(u32) {
        // ECC single error detected and corrected flag
        SEDCF: u1,
        // ECC double error detected flag
        DEDF: u1,
        // ECC double error on byte write (BW) detected flag
        DEBWDF: u1,
        // Reserved
        _reserved_3: u29,
    },
    // RAMECC monitor x failing address register
    M1FAR: packed struct(u32) {
        // ECC error failing address
        FADD: u32,
    },
    // RAMECC monitor x failing address register
    M2FAR: packed struct(u32) {
        // ECC error failing address
        FADD: u32,
    },
    // RAMECC monitor x failing data low register
    M1FDRL: packed struct(u32) {
        // Failing data low
        FDATAL: u32,
    },
    // RAMECC monitor x failing data low register
    M2FDRL: packed struct(u32) {
        // Failing data low
        FDATAL: u32,
    },
    // RAMECC monitor x failing data high register
    M1FDRH: packed struct(u32) {
        // Failing data high (64-bit memory)
        FDATAH: u32,
    },
    // RAMECC monitor x failing data high register
    M2FDRH: packed struct(u32) {
        // Failing data high (64-bit memory)
        FDATAH: u32,
    },
    // RAMECC monitor x failing ECC error code register
    M1FECR: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
    // RAMECC monitor x failing ECC error code register
    M2FECR: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
};

pub const RAMECC3_BASE_ADDRESS: usize = 0x58027000;
pub const RAMECC3_REGISTERS: *volatile RAMECC3 = @ptrFromInt(RAMECC3_BASE_ADDRESS);
