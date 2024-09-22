// High Resolution Timer: Master Timers
pub const HRTIM_Master = struct {
    // Master Timer Control Register
    MCR: packed struct(u32) {
        // HRTIM Master Clock prescaler
        CK_PSC: u3,
        // Master Continuous mode
        CONT: u1,
        // Master Re-triggerable mode
        RETRIG: u1,
        // Half mode enable
        HALF: u1,
        // Reserved
        _reserved_6: u2,
        // ynchronization input
        SYNC_IN: u2,
        // Synchronization Resets Master
        SYNCRSTM: u1,
        // Synchronization Starts Master
        SYNCSTRTM: u1,
        // Synchronization output
        SYNC_OUT: u2,
        // Synchronization source
        SYNC_SRC: u2,
        // Master Counter enable
        MCEN: u1,
        // Timer A counter enable
        TACEN: u1,
        // Timer B counter enable
        TBCEN: u1,
        // Timer C counter enable
        TCCEN: u1,
        // Timer D counter enable
        TDCEN: u1,
        // Timer E counter enable
        TECEN: u1,
        // Reserved
        _reserved_22: u3,
        // AC Synchronization
        DACSYNC: u2,
        // Preload enable
        PREEN: u1,
        // Reserved
        _reserved_28: u1,
        // Master Timer Repetition update
        MREPU: u1,
        // Burst DMA Update
        BRSTDMA: u2,
    },
    // Master Timer Interrupt Status Register
    MISR: packed struct(u32) {
        // Master Compare 1 Interrupt Flag
        MCMP1: u1,
        // Master Compare 2 Interrupt Flag
        MCMP2: u1,
        // Master Compare 3 Interrupt Flag
        MCMP3: u1,
        // Master Compare 4 Interrupt Flag
        MCMP4: u1,
        // Master Repetition Interrupt Flag
        MREP: u1,
        // Sync Input Interrupt Flag
        SYNC: u1,
        // Master Update Interrupt Flag
        MUPD: u1,
        // Reserved
        _reserved_7: u25,
    },
    // Master Timer Interrupt Clear Register
    MICR: packed struct(u32) {
        // Master Compare 1 Interrupt flag clear
        MCMP1C: u1,
        // Master Compare 2 Interrupt flag clear
        MCMP2C: u1,
        // Master Compare 3 Interrupt flag clear
        MCMP3C: u1,
        // Master Compare 4 Interrupt flag clear
        MCMP4C: u1,
        // Repetition Interrupt flag clear
        MREPC: u1,
        // Sync Input Interrupt flag clear
        SYNCC: u1,
        // Master update Interrupt flag clear
        MUPDC: u1,
        // Reserved
        _reserved_7: u25,
    },
    // MDIER4
    MDIER4: packed struct(u32) {
        // MCMP1IE
        MCMP1IE: u1,
        // MCMP2IE
        MCMP2IE: u1,
        // MCMP3IE
        MCMP3IE: u1,
        // MCMP4IE
        MCMP4IE: u1,
        // MREPIE
        MREPIE: u1,
        // SYNCIE
        SYNCIE: u1,
        // MUPDIE
        MUPDIE: u1,
        // Reserved
        _reserved_7: u9,
        // MCMP1DE
        MCMP1DE: u1,
        // MCMP2DE
        MCMP2DE: u1,
        // MCMP3DE
        MCMP3DE: u1,
        // MCMP4DE
        MCMP4DE: u1,
        // MREPDE
        MREPDE: u1,
        // SYNCDE
        SYNCDE: u1,
        // MUPDDE
        MUPDDE: u1,
        // Reserved
        _reserved_23: u9,
    },
    // Master Timer Counter Register
    MCNTR: packed struct(u32) {
        // Counter value
        MCNT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Master Timer Period Register
    MPER: packed struct(u32) {
        // Master Timer Period value
        MPER: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Master Timer Repetition Register
    MREP: packed struct(u32) {
        // Master Timer Repetition counter value
        MREP: u8,
        // Reserved
        _reserved_8: u24,
    },
    // Master Timer Compare 1 Register
    MCMP1R: packed struct(u32) {
        // Master Timer Compare 1 value
        MCMP1: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Master Timer Compare 2 Register
    MCMP2R: packed struct(u32) {
        // Master Timer Compare 2 value
        MCMP2: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Master Timer Compare 3 Register
    MCMP3R: packed struct(u32) {
        // Master Timer Compare 3 value
        MCMP3: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Master Timer Compare 4 Register
    MCMP4R: packed struct(u32) {
        // Master Timer Compare 4 value
        MCMP4: u16,
        // Reserved
        _reserved_16: u16,
    },
};

pub const HRTIM_Master_BASE_ADDRESS: usize = 0x40017400;
pub const HRTIM_Master_REGISTERS: *volatile HRTIM_Master = @ptrFromInt(HRTIM_Master_BASE_ADDRESS);
