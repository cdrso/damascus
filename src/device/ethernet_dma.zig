// Ethernet: DMA mode register (DMA)
pub const Ethernet_DMA = struct {
    // DMA mode register
    DMAMR: packed struct(u32) {
        // Software Reset
        SWR: u1,
        // DMA Tx or Rx Arbitration Scheme
        DA: u1,
        // Reserved
        _reserved_2: u9,
        // Transmit priority
        TXPR: u1,
        // Priority ratio
        PR: u3,
        // Reserved
        _reserved_15: u1,
        // Interrupt Mode
        INTM: u1,
        // Reserved
        _reserved_17: u15,
    },
    // System bus mode register
    DMASBMR: packed struct(u32) {
        // Fixed Burst Length
        FB: u1,
        // Reserved
        _reserved_1: u11,
        // Address-Aligned Beats
        AAL: u1,
        // Reserved
        _reserved_13: u1,
        // Mixed Burst
        MB: u1,
        // Rebuild INCRx Burst
        RB: u1,
        // Reserved
        _reserved_16: u16,
    },
    // Interrupt status register
    DMAISR: packed struct(u32) {
        // DMA Channel Interrupt Status
        DC0IS: u1,
        // Reserved
        _reserved_1: u15,
        // MTL Interrupt Status
        MTLIS: u1,
        // MAC Interrupt Status
        MACIS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // Debug status register
    DMADSR: packed struct(u32) {
        // AHB Master Write Channel
        AXWHSTS: u1,
        // Reserved
        _reserved_1: u7,
        // DMA Channel Receive Process State
        RPS0: u4,
        // DMA Channel Transmit Process State
        TPS0: u4,
        // Reserved
        _reserved_16: u16,
    },
    // Channel control register
    DMACCR: packed struct(u32) {
        // Maximum Segment Size
        MSS: u14,
        // Reserved
        _reserved_14: u2,
        // 8xPBL mode
        PBLX8: u1,
        // Reserved
        _reserved_17: u1,
        // Descriptor Skip Length
        DSL: u3,
        // Reserved
        _reserved_21: u11,
    },
    // Channel transmit control register
    DMACTxCR: packed struct(u32) {
        // Start or Stop Transmission Command
        ST: u1,
        // Reserved
        _reserved_1: u3,
        // Operate on Second Packet
        OSF: u1,
        // Reserved
        _reserved_5: u7,
        // TCP Segmentation Enabled
        TSE: u1,
        // Reserved
        _reserved_13: u3,
        // Transmit Programmable Burst Length
        TXPBL: u6,
        // Reserved
        _reserved_22: u10,
    },
    // Channel receive control register
    DMACRxCR: packed struct(u32) {
        // Start or Stop Receive Command
        SR: u1,
        // Receive Buffer size
        RBSZ: u14,
        // Reserved
        _reserved_15: u1,
        // RXPBL
        RXPBL: u6,
        // Reserved
        _reserved_22: u9,
        // DMA Rx Channel Packet Flush
        RPF: u1,
    },
    // Channel Tx descriptor list address register
    DMACTxDLAR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Start of Transmit List
        TDESLA: u30,
    },
    // Channel Rx descriptor list address register
    DMACRxDLAR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Start of Receive List
        RDESLA: u30,
    },
    // Channel Tx descriptor tail pointer register
    DMACTxDTPR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Transmit Descriptor Tail Pointer
        TDT: u30,
    },
    // Channel Rx descriptor tail pointer register
    DMACRxDTPR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Receive Descriptor Tail Pointer
        RDT: u30,
    },
    // Channel Tx descriptor ring length register
    DMACTxRLR: packed struct(u32) {
        // Transmit Descriptor Ring Length
        TDRL: u10,
        // Reserved
        _reserved_10: u22,
    },
    // Channel Rx descriptor ring length register
    DMACRxRLR: packed struct(u32) {
        // Receive Descriptor Ring Length
        RDRL: u10,
        // Reserved
        _reserved_10: u22,
    },
    // Channel interrupt enable register
    DMACIER: packed struct(u32) {
        // Transmit Interrupt Enable
        TIE: u1,
        // Transmit Stopped Enable
        TXSE: u1,
        // Transmit Buffer Unavailable Enable
        TBUE: u1,
        // Reserved
        _reserved_3: u3,
        // Receive Interrupt Enable
        RIE: u1,
        // Receive Buffer Unavailable Enable
        RBUE: u1,
        // Receive Stopped Enable
        RSE: u1,
        // Receive Watchdog Timeout Enable
        RWTE: u1,
        // Early Transmit Interrupt Enable
        ETIE: u1,
        // Early Receive Interrupt Enable
        ERIE: u1,
        // Fatal Bus Error Enable
        FBEE: u1,
        // Context Descriptor Error Enable
        CDEE: u1,
        // Abnormal Interrupt Summary Enable
        AIE: u1,
        // Normal Interrupt Summary Enable
        NIE: u1,
        // Reserved
        _reserved_16: u16,
    },
    // Channel Rx interrupt watchdog timer register
    DMACRxIWTR: packed struct(u32) {
        // Receive Interrupt Watchdog Timer Count
        RWT: u8,
        // Reserved
        _reserved_8: u24,
    },
    // Channel current application transmit descriptor register
    DMACCATxDR: packed struct(u32) {
        // Application Transmit Descriptor Address Pointer
        CURTDESAPTR: u32,
    },
    // Channel current application receive descriptor register
    DMACCARxDR: packed struct(u32) {
        // Application Receive Descriptor Address Pointer
        CURRDESAPTR: u32,
    },
    // Channel current application transmit buffer register
    DMACCATxBR: packed struct(u32) {
        // Application Transmit Buffer Address Pointer
        CURTBUFAPTR: u32,
    },
    // Channel current application receive buffer register
    DMACCARxBR: packed struct(u32) {
        // Application Receive Buffer Address Pointer
        CURRBUFAPTR: u32,
    },
    // Channel status register
    DMACSR: packed struct(u32) {
        // Transmit Interrupt
        TI: u1,
        // Transmit Process Stopped
        TPS: u1,
        // Transmit Buffer Unavailable
        TBU: u1,
        // Reserved
        _reserved_3: u3,
        // Receive Interrupt
        RI: u1,
        // Receive Buffer Unavailable
        RBU: u1,
        // Receive Process Stopped
        RPS: u1,
        // Receive Watchdog Timeout
        RWT: u1,
        // Early Transmit Interrupt
        ET: u1,
        // Early Receive Interrupt
        ER: u1,
        // Fatal Bus Error
        FBE: u1,
        // Context Descriptor Error
        CDE: u1,
        // Abnormal Interrupt Summary
        AIS: u1,
        // Normal Interrupt Summary
        NIS: u1,
        // Tx DMA Error Bits
        TEB: u3,
        // Rx DMA Error Bits
        REB: u3,
        // Reserved
        _reserved_22: u10,
    },
    // Channel missed frame count register
    DMACMFCR: packed struct(u32) {
        // Dropped Packet Counters
        MFC: u11,
        // Reserved
        _reserved_11: u4,
        // Overflow status of the MFC Counter
        MFCO: u1,
        // Reserved
        _reserved_16: u16,
    },
};

pub const Ethernet_DMA_BASE_ADDRESS: usize = 0x40029000;
pub const Ethernet_DMA_REGISTERS: *volatile Ethernet_DMA = @ptrFromInt(Ethernet_DMA_BASE_ADDRESS);
