// Ethernet: MTL mode register (MTL)
pub const Ethernet_MTL = struct {
    // Operating mode Register
    MTLOMR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // DTXSTS
        DTXSTS: u1,
        // Reserved
        _reserved_2: u6,
        // CNTPRST
        CNTPRST: u1,
        // CNTCLR
        CNTCLR: u1,
        // Reserved
        _reserved_10: u22,
    },
    // Interrupt status Register
    MTLISR: packed struct(u32) {
        // Queue interrupt status
        Q0IS: u1,
        // Reserved
        _reserved_1: u31,
    },
    // Tx queue operating mode Register
    MTLTxQOMR: packed struct(u32) {
        // Flush Transmit Queue
        FTQ: u1,
        // Transmit Store and Forward
        TSF: u1,
        // Transmit Queue Enable
        TXQEN: u2,
        // Transmit Threshold Control
        TTC: u3,
        // Reserved
        _reserved_7: u9,
        // Transmit Queue Size
        TQS: u3,
        // Reserved
        _reserved_19: u13,
    },
    // Tx queue underflow register
    MTLTxQUR: packed struct(u32) {
        // Underflow Packet Counter
        UFFRMCNT: u11,
        // UFCNTOVF
        UFCNTOVF: u1,
        // Reserved
        _reserved_12: u20,
    },
    // Tx queue debug Register
    MTLTxQDR: packed struct(u32) {
        // TXQPAUSED
        TXQPAUSED: u1,
        // TRCSTS
        TRCSTS: u2,
        // TWCSTS
        TWCSTS: u1,
        // TXQSTS
        TXQSTS: u1,
        // TXSTSFSTS
        TXSTSFSTS: u1,
        // Reserved
        _reserved_6: u10,
        // PTXQ
        PTXQ: u3,
        // Reserved
        _reserved_19: u1,
        // STXSTSF
        STXSTSF: u3,
        // Reserved
        _reserved_23: u9,
    },
    // Queue interrupt control status Register
    MTLQICSR: packed struct(u32) {
        // TXUNFIS
        TXUNFIS: u1,
        // Reserved
        _reserved_1: u7,
        // TXUIE
        TXUIE: u1,
        // Reserved
        _reserved_9: u7,
        // RXOVFIS
        RXOVFIS: u1,
        // Reserved
        _reserved_17: u7,
        // RXOIE
        RXOIE: u1,
        // Reserved
        _reserved_25: u7,
    },
    // Rx queue operating mode register
    MTLRxQOMR: packed struct(u32) {
        // RTC
        RTC: u2,
        // Reserved
        _reserved_2: u1,
        // FUP
        FUP: u1,
        // FEP
        FEP: u1,
        // RSF
        RSF: u1,
        // DIS_TCP_EF
        DIS_TCP_EF: u1,
        // EHFC
        EHFC: u1,
        // RFA
        RFA: u3,
        // Reserved
        _reserved_11: u3,
        // RFD
        RFD: u3,
        // Reserved
        _reserved_17: u3,
        // RQS
        RQS: u3,
        // Reserved
        _reserved_23: u9,
    },
    // Rx queue missed packet and overflow counter register
    MTLRxQMPOCR: packed struct(u32) {
        // OVFPKTCNT
        OVFPKTCNT: u11,
        // OVFCNTOVF
        OVFCNTOVF: u1,
        // Reserved
        _reserved_12: u4,
        // MISPKTCNT
        MISPKTCNT: u11,
        // MISCNTOVF
        MISCNTOVF: u1,
        // Reserved
        _reserved_28: u4,
    },
    // Rx queue debug register
    MTLRxQDR: packed struct(u32) {
        // RWCSTS
        RWCSTS: u1,
        // RRCSTS
        RRCSTS: u2,
        // Reserved
        _reserved_3: u1,
        // RXQSTS
        RXQSTS: u2,
        // Reserved
        _reserved_6: u10,
        // PRXQ
        PRXQ: u14,
        // Reserved
        _reserved_30: u2,
    },
};

pub const Ethernet_MTL_BASE_ADDRESS: usize = 0x40028C00;
pub const Ethernet_MTL_REGISTERS: *volatile Ethernet_MTL = @ptrFromInt(Ethernet_MTL_BASE_ADDRESS);
