// AXI interconnect registers
pub const AXI = struct {
    // AXI interconnect - peripheral ID4 register
    AXI_PERIPH_ID_4: packed struct(u32) {
        // JEP106 continuation code
        JEP106CON: u4,
        // Register file size
        KCOUNT4: u4,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - peripheral ID0 register
    AXI_PERIPH_ID_0: packed struct(u32) {
        // Peripheral part number bits 0 to 7
        PARTNUM: u8,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - peripheral ID1 register
    AXI_PERIPH_ID_1: packed struct(u32) {
        // Peripheral part number bits 8 to 11
        PARTNUM: u4,
        // JEP106 identity bits 0 to 3
        JEP106I: u4,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - peripheral ID2 register
    AXI_PERIPH_ID_2: packed struct(u32) {
        // JEP106 Identity bits 4 to 6
        JEP106ID: u3,
        // JEP106 code flag
        JEDEC: u1,
        // Peripheral revision number
        REVISION: u4,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - peripheral ID3 register
    AXI_PERIPH_ID_3: packed struct(u32) {
        // Customer modification
        CUST_MOD_NUM: u4,
        // Customer version
        REV_AND: u4,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - component ID0 register
    AXI_COMP_ID_0: packed struct(u32) {
        // Preamble bits 0 to 7
        PREAMBLE: u8,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - component ID1 register
    AXI_COMP_ID_1: packed struct(u32) {
        // Preamble bits 8 to 11
        PREAMBLE: u4,
        // Component class
        CLASS: u4,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - component ID2 register
    AXI_COMP_ID_2: packed struct(u32) {
        // Preamble bits 12 to 19
        PREAMBLE: u8,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - component ID3 register
    AXI_COMP_ID_3: packed struct(u32) {
        // Preamble bits 20 to 27
        PREAMBLE: u8,
        // Reserved
        _reserved_8: u24,
    },
    // AXI interconnect - TARG x bus matrix issuing functionality register
    AXI_TARG1_FN_MOD_ISS_BM: packed struct(u32) {
        // READ_ISS_OVERRIDE
        READ_ISS_OVERRIDE: u1,
        // Switch matrix write issuing override for target
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x bus matrix issuing functionality register
    AXI_TARG2_FN_MOD_ISS_BM: packed struct(u32) {
        // READ_ISS_OVERRIDE
        READ_ISS_OVERRIDE: u1,
        // Switch matrix write issuing override for target
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x bus matrix issuing functionality register
    AXI_TARG3_FN_MOD_ISS_BM: packed struct(u32) {
        // READ_ISS_OVERRIDE
        READ_ISS_OVERRIDE: u1,
        // Switch matrix write issuing override for target
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x bus matrix issuing functionality register
    AXI_TARG4_FN_MOD_ISS_BM: packed struct(u32) {
        // READ_ISS_OVERRIDE
        READ_ISS_OVERRIDE: u1,
        // Switch matrix write issuing override for target
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x bus matrix issuing functionality register
    AXI_TARG5_FN_MOD_ISS_BM: packed struct(u32) {
        // READ_ISS_OVERRIDE
        READ_ISS_OVERRIDE: u1,
        // Switch matrix write issuing override for target
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x bus matrix issuing functionality register
    AXI_TARG6_FN_MOD_ISS_BM: packed struct(u32) {
        // READ_ISS_OVERRIDE
        READ_ISS_OVERRIDE: u1,
        // Switch matrix write issuing override for target
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x bus matrix issuing functionality register
    AXI_TARG7_FN_MOD_ISS_BM: packed struct(u32) {
        // READ_ISS_OVERRIDE
        READ_ISS_OVERRIDE: u1,
        // Switch matrix write issuing override for target
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x bus matrix functionality 2 register
    AXI_TARG1_FN_MOD2: packed struct(u32) {
        // Disable packing of beats to match the output data width
        BYPASS_MERGE: u1,
        // Reserved
        _reserved_1: u31,
    },
    // AXI interconnect - TARG x bus matrix functionality 2 register
    AXI_TARG2_FN_MOD2: packed struct(u32) {
        // Disable packing of beats to match the output data width
        BYPASS_MERGE: u1,
        // Reserved
        _reserved_1: u31,
    },
    // AXI interconnect - TARG x bus matrix functionality 2 register
    AXI_TARG7_FN_MOD2: packed struct(u32) {
        // Disable packing of beats to match the output data width
        BYPASS_MERGE: u1,
        // Reserved
        _reserved_1: u31,
    },
    // AXI interconnect - TARG x long burst functionality modification
    AXI_TARG1_FN_MOD_LB: packed struct(u32) {
        // Controls burst breaking of long bursts
        FN_MOD_LB: u1,
        // Reserved
        _reserved_1: u31,
    },
    // AXI interconnect - TARG x long burst functionality modification
    AXI_TARG2_FN_MOD_LB: packed struct(u32) {
        // Controls burst breaking of long bursts
        FN_MOD_LB: u1,
        // Reserved
        _reserved_1: u31,
    },
    // AXI interconnect - TARG x long burst functionality modification
    AXI_TARG1_FN_MOD: packed struct(u32) {
        // Override AMIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override AMIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x long burst functionality modification
    AXI_TARG2_FN_MOD: packed struct(u32) {
        // Override AMIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override AMIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - TARG x long burst functionality modification
    AXI_TARG7_FN_MOD: packed struct(u32) {
        // Override AMIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override AMIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x functionality modification 2 register
    AXI_INI1_FN_MOD2: packed struct(u32) {
        // Disables alteration of transactions by
        // the up-sizer unless required by the
        // protocol
        BYPASS_MERGE: u1,
        // Reserved
        _reserved_1: u31,
    },
    // AXI interconnect - INI x functionality modification 2 register
    AXI_INI3_FN_MOD2: packed struct(u32) {
        // Disables alteration of transactions by
        // the up-sizer unless required by the
        // protocol
        BYPASS_MERGE: u1,
        // Reserved
        _reserved_1: u31,
    },
    // AXI interconnect - INI x AHB functionality modification register
    AXI_INI1_FN_MOD_AHB: packed struct(u32) {
        // Converts all AHB-Lite write transactions to a series of single beat AXI
        RD_INC_OVERRIDE: u1,
        // Converts all AHB-Lite read transactions to a series of single beat AXI
        WR_INC_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x AHB functionality modification register
    AXI_INI3_FN_MOD_AHB: packed struct(u32) {
        // Converts all AHB-Lite write transactions to a series of single beat AXI
        RD_INC_OVERRIDE: u1,
        // Converts all AHB-Lite read transactions to a series of single beat AXI
        WR_INC_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x read QoS register
    AXI_INI1_READ_QOS: packed struct(u32) {
        // Read channel QoS setting
        AR_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x read QoS register
    AXI_INI2_READ_QOS: packed struct(u32) {
        // Read channel QoS setting
        AR_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x read QoS register
    AXI_INI3_READ_QOS: packed struct(u32) {
        // Read channel QoS setting
        AR_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x read QoS register
    AXI_INI4_READ_QOS: packed struct(u32) {
        // Read channel QoS setting
        AR_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x read QoS register
    AXI_INI5_READ_QOS: packed struct(u32) {
        // Read channel QoS setting
        AR_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x read QoS register
    AXI_INI6_READ_QOS: packed struct(u32) {
        // Read channel QoS setting
        AR_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x write QoS register
    AXI_INI1_WRITE_QOS: packed struct(u32) {
        // Write channel QoS setting
        AW_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x write QoS register
    AXI_INI2_WRITE_QOS: packed struct(u32) {
        // Write channel QoS setting
        AW_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x write QoS register
    AXI_INI3_WRITE_QOS: packed struct(u32) {
        // Write channel QoS setting
        AW_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x write QoS register
    AXI_INI4_WRITE_QOS: packed struct(u32) {
        // Write channel QoS setting
        AW_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x write QoS register
    AXI_INI5_WRITE_QOS: packed struct(u32) {
        // Write channel QoS setting
        AW_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x write QoS register
    AXI_INI6_WRITE_QOS: packed struct(u32) {
        // Write channel QoS setting
        AW_QOS: u4,
        // Reserved
        _reserved_4: u28,
    },
    // AXI interconnect - INI x issuing functionality modification register
    AXI_INI1_FN_MOD: packed struct(u32) {
        // Override ASIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override ASIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x issuing functionality modification register
    AXI_INI2_FN_MOD: packed struct(u32) {
        // Override ASIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override ASIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x issuing functionality modification register
    AXI_INI3_FN_MOD: packed struct(u32) {
        // Override ASIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override ASIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x issuing functionality modification register
    AXI_INI4_FN_MOD: packed struct(u32) {
        // Override ASIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override ASIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x issuing functionality modification register
    AXI_INI5_FN_MOD: packed struct(u32) {
        // Override ASIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override ASIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
    // AXI interconnect - INI x issuing functionality modification register
    AXI_INI6_FN_MOD: packed struct(u32) {
        // Override ASIB read issuing capability
        READ_ISS_OVERRIDE: u1,
        // Override ASIB write issuing capability
        WRITE_ISS_OVERRIDE: u1,
        // Reserved
        _reserved_2: u30,
    },
};

pub const AXI_BASE_ADDRESS: usize = 0x51000000;
pub const AXI_REGISTERS: *volatile AXI = @ptrFromInt(AXI_BASE_ADDRESS);
