// Hash processor
pub const HASH = struct {
    // control register
    CR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Initialize message digest calculation
        INIT: u1,
        // DMA enable
        DMAE: u1,
        // Data type selection
        DATATYPE: u2,
        // Mode selection
        MODE: u1,
        // Algorithm selection
        ALGO0: u1,
        // Number of words already pushed
        NBW: u4,
        // DIN not empty
        DINNE: u1,
        // Multiple DMA Transfers
        MDMAT: u1,
        // Reserved
        _reserved_14: u2,
        // Long key selection
        LKEY: u1,
        // Reserved
        _reserved_17: u1,
        // ALGO
        ALGO1: u1,
        // Reserved
        _reserved_19: u13,
    },
    // data input register
    DIN: packed struct(u32) {
        // Data input
        DATAIN: u32,
    },
    // start register
    STR: packed struct(u32) {
        // Number of valid bits in the last word of the message
        NBLW: u5,
        // Reserved
        _reserved_5: u3,
        // Digest calculation
        DCAL: u1,
        // Reserved
        _reserved_9: u23,
    },
    // digest registers
    HR0: packed struct(u32) {
        // H0
        H0: u32,
    },
    // digest registers
    HR1: packed struct(u32) {
        // H1
        H1: u32,
    },
    // digest registers
    HR2: packed struct(u32) {
        // H2
        H2: u32,
    },
    // digest registers
    HR3: packed struct(u32) {
        // H3
        H3: u32,
    },
    // digest registers
    HR4: packed struct(u32) {
        // H4
        H4: u32,
    },
    // interrupt enable register
    IMR: packed struct(u32) {
        // Data input interrupt enable
        DINIE: u1,
        // Digest calculation completion interrupt enable
        DCIE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // status register
    SR: packed struct(u32) {
        // Data input interrupt status
        DINIS: u1,
        // Digest calculation completion interrupt status
        DCIS: u1,
        // DMA Status
        DMAS: u1,
        // Busy bit
        BUSY: u1,
        // Reserved
        _reserved_4: u28,
    },
    // context swap registers
    CSR0: packed struct(u32) {
        // CSR0
        CSR0: u32,
    },
    // context swap registers
    CSR1: packed struct(u32) {
        // CSR1
        CSR1: u32,
    },
    // context swap registers
    CSR2: packed struct(u32) {
        // CSR2
        CSR2: u32,
    },
    // context swap registers
    CSR3: packed struct(u32) {
        // CSR3
        CSR3: u32,
    },
    // context swap registers
    CSR4: packed struct(u32) {
        // CSR4
        CSR4: u32,
    },
    // context swap registers
    CSR5: packed struct(u32) {
        // CSR5
        CSR5: u32,
    },
    // context swap registers
    CSR6: packed struct(u32) {
        // CSR6
        CSR6: u32,
    },
    // context swap registers
    CSR7: packed struct(u32) {
        // CSR7
        CSR7: u32,
    },
    // context swap registers
    CSR8: packed struct(u32) {
        // CSR8
        CSR8: u32,
    },
    // context swap registers
    CSR9: packed struct(u32) {
        // CSR9
        CSR9: u32,
    },
    // context swap registers
    CSR10: packed struct(u32) {
        // CSR10
        CSR10: u32,
    },
    // context swap registers
    CSR11: packed struct(u32) {
        // CSR11
        CSR11: u32,
    },
    // context swap registers
    CSR12: packed struct(u32) {
        // CSR12
        CSR12: u32,
    },
    // context swap registers
    CSR13: packed struct(u32) {
        // CSR13
        CSR13: u32,
    },
    // context swap registers
    CSR14: packed struct(u32) {
        // CSR14
        CSR14: u32,
    },
    // context swap registers
    CSR15: packed struct(u32) {
        // CSR15
        CSR15: u32,
    },
    // context swap registers
    CSR16: packed struct(u32) {
        // CSR16
        CSR16: u32,
    },
    // context swap registers
    CSR17: packed struct(u32) {
        // CSR17
        CSR17: u32,
    },
    // context swap registers
    CSR18: packed struct(u32) {
        // CSR18
        CSR18: u32,
    },
    // context swap registers
    CSR19: packed struct(u32) {
        // CSR19
        CSR19: u32,
    },
    // context swap registers
    CSR20: packed struct(u32) {
        // CSR20
        CSR20: u32,
    },
    // context swap registers
    CSR21: packed struct(u32) {
        // CSR21
        CSR21: u32,
    },
    // context swap registers
    CSR22: packed struct(u32) {
        // CSR22
        CSR22: u32,
    },
    // context swap registers
    CSR23: packed struct(u32) {
        // CSR23
        CSR23: u32,
    },
    // context swap registers
    CSR24: packed struct(u32) {
        // CSR24
        CSR24: u32,
    },
    // context swap registers
    CSR25: packed struct(u32) {
        // CSR25
        CSR25: u32,
    },
    // context swap registers
    CSR26: packed struct(u32) {
        // CSR26
        CSR26: u32,
    },
    // context swap registers
    CSR27: packed struct(u32) {
        // CSR27
        CSR27: u32,
    },
    // context swap registers
    CSR28: packed struct(u32) {
        // CSR28
        CSR28: u32,
    },
    // context swap registers
    CSR29: packed struct(u32) {
        // CSR29
        CSR29: u32,
    },
    // context swap registers
    CSR30: packed struct(u32) {
        // CSR30
        CSR30: u32,
    },
    // context swap registers
    CSR31: packed struct(u32) {
        // CSR31
        CSR31: u32,
    },
    // context swap registers
    CSR32: packed struct(u32) {
        // CSR32
        CSR32: u32,
    },
    // context swap registers
    CSR33: packed struct(u32) {
        // CSR33
        CSR33: u32,
    },
    // context swap registers
    CSR34: packed struct(u32) {
        // CSR34
        CSR34: u32,
    },
    // context swap registers
    CSR35: packed struct(u32) {
        // CSR35
        CSR35: u32,
    },
    // context swap registers
    CSR36: packed struct(u32) {
        // CSR36
        CSR36: u32,
    },
    // context swap registers
    CSR37: packed struct(u32) {
        // CSR37
        CSR37: u32,
    },
    // context swap registers
    CSR38: packed struct(u32) {
        // CSR38
        CSR38: u32,
    },
    // context swap registers
    CSR39: packed struct(u32) {
        // CSR39
        CSR39: u32,
    },
    // context swap registers
    CSR40: packed struct(u32) {
        // CSR40
        CSR40: u32,
    },
    // context swap registers
    CSR41: packed struct(u32) {
        // CSR41
        CSR41: u32,
    },
    // context swap registers
    CSR42: packed struct(u32) {
        // CSR42
        CSR42: u32,
    },
    // context swap registers
    CSR43: packed struct(u32) {
        // CSR43
        CSR43: u32,
    },
    // context swap registers
    CSR44: packed struct(u32) {
        // CSR44
        CSR44: u32,
    },
    // context swap registers
    CSR45: packed struct(u32) {
        // CSR45
        CSR45: u32,
    },
    // context swap registers
    CSR46: packed struct(u32) {
        // CSR46
        CSR46: u32,
    },
    // context swap registers
    CSR47: packed struct(u32) {
        // CSR47
        CSR47: u32,
    },
    // context swap registers
    CSR48: packed struct(u32) {
        // CSR48
        CSR48: u32,
    },
    // context swap registers
    CSR49: packed struct(u32) {
        // CSR49
        CSR49: u32,
    },
    // context swap registers
    CSR50: packed struct(u32) {
        // CSR50
        CSR50: u32,
    },
    // context swap registers
    CSR51: packed struct(u32) {
        // CSR51
        CSR51: u32,
    },
    // context swap registers
    CSR52: packed struct(u32) {
        // CSR52
        CSR52: u32,
    },
    // context swap registers
    CSR53: packed struct(u32) {
        // CSR53
        CSR53: u32,
    },
    // HASH digest register
    HASH_HR0: packed struct(u32) {
        // H0
        H0: u32,
    },
    // read-only
    HASH_HR1: packed struct(u32) {
        // H1
        H1: u32,
    },
    // read-only
    HASH_HR2: packed struct(u32) {
        // H2
        H2: u32,
    },
    // read-only
    HASH_HR3: packed struct(u32) {
        // H3
        H3: u32,
    },
    // read-only
    HASH_HR4: packed struct(u32) {
        // H4
        H4: u32,
    },
    // read-only
    HASH_HR5: packed struct(u32) {
        // H5
        H5: u32,
    },
    // read-only
    HASH_HR6: packed struct(u32) {
        // H6
        H6: u32,
    },
    // read-only
    HASH_HR7: packed struct(u32) {
        // H7
        H7: u32,
    },
};

pub const HASH_BASE_ADDRESS: usize = 0x48021400;
pub const HASH_REGISTERS: *volatile HASH = @ptrFromInt(HASH_BASE_ADDRESS);
