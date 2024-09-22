// CCU registers
pub const CAN_CCU = struct {
    // Clock Calibration Unit Core Release Register
    CREL: packed struct(u32) {
        // Time Stamp Day
        DAY: u8,
        // Time Stamp Month
        MON: u8,
        // Time Stamp Year
        YEAR: u4,
        // Sub-step of Core Release
        SUBSTEP: u4,
        // Step of Core Release
        STEP: u4,
        // Core Release
        REL: u4,
    },
    // Calibration Configuration Register
    CCFG: packed struct(u32) {
        // Time Quanta per Bit Time
        TQBT: u5,
        // Reserved
        _reserved_5: u1,
        // Bypass Clock Calibration
        BCC: u1,
        // Calibration Field Length
        CFL: u1,
        // Oscillator Clock Periods Minimum
        OCPM: u8,
        // Clock Divider
        CDIV: u4,
        // Reserved
        _reserved_20: u11,
        // Software Reset
        SWR: u1,
    },
    // Calibration Status Register
    CSTAT: packed struct(u32) {
        // Oscillator Clock Period Counter
        OCPC: u18,
        // Time Quanta Counter
        TQC: u11,
        // Reserved
        _reserved_29: u1,
        // Calibration State
        CALS: u2,
    },
    // Calibration Watchdog Register
    CWD: packed struct(u32) {
        // WDC
        WDC: u16,
        // WDV
        WDV: u16,
    },
    // Clock Calibration Unit Interrupt Register
    IR: packed struct(u32) {
        // Calibration Watchdog Event
        CWE: u1,
        // Calibration State Changed
        CSC: u1,
        // Reserved
        _reserved_2: u30,
    },
    // Clock Calibration Unit Interrupt Enable Register
    IE: packed struct(u32) {
        // Calibration Watchdog Event Enable
        CWEE: u1,
        // Calibration State Changed Enable
        CSCE: u1,
        // Reserved
        _reserved_2: u30,
    },
};

pub const CAN_CCU_BASE_ADDRESS: usize = 0x4000A800;
pub const CAN_CCU_REGISTERS: *volatile CAN_CCU = @ptrFromInt(CAN_CCU_BASE_ADDRESS);
