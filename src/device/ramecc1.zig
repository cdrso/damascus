// ECC controller is associated to each RAM area
pub const RAMECC1 = struct {
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
    // RAMECC monitor x status register
    M1SR: packed struct(u32) {
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
    // RAMECC monitor x failing address register
    M1FAR: packed struct(u32) {
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
    // RAMECC monitor x failing data low register
    M1FDRL: packed struct(u32) {
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
    // RAMECC monitor x failing data high register
    M1FDRH: packed struct(u32) {
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
    // RAMECC monitor x failing ECC error code register
    M1FECR: packed struct(u32) {
        // ECC single error detected and corrected flag
        SEDCF: u1,
        // ECC double error detected flag
        DEDF: u1,
        // ECC double error on byte write (BW) detected flag
        DEBWDF: u1,
        // Reserved
        _reserved_3: u29,
    },
    // RAMECC monitor x configuration register
    M2CR: packed struct(u32) {
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
    M2FAR: packed struct(u32) {
        // ECC single error detected and corrected flag
        SEDCF: u1,
        // ECC double error detected flag
        DEDF: u1,
        // ECC double error on byte write (BW) detected flag
        DEBWDF: u1,
        // Reserved
        _reserved_3: u29,
    },
    // RAMECC monitor x failing data low register
    M2FDRL: packed struct(u32) {
        // ECC single error detected and corrected flag
        SEDCF: u1,
        // ECC double error detected flag
        DEDF: u1,
        // ECC double error on byte write (BW) detected flag
        DEBWDF: u1,
        // Reserved
        _reserved_3: u29,
    },
    // RAMECC monitor x failing data high register
    M2FDRH: packed struct(u32) {
        // ECC error failing address
        FADD: u32,
    },
    // RAMECC monitor x failing ECC error code register
    M2FECR: packed struct(u32) {
        // ECC error failing address
        FADD: u32,
    },
    // RAMECC monitor x configuration register
    M3CR: packed struct(u32) {
        // ECC error failing address
        FADD: u32,
    },
    // RAMECC monitor x status register
    M3SR: packed struct(u32) {
        // ECC error failing address
        FADD: u32,
    },
    // RAMECC monitor x failing address register
    M3FAR: packed struct(u32) {
        // ECC error failing address
        FADD: u32,
    },
    // RAMECC monitor x failing data low register
    M3FDRL: packed struct(u32) {
        // Failing data low
        FDATAL: u32,
    },
    // RAMECC monitor x failing data high register
    M3FDRH: packed struct(u32) {
        // Failing data low
        FDATAL: u32,
    },
    // RAMECC monitor x failing ECC error code register
    M3FECR: packed struct(u32) {
        // Failing data low
        FDATAL: u32,
    },
    // RAMECC monitor x configuration register
    M4CR: packed struct(u32) {
        // Failing data low
        FDATAL: u32,
    },
    // RAMECC monitor x status register
    M4SR: packed struct(u32) {
        // Failing data low
        FDATAL: u32,
    },
    // RAMECC monitor x failing address register
    M4FAR: packed struct(u32) {
        // Failing data high (64-bit memory)
        FDATAH: u32,
    },
    // RAMECC monitor x failing data low register
    M4FDRL: packed struct(u32) {
        // Failing data high (64-bit memory)
        FDATAH: u32,
    },
    // RAMECC monitor x failing data high register
    M4FDRH: packed struct(u32) {
        // Failing data high (64-bit memory)
        FDATAH: u32,
    },
    // RAMECC monitor x failing ECC error code register
    M4FECR: packed struct(u32) {
        // Failing data high (64-bit memory)
        FDATAH: u32,
    },
    // RAMECC monitor x configuration register
    M5CR: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
    // RAMECC monitor x status register
    M5SR: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
    // RAMECC monitor x failing address register
    M5FAR: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
    // RAMECC monitor x failing data low register
    M5FDRL: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
    // RAMECC monitor x failing data high register
    M5FDRH: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
    // RAMECC monitor x failing ECC error code register
    M5FECR: packed struct(u32) {
        // Failing error code
        FEC: u32,
    },
};

pub const RAMECC1_BASE_ADDRESS: usize = 0x52009000;
pub const RAMECC1_REGISTERS: *volatile RAMECC1 = @ptrFromInt(RAMECC1_BASE_ADDRESS);
