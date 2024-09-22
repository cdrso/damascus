// Receiver Interface
pub const SPDIFRX = struct {
    // Control register
    CR: packed struct(u32) {
        // Peripheral Block Enable
        SPDIFRXEN: u2,
        // Receiver DMA ENable for data flow
        RXDMAEN: u1,
        // STerEO Mode
        RXSTEO: u1,
        // RX Data format
        DRFMT: u2,
        // Mask Parity error bit
        PMSK: u1,
        // Mask of Validity bit
        VMSK: u1,
        // Mask of channel status and user bits
        CUMSK: u1,
        // Mask of Preamble Type bits
        PTMSK: u1,
        // Control Buffer DMA ENable for control flow
        CBDMAEN: u1,
        // Channel Selection
        CHSEL: u1,
        // Maximum allowed re-tries during synchronization phase
        NBTR: u2,
        // Wait For Activity
        WFA: u1,
        // Reserved
        _reserved_15: u1,
        // input selection
        INSEL: u3,
        // Reserved
        _reserved_19: u1,
        // Symbol Clock Enable
        CKSEN: u1,
        // Backup Symbol Clock Enable
        CKSBKPEN: u1,
        // Reserved
        _reserved_22: u10,
    },
    // Interrupt mask register
    IMR: packed struct(u32) {
        // RXNE interrupt enable
        RXNEIE: u1,
        // Control Buffer Ready Interrupt Enable
        CSRNEIE: u1,
        // Parity error interrupt enable
        PERRIE: u1,
        // Overrun error Interrupt Enable
        OVRIE: u1,
        // Synchronization Block Detected Interrupt Enable
        SBLKIE: u1,
        // Synchronization Done
        SYNCDIE: u1,
        // Serial Interface Error Interrupt Enable
        IFEIE: u1,
        // Reserved
        _reserved_7: u25,
    },
    // Status register
    SR: packed struct(u32) {
        // Read data register not empty
        RXNE: u1,
        // Control Buffer register is not empty
        CSRNE: u1,
        // Parity error
        PERR: u1,
        // Overrun error
        OVR: u1,
        // Synchronization Block Detected
        SBD: u1,
        // Synchronization Done
        SYNCD: u1,
        // Framing error
        FERR: u1,
        // Synchronization error
        SERR: u1,
        // Time-out error
        TERR: u1,
        // Reserved
        _reserved_9: u7,
        // Duration of 5 symbols counted with SPDIF_CLK
        WIDTH5: u15,
        // Reserved
        _reserved_31: u1,
    },
    // Interrupt Flag Clear register
    IFCR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Clears the Parity error flag
        PERRCF: u1,
        // Clears the Overrun error flag
        OVRCF: u1,
        // Clears the Synchronization Block Detected flag
        SBDCF: u1,
        // Clears the Synchronization Done flag
        SYNCDCF: u1,
        // Reserved
        _reserved_6: u26,
    },
    // Data input register
    DR_00: packed struct(u32) {
        // Parity Error bit
        DR: u24,
        // Parity Error bit
        PE: u1,
        // Validity bit
        V: u1,
        // User bit
        U: u1,
        // Channel Status bit
        C: u1,
        // Preamble Type
        PT: u2,
        // Reserved
        _reserved_30: u2,
    },
    // Channel Status register
    CSR: packed struct(u32) {
        // User data information
        USR: u16,
        // Channel A status information
        CS: u8,
        // Start Of Block
        SOB: u1,
        // Reserved
        _reserved_25: u7,
    },
    // Debug Information register
    DIR: packed struct(u32) {
        // Threshold HIGH
        THI: u13,
        // Reserved
        _reserved_13: u3,
        // Threshold LOW
        TLO: u13,
        // Reserved
        _reserved_29: u3,
    },
    // SPDIFRX version register
    VERR: packed struct(u32) {
        // Minor revision
        MINREV: u4,
        // Major revision
        MAJREV: u4,
        // Reserved
        _reserved_8: u24,
    },
    // SPDIFRX identification register
    IDR: packed struct(u32) {
        // SPDIFRX identifier
        ID: u32,
    },
    // SPDIFRX size identification register
    SIDR: packed struct(u32) {
        // Size identification
        SID: u32,
    },
    // Data input register
    DR_01: packed struct(u32) {
        // Parity Error bit
        PE: u1,
        // Validity bit
        V: u1,
        // User bit
        U: u1,
        // Channel Status bit
        C: u1,
        // Preamble Type
        PT: u2,
        // Reserved
        _reserved_6: u2,
        // Data value
        DR: u24,
    },
    // Data input register
    DR_10: packed struct(u32) {
        // Data value
        DRNL1: u16,
        // Data value
        DRNL2: u16,
    },
};

pub const SPDIFRX_BASE_ADDRESS: usize = 0x40004000;
pub const SPDIFRX_REGISTERS: *volatile SPDIFRX = @ptrFromInt(SPDIFRX_BASE_ADDRESS);
