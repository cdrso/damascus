// FDCAN1
pub const FDCAN1 = struct {
    // FDCAN Core Release Register
    FDCAN_CREL: packed struct(u32) {
        // Timestamp Day
        DAY: u8,
        // Timestamp Month
        MON: u8,
        // Timestamp Year
        YEAR: u4,
        // Sub-step of Core release
        SUBSTEP: u4,
        // Step of Core release
        STEP: u4,
        // Core release
        REL: u4,
    },
    // FDCAN Core Release Register
    FDCAN_ENDN: packed struct(u32) {
        // Endiannes Test Value
        ETV: u32,
    },
    // FDCAN Data Bit Timing and Prescaler Register
    FDCAN_DBTP: packed struct(u32) {
        // Synchronization Jump Width
        DSJW: u4,
        // Data time segment after sample point
        DTSEG2: u4,
        // Data time segment after sample point
        DTSEG1: u5,
        // Reserved
        _reserved_13: u3,
        // Data BIt Rate Prescaler
        DBRP: u5,
        // Reserved
        _reserved_21: u2,
        // Transceiver Delay Compensation
        TDC: u1,
        // Reserved
        _reserved_24: u8,
    },
    // FDCAN Test Register
    FDCAN_TEST: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // Loop Back mode
        LBCK: u1,
        // Loop Back mode
        TX: u2,
        // Control of Transmit Pin
        RX: u1,
        // Reserved
        _reserved_8: u24,
    },
    // FDCAN RAM Watchdog Register
    FDCAN_RWD: packed struct(u32) {
        // Watchdog configuration
        WDC: u8,
        // Watchdog value
        WDV: u8,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN CC Control Register
    FDCAN_CCCR: packed struct(u32) {
        // Initialization
        INIT: u1,
        // Configuration Change Enable
        CCE: u1,
        // ASM Restricted Operation Mode
        ASM: u1,
        // Clock Stop Acknowledge
        CSA: u1,
        // Clock Stop Request
        CSR: u1,
        // Bus Monitoring Mode
        MON: u1,
        // Disable Automatic Retransmission
        DAR: u1,
        // Test Mode Enable
        TEST: u1,
        // FD Operation Enable
        FDOE: u1,
        // FDCAN Bit Rate Switching
        BSE: u1,
        // Reserved
        _reserved_10: u2,
        // Protocol Exception Handling Disable
        PXHD: u1,
        // Edge Filtering during Bus Integration
        EFBI: u1,
        // TXP
        TXP: u1,
        // Non ISO Operation
        NISO: u1,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN Nominal Bit Timing and Prescaler Register
    FDCAN_NBTP: packed struct(u32) {
        // Nominal Time segment after sample point
        TSEG2: u7,
        // Reserved
        _reserved_7: u1,
        // Nominal Time segment before sample point
        NTSEG1: u8,
        // Bit Rate Prescaler
        NBRP: u9,
        // NSJW: Nominal (Re)Synchronization Jump Width
        NSJW: u7,
    },
    // FDCAN Timestamp Counter Configuration Register
    FDCAN_TSCC: packed struct(u32) {
        // Timestamp Select
        TSS: u2,
        // Reserved
        _reserved_2: u14,
        // Timestamp Counter Prescaler
        TCP: u4,
        // Reserved
        _reserved_20: u12,
    },
    // FDCAN Timestamp Counter Value Register
    FDCAN_TSCV: packed struct(u32) {
        // Timestamp Counter
        TSC: u16,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN Timeout Counter Configuration Register
    FDCAN_TOCC: packed struct(u32) {
        // Enable Timeout Counter
        ETOC: u1,
        // Timeout Select
        TOS: u2,
        // Reserved
        _reserved_3: u13,
        // Timeout Period
        TOP: u16,
    },
    // FDCAN Timeout Counter Value Register
    FDCAN_TOCV: packed struct(u32) {
        // Timeout Counter
        TOC: u16,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN Error Counter Register
    FDCAN_ECR: packed struct(u32) {
        // Transmit Error Counter
        TEC: u8,
        // Receive Error Counter
        TREC: u7,
        // Receive Error Passive
        RP: u1,
        // AN Error Logging
        CEL: u8,
        // Reserved
        _reserved_24: u8,
    },
    // FDCAN Protocol Status Register
    FDCAN_PSR: packed struct(u32) {
        // Last Error Code
        LEC: u3,
        // Activity
        ACT: u2,
        // Error Passive
        EP: u1,
        // Warning Status
        EW: u1,
        // Bus_Off Status
        BO: u1,
        // Data Last Error Code
        DLEC: u3,
        // ESI flag of last received FDCAN Message
        RESI: u1,
        // BRS flag of last received FDCAN Message
        RBRS: u1,
        // Received FDCAN Message
        REDL: u1,
        // Protocol Exception Event
        PXE: u1,
        // Reserved
        _reserved_15: u1,
        // Transmitter Delay Compensation Value
        TDCV: u7,
        // Reserved
        _reserved_23: u9,
    },
    // FDCAN Transmitter Delay Compensation Register
    FDCAN_TDCR: packed struct(u32) {
        // Transmitter Delay Compensation Filter Window Length
        TDCF: u7,
        // Reserved
        _reserved_7: u1,
        // Transmitter Delay Compensation Offset
        TDCO: u7,
        // Reserved
        _reserved_15: u17,
    },
    // FDCAN Interrupt Register
    FDCAN_IR: packed struct(u32) {
        // Rx FIFO 0 New Message
        RF0N: u1,
        // Rx FIFO 0 Full
        RF0W: u1,
        // Rx FIFO 0 Full
        RF0F: u1,
        // Rx FIFO 0 Message Lost
        RF0L: u1,
        // Rx FIFO 1 New Message
        RF1N: u1,
        // Rx FIFO 1 Watermark Reached
        RF1W: u1,
        // Rx FIFO 1 Watermark Reached
        RF1F: u1,
        // Rx FIFO 1 Message Lost
        RF1L: u1,
        // High Priority Message
        HPM: u1,
        // Transmission Completed
        TC: u1,
        // Transmission Cancellation Finished
        TCF: u1,
        // Tx FIFO Empty
        TEF: u1,
        // Tx Event FIFO New Entry
        TEFN: u1,
        // Tx Event FIFO Watermark Reached
        TEFW: u1,
        // Tx Event FIFO Full
        TEFF: u1,
        // Tx Event FIFO Element Lost
        TEFL: u1,
        // Timestamp Wraparound
        TSW: u1,
        // Message RAM Access Failure
        MRAF: u1,
        // Timeout Occurred
        TOO: u1,
        // Message stored to Dedicated Rx Buffer
        DRX: u1,
        // Reserved
        _reserved_20: u2,
        // Error Logging Overflow
        ELO: u1,
        // Error Passive
        EP: u1,
        // Warning Status
        EW: u1,
        // Bus_Off Status
        BO: u1,
        // Watchdog Interrupt
        WDI: u1,
        // Protocol Error in Arbitration Phase (Nominal Bit Time is used)
        PEA: u1,
        // Protocol Error in Data Phase (Data Bit Time is used)
        PED: u1,
        // Access to Reserved Address
        ARA: u1,
        // Reserved
        _reserved_30: u2,
    },
    // FDCAN Interrupt Enable Register
    FDCAN_IE: packed struct(u32) {
        // Rx FIFO 0 New Message Enable
        RF0NE: u1,
        // Rx FIFO 0 Full Enable
        RF0WE: u1,
        // Rx FIFO 0 Full Enable
        RF0FE: u1,
        // Rx FIFO 0 Message Lost Enable
        RF0LE: u1,
        // Rx FIFO 1 New Message Enable
        RF1NE: u1,
        // Rx FIFO 1 Watermark Reached Enable
        RF1WE: u1,
        // Rx FIFO 1 Watermark Reached Enable
        RF1FE: u1,
        // Rx FIFO 1 Message Lost Enable
        RF1LE: u1,
        // High Priority Message Enable
        HPME: u1,
        // Transmission Completed Enable
        TCE: u1,
        // Transmission Cancellation Finished Enable
        TCFE: u1,
        // Tx FIFO Empty Enable
        TEFE: u1,
        // Tx Event FIFO New Entry Enable
        TEFNE: u1,
        // Tx Event FIFO Watermark Reached Enable
        TEFWE: u1,
        // Tx Event FIFO Full Enable
        TEFFE: u1,
        // Tx Event FIFO Element Lost Enable
        TEFLE: u1,
        // Timestamp Wraparound Enable
        TSWE: u1,
        // Message RAM Access Failure Enable
        MRAFE: u1,
        // Timeout Occurred Enable
        TOOE: u1,
        // Message stored to Dedicated Rx Buffer Enable
        DRXE: u1,
        // Bit Error Corrected Interrupt Enable
        BECE: u1,
        // Bit Error Uncorrected Interrupt Enable
        BEUE: u1,
        // Error Logging Overflow Enable
        ELOE: u1,
        // Error Passive Enable
        EPE: u1,
        // Warning Status Enable
        EWE: u1,
        // Bus_Off Status Enable
        BOE: u1,
        // Watchdog Interrupt Enable
        WDIE: u1,
        // Protocol Error in Arbitration Phase Enable
        PEAE: u1,
        // Protocol Error in Data Phase Enable
        PEDE: u1,
        // Access to Reserved Address Enable
        ARAE: u1,
        // Reserved
        _reserved_30: u2,
    },
    // FDCAN Interrupt Line Select Register
    FDCAN_ILS: packed struct(u32) {
        // Rx FIFO 0 New Message Interrupt Line
        RF0NL: u1,
        // Rx FIFO 0 Watermark Reached Interrupt Line
        RF0WL: u1,
        // Rx FIFO 0 Full Interrupt Line
        RF0FL: u1,
        // Rx FIFO 0 Message Lost Interrupt Line
        RF0LL: u1,
        // Rx FIFO 1 New Message Interrupt Line
        RF1NL: u1,
        // Rx FIFO 1 Watermark Reached Interrupt Line
        RF1WL: u1,
        // Rx FIFO 1 Full Interrupt Line
        RF1FL: u1,
        // Rx FIFO 1 Message Lost Interrupt Line
        RF1LL: u1,
        // High Priority Message Interrupt Line
        HPML: u1,
        // Transmission Completed Interrupt Line
        TCL: u1,
        // Transmission Cancellation Finished Interrupt Line
        TCFL: u1,
        // Tx FIFO Empty Interrupt Line
        TEFL: u1,
        // Tx Event FIFO New Entry Interrupt Line
        TEFNL: u1,
        // Tx Event FIFO Watermark Reached Interrupt Line
        TEFWL: u1,
        // Tx Event FIFO Full Interrupt Line
        TEFFL: u1,
        // Tx Event FIFO Element Lost Interrupt Line
        TEFLL: u1,
        // Timestamp Wraparound Interrupt Line
        TSWL: u1,
        // Message RAM Access Failure Interrupt Line
        MRAFL: u1,
        // Timeout Occurred Interrupt Line
        TOOL: u1,
        // Message stored to Dedicated Rx Buffer Interrupt Line
        DRXL: u1,
        // Bit Error Corrected Interrupt Line
        BECL: u1,
        // Bit Error Uncorrected Interrupt Line
        BEUL: u1,
        // Error Logging Overflow Interrupt Line
        ELOL: u1,
        // Error Passive Interrupt Line
        EPL: u1,
        // Warning Status Interrupt Line
        EWL: u1,
        // Bus_Off Status
        BOL: u1,
        // Watchdog Interrupt Line
        WDIL: u1,
        // Protocol Error in Arbitration Phase Line
        PEAL: u1,
        // Protocol Error in Data Phase Line
        PEDL: u1,
        // Access to Reserved Address Line
        ARAL: u1,
        // Reserved
        _reserved_30: u2,
    },
    // FDCAN Interrupt Line Enable Register
    FDCAN_ILE: packed struct(u32) {
        // Enable Interrupt Line 0
        EINT0: u1,
        // Enable Interrupt Line 1
        EINT1: u1,
        // Reserved
        _reserved_2: u30,
    },
    // FDCAN Global Filter Configuration Register
    FDCAN_GFC: packed struct(u32) {
        // Reject Remote Frames Extended
        RRFE: u1,
        // Reject Remote Frames Standard
        RRFS: u1,
        // Accept Non-matching Frames Extended
        ANFE: u2,
        // Accept Non-matching Frames Standard
        ANFS: u2,
        // Reserved
        _reserved_6: u26,
    },
    // FDCAN Standard ID Filter Configuration Register
    FDCAN_SIDFC: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Filter List Standard Start Address
        FLSSA: u14,
        // List Size Standard
        LSS: u8,
        // Reserved
        _reserved_24: u8,
    },
    // FDCAN Extended ID Filter Configuration Register
    FDCAN_XIDFC: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Filter List Standard Start Address
        FLESA: u14,
        // List Size Extended
        LSE: u8,
        // Reserved
        _reserved_24: u8,
    },
    // FDCAN Extended ID and Mask Register
    FDCAN_XIDAM: packed struct(u32) {
        // Extended ID Mask
        EIDM: u29,
        // Reserved
        _reserved_29: u3,
    },
    // FDCAN High Priority Message Status Register
    FDCAN_HPMS: packed struct(u32) {
        // Buffer Index
        BIDX: u6,
        // Message Storage Indicator
        MSI: u2,
        // Filter Index
        FIDX: u7,
        // Filter List
        FLST: u1,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN New Data 1 Register
    FDCAN_NDAT1: packed struct(u32) {
        // New data
        ND0: u1,
        // New data
        ND1: u1,
        // New data
        ND2: u1,
        // New data
        ND3: u1,
        // New data
        ND4: u1,
        // New data
        ND5: u1,
        // New data
        ND6: u1,
        // New data
        ND7: u1,
        // New data
        ND8: u1,
        // New data
        ND9: u1,
        // New data
        ND10: u1,
        // New data
        ND11: u1,
        // New data
        ND12: u1,
        // New data
        ND13: u1,
        // New data
        ND14: u1,
        // New data
        ND15: u1,
        // New data
        ND16: u1,
        // New data
        ND17: u1,
        // New data
        ND18: u1,
        // New data
        ND19: u1,
        // New data
        ND20: u1,
        // New data
        ND21: u1,
        // New data
        ND22: u1,
        // New data
        ND23: u1,
        // New data
        ND24: u1,
        // New data
        ND25: u1,
        // New data
        ND26: u1,
        // New data
        ND27: u1,
        // New data
        ND28: u1,
        // New data
        ND29: u1,
        // New data
        ND30: u1,
        // New data
        ND31: u1,
    },
    // FDCAN New Data 2 Register
    FDCAN_NDAT2: packed struct(u32) {
        // New data
        ND32: u1,
        // New data
        ND33: u1,
        // New data
        ND34: u1,
        // New data
        ND35: u1,
        // New data
        ND36: u1,
        // New data
        ND37: u1,
        // New data
        ND38: u1,
        // New data
        ND39: u1,
        // New data
        ND40: u1,
        // New data
        ND41: u1,
        // New data
        ND42: u1,
        // New data
        ND43: u1,
        // New data
        ND44: u1,
        // New data
        ND45: u1,
        // New data
        ND46: u1,
        // New data
        ND47: u1,
        // New data
        ND48: u1,
        // New data
        ND49: u1,
        // New data
        ND50: u1,
        // New data
        ND51: u1,
        // New data
        ND52: u1,
        // New data
        ND53: u1,
        // New data
        ND54: u1,
        // New data
        ND55: u1,
        // New data
        ND56: u1,
        // New data
        ND57: u1,
        // New data
        ND58: u1,
        // New data
        ND59: u1,
        // New data
        ND60: u1,
        // New data
        ND61: u1,
        // New data
        ND62: u1,
        // New data
        ND63: u1,
    },
    // FDCAN Rx FIFO 0 Configuration Register
    FDCAN_RXF0C: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Rx FIFO 0 Start Address
        F0SA: u14,
        // Rx FIFO 0 Size
        F0S: u8,
        // FIFO 0 Watermark
        F0WM: u8,
    },
    // FDCAN Rx FIFO 0 Status Register
    FDCAN_RXF0S: packed struct(u32) {
        // Rx FIFO 0 Fill Level
        F0FL: u7,
        // Reserved
        _reserved_7: u1,
        // Rx FIFO 0 Get Index
        F0G: u6,
        // Reserved
        _reserved_14: u2,
        // Rx FIFO 0 Put Index
        F0P: u6,
        // Reserved
        _reserved_22: u2,
        // Rx FIFO 0 Full
        F0F: u1,
        // Rx FIFO 0 Message Lost
        RF0L: u1,
        // Reserved
        _reserved_26: u6,
    },
    // CAN Rx FIFO 0 Acknowledge Register
    FDCAN_RXF0A: packed struct(u32) {
        // Rx FIFO 0 Acknowledge Index
        FA01: u6,
        // Reserved
        _reserved_6: u26,
    },
    // FDCAN Rx Buffer Configuration Register
    FDCAN_RXBC: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Rx Buffer Start Address
        RBSA: u14,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN Rx FIFO 1 Configuration Register
    FDCAN_RXF1C: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Rx FIFO 1 Start Address
        F1SA: u14,
        // Rx FIFO 1 Size
        F1S: u7,
        // Reserved
        _reserved_23: u1,
        // Rx FIFO 1 Watermark
        F1WM: u7,
        // Reserved
        _reserved_31: u1,
    },
    // FDCAN Rx FIFO 1 Status Register
    FDCAN_RXF1S: packed struct(u32) {
        // Rx FIFO 1 Fill Level
        F1FL: u7,
        // Reserved
        _reserved_7: u1,
        // Rx FIFO 1 Get Index
        F1GI: u7,
        // Reserved
        _reserved_15: u1,
        // Rx FIFO 1 Put Index
        F1PI: u7,
        // Reserved
        _reserved_23: u1,
        // Rx FIFO 1 Full
        F1F: u1,
        // Rx FIFO 1 Message Lost
        RF1L: u1,
        // Reserved
        _reserved_26: u4,
        // Debug Message Status
        DMS: u2,
    },
    // FDCAN Rx FIFO 1 Acknowledge Register
    FDCAN_RXF1A: packed struct(u32) {
        // Rx FIFO 1 Acknowledge Index
        F1AI: u6,
        // Reserved
        _reserved_6: u26,
    },
    // FDCAN Rx Buffer Element Size Configuration Register
    FDCAN_RXESC: packed struct(u32) {
        // Rx FIFO 1 Data Field Size:
        F0DS: u3,
        // Reserved
        _reserved_3: u1,
        // Rx FIFO 0 Data Field Size:
        F1DS: u3,
        // Reserved
        _reserved_7: u1,
        // Rx Buffer Data Field Size:
        RBDS: u3,
        // Reserved
        _reserved_11: u21,
    },
    // FDCAN Tx Buffer Configuration Register
    FDCAN_TXBC: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Tx Buffers Start Address
        TBSA: u14,
        // Number of Dedicated Transmit Buffers
        NDTB: u6,
        // Reserved
        _reserved_22: u2,
        // Transmit FIFO/Queue Size
        TFQS: u6,
        // Tx FIFO/Queue Mode
        TFQM: u1,
        // Reserved
        _reserved_31: u1,
    },
    // FDCAN Tx FIFO/Queue Status Register
    FDCAN_TXFQS: packed struct(u32) {
        // Tx FIFO Free Level
        TFFL: u6,
        // Reserved
        _reserved_6: u2,
        // TFGI
        TFGI: u5,
        // Reserved
        _reserved_13: u3,
        // Tx FIFO/Queue Put Index
        TFQPI: u5,
        // Tx FIFO/Queue Full
        TFQF: u1,
        // Reserved
        _reserved_22: u10,
    },
    // FDCAN Tx Buffer Element Size Configuration Register
    FDCAN_TXESC: packed struct(u32) {
        // Tx Buffer Data Field Size:
        TBDS: u3,
        // Reserved
        _reserved_3: u29,
    },
    // FDCAN Tx Buffer Request Pending Register
    FDCAN_TXBRP: packed struct(u32) {
        // Transmission Request Pending
        TRP: u32,
    },
    // FDCAN Tx Buffer Add Request Register
    FDCAN_TXBAR: packed struct(u32) {
        // Add Request
        AR: u32,
    },
    // FDCAN Tx Buffer Cancellation Request Register
    FDCAN_TXBCR: packed struct(u32) {
        // Cancellation Request
        CR: u32,
    },
    // FDCAN Tx Buffer Transmission Occurred Register
    FDCAN_TXBTO: packed struct(u32) {
        // Transmission Occurred.
        TO: u32,
    },
    // FDCAN Tx Buffer Cancellation Finished Register
    FDCAN_TXBCF: packed struct(u32) {
        // Cancellation Finished
        CF: u32,
    },
    // FDCAN Tx Buffer Transmission Interrupt Enable Register
    FDCAN_TXBTIE: packed struct(u32) {
        // Transmission Interrupt Enable
        TIE: u32,
    },
    // FDCAN Tx Buffer Cancellation Finished Interrupt Enable Register
    FDCAN_TXBCIE: packed struct(u32) {
        // Cancellation Finished Interrupt Enable
        CF: u32,
    },
    // FDCAN Tx Event FIFO Configuration Register
    FDCAN_TXEFC: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Event FIFO Start Address
        EFSA: u14,
        // Event FIFO Size
        EFS: u6,
        // Reserved
        _reserved_22: u2,
        // Event FIFO Watermark
        EFWM: u6,
        // Reserved
        _reserved_30: u2,
    },
    // FDCAN Tx Event FIFO Status Register
    FDCAN_TXEFS: packed struct(u32) {
        // Event FIFO Fill Level
        EFFL: u6,
        // Reserved
        _reserved_6: u2,
        // Event FIFO Get Index.
        EFGI: u5,
        // Reserved
        _reserved_13: u3,
        // Event FIFO put index.
        EFPI: u5,
        // Reserved
        _reserved_21: u3,
        // Event FIFO Full.
        EFF: u1,
        // Tx Event FIFO Element Lost.
        TEFL: u1,
        // Reserved
        _reserved_26: u6,
    },
    // FDCAN Tx Event FIFO Acknowledge Register
    FDCAN_TXEFA: packed struct(u32) {
        // Event FIFO Acknowledge Index
        EFAI: u5,
        // Reserved
        _reserved_5: u27,
    },
    // FDCAN TT Trigger Memory Configuration Register
    FDCAN_TTTMC: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Trigger Memory Start Address
        TMSA: u14,
        // Trigger Memory Elements
        TME: u7,
        // Reserved
        _reserved_23: u9,
    },
    // FDCAN TT Reference Message Configuration Register
    FDCAN_TTRMC: packed struct(u32) {
        // Reference Identifier.
        RID: u29,
        // Reserved
        _reserved_29: u1,
        // Extended Identifier
        XTD: u1,
        // Reference Message Payload Select
        RMPS: u1,
    },
    // FDCAN TT Operation Configuration Register
    FDCAN_TTOCF: packed struct(u32) {
        // Operation Mode
        OM: u2,
        // Reserved
        _reserved_2: u1,
        // Gap Enable
        GEN: u1,
        // Time Master
        TM: u1,
        // LD of Synchronization Deviation Limit
        LDSDL: u3,
        // Initial Reference Trigger Offset
        IRTO: u7,
        // Enable External Clock Synchronization
        EECS: u1,
        // Application Watchdog Limit
        AWL: u8,
        // Enable Global Time Filtering
        EGTF: u1,
        // Enable Clock Calibration
        ECC: u1,
        // Event Trigger Polarity
        EVTP: u1,
        // Reserved
        _reserved_27: u5,
    },
    // FDCAN TT Matrix Limits Register
    FDCAN_TTMLM: packed struct(u32) {
        // Cycle Count Max
        CCM: u6,
        // Cycle Start Synchronization
        CSS: u2,
        // Tx Enable Window
        TXEW: u4,
        // Reserved
        _reserved_12: u4,
        // Expected Number of Tx Triggers
        ENTT: u12,
        // Reserved
        _reserved_28: u4,
    },
    // FDCAN TUR Configuration Register
    FDCAN_TURCF: packed struct(u32) {
        // Numerator Configuration Low.
        NCL: u16,
        // Denominator Configuration.
        DC: u14,
        // Reserved
        _reserved_30: u1,
        // Enable Local Time
        ELT: u1,
    },
    // FDCAN TT Operation Control Register
    FDCAN_TTOCN: packed struct(u32) {
        // Set Global time
        SGT: u1,
        // External Clock Synchronization
        ECS: u1,
        // Stop Watch Polarity
        SWP: u1,
        // Stop Watch Source.
        SWS: u2,
        // Register Time Mark Interrupt Pulse Enable
        RTIE: u1,
        // Register Time Mark Compare
        TMC: u2,
        // Trigger Time Mark Interrupt Pulse Enable
        TTIE: u1,
        // Gap Control Select
        GCS: u1,
        // Finish Gap.
        FGP: u1,
        // Time Mark Gap
        TMG: u1,
        // Next is Gap
        NIG: u1,
        // External Synchronization Control
        ESCN: u1,
        // Reserved
        _reserved_14: u1,
        // TT Operation Control Register Locked
        LCKC: u1,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN TT Global Time Preset Register
    CAN_TTGTP: packed struct(u32) {
        // Time Preset
        NCL: u16,
        // Cycle Time Target Phase
        CTP: u16,
    },
    // FDCAN TT Time Mark Register
    FDCAN_TTTMK: packed struct(u32) {
        // Time Mark
        TM: u16,
        // Time Mark Cycle Code
        TICC: u7,
        // Reserved
        _reserved_23: u8,
        // TT Time Mark Register Locked
        LCKM: u1,
    },
    // FDCAN TT Interrupt Register
    FDCAN_TTIR: packed struct(u32) {
        // Start of Basic Cycle
        SBC: u1,
        // Start of Matrix Cycle
        SMC: u1,
        // Change of Synchronization Mode
        CSM: u1,
        // Start of Gap
        SOG: u1,
        // Register Time Mark Interrupt.
        RTMI: u1,
        // Trigger Time Mark Event Internal
        TTMI: u1,
        // Stop Watch Event
        SWE: u1,
        // Global Time Wrap
        GTW: u1,
        // Global Time Discontinuity
        GTD: u1,
        // Global Time Error
        GTE: u1,
        // Tx Count Underflow
        TXU: u1,
        // Tx Count Overflow
        TXO: u1,
        // Scheduling Error 1
        SE1: u1,
        // Scheduling Error 2
        SE2: u1,
        // Error Level Changed.
        ELC: u1,
        // Initialization Watch Trigger
        IWTG: u1,
        // Watch Trigger
        WT: u1,
        // Application Watchdog
        AW: u1,
        // Configuration Error
        CER: u1,
        // Reserved
        _reserved_19: u13,
    },
    // FDCAN TT Interrupt Enable Register
    FDCAN_TTIE: packed struct(u32) {
        // Start of Basic Cycle Interrupt Enable
        SBCE: u1,
        // Start of Matrix Cycle Interrupt Enable
        SMCE: u1,
        // Change of Synchronization Mode Interrupt Enable
        CSME: u1,
        // Start of Gap Interrupt Enable
        SOGE: u1,
        // Register Time Mark Interrupt Enable
        RTMIE: u1,
        // Trigger Time Mark Event Internal Interrupt Enable
        TTMIE: u1,
        // Stop Watch Event Interrupt Enable
        SWEE: u1,
        // Global Time Wrap Interrupt Enable
        GTWE: u1,
        // Global Time Discontinuity Interrupt Enable
        GTDE: u1,
        // Global Time Error Interrupt Enable
        GTEE: u1,
        // Tx Count Underflow Interrupt Enable
        TXUE: u1,
        // Tx Count Overflow Interrupt Enable
        TXOE: u1,
        // Scheduling Error 1 Interrupt Enable
        SE1E: u1,
        // Scheduling Error 2 Interrupt Enable
        SE2E: u1,
        // Change Error Level Interrupt Enable
        ELCE: u1,
        // Initialization Watch Trigger Interrupt Enable
        IWTGE: u1,
        // Watch Trigger Interrupt Enable
        WTE: u1,
        // Application Watchdog Interrupt Enable
        AWE: u1,
        // Configuration Error Interrupt Enable
        CERE: u1,
        // Reserved
        _reserved_19: u13,
    },
    // FDCAN TT Interrupt Line Select Register
    FDCAN_TTILS: packed struct(u32) {
        // Start of Basic Cycle Interrupt Line
        SBCL: u1,
        // Start of Matrix Cycle Interrupt Line
        SMCL: u1,
        // Change of Synchronization Mode Interrupt Line
        CSML: u1,
        // Start of Gap Interrupt Line
        SOGL: u1,
        // Register Time Mark Interrupt Line
        RTMIL: u1,
        // Trigger Time Mark Event Internal Interrupt Line
        TTMIL: u1,
        // Stop Watch Event Interrupt Line
        SWEL: u1,
        // Global Time Wrap Interrupt Line
        GTWL: u1,
        // Global Time Discontinuity Interrupt Line
        GTDL: u1,
        // Global Time Error Interrupt Line
        GTEL: u1,
        // Tx Count Underflow Interrupt Line
        TXUL: u1,
        // Tx Count Overflow Interrupt Line
        TXOL: u1,
        // Scheduling Error 1 Interrupt Line
        SE1L: u1,
        // Scheduling Error 2 Interrupt Line
        SE2L: u1,
        // Change Error Level Interrupt Line
        ELCL: u1,
        // Initialization Watch Trigger Interrupt Line
        IWTGL: u1,
        // Watch Trigger Interrupt Line
        WTL: u1,
        // Application Watchdog Interrupt Line
        AWL: u1,
        // Configuration Error Interrupt Line
        CERL: u1,
        // Reserved
        _reserved_19: u13,
    },
    // FDCAN TT Operation Status Register
    FDCAN_TTOST: packed struct(u32) {
        // Error Level
        EL: u2,
        // Master State.
        MS: u2,
        // Synchronization State
        SYS: u2,
        // Quality of Global Time Phase
        GTP: u1,
        // Quality of Clock Speed
        QCS: u1,
        // Reference Trigger Offset
        RTO: u8,
        // Reserved
        _reserved_16: u6,
        // Wait for Global Time Discontinuity
        WGTD: u1,
        // Gap Finished Indicator.
        GFI: u1,
        // Time Master Priority
        TMP: u3,
        // Gap Started Indicator.
        GSI: u1,
        // Wait for Event
        WFE: u1,
        // Application Watchdog Event
        AWE: u1,
        // Wait for External Clock Synchronization
        WECS: u1,
        // Schedule Phase Lock
        SPL: u1,
    },
    // FDCAN TUR Numerator Actual Register
    FDCAN_TURNA: packed struct(u32) {
        // Numerator Actual Value
        NAV: u18,
        // Reserved
        _reserved_18: u14,
    },
    // FDCAN TT Local and Global Time Register
    FDCAN_TTLGT: packed struct(u32) {
        // Local Time
        LT: u16,
        // Global Time
        GT: u16,
    },
    // FDCAN TT Cycle Time and Count Register
    FDCAN_TTCTC: packed struct(u32) {
        // Cycle Time
        CT: u16,
        // Cycle Count
        CC: u6,
        // Reserved
        _reserved_22: u10,
    },
    // FDCAN TT Capture Time Register
    FDCAN_TTCPT: packed struct(u32) {
        // Cycle Count Value
        CT: u6,
        // Reserved
        _reserved_6: u10,
        // Stop Watch Value
        SWV: u16,
    },
    // FDCAN TT Cycle Sync Mark Register
    FDCAN_TTCSM: packed struct(u32) {
        // Cycle Sync Mark
        CSM: u16,
        // Reserved
        _reserved_16: u16,
    },
    // FDCAN TT Trigger Select Register
    FDCAN_TTTS: packed struct(u32) {
        // Stop watch trigger input selection
        SWTDEL: u2,
        // Reserved
        _reserved_2: u2,
        // Event trigger input selection
        EVTSEL: u2,
        // Reserved
        _reserved_6: u26,
    },
};

pub const FDCAN1_BASE_ADDRESS: usize = 0x4000A000;
pub const FDCAN1_REGISTERS: *volatile FDCAN1 = @ptrFromInt(FDCAN1_BASE_ADDRESS);
