// LPUART1
pub const LPUART1 = struct {
    // Control register 1
    CR1: packed struct(u32) {
        // USART enable
        UE: u1,
        // USART enable in Stop mode
        UESM: u1,
        // Receiver enable
        RE: u1,
        // Transmitter enable
        TE: u1,
        // IDLE interrupt enable
        IDLEIE: u1,
        // RXNE interrupt enable
        RXNEIE: u1,
        // Transmission complete interrupt enable
        TCIE: u1,
        // interrupt enable
        TXEIE: u1,
        // PE interrupt enable
        PEIE: u1,
        // Parity selection
        PS: u1,
        // Parity control enable
        PCE: u1,
        // Receiver wakeup method
        WAKE: u1,
        // Word length
        M0: u1,
        // Mute mode enable
        MME: u1,
        // Character match interrupt enable
        CMIE: u1,
        // Reserved
        _reserved_15: u1,
        // Driver Enable deassertion time
        DEDT: u5,
        // Driver Enable assertion time
        DEAT: u5,
        // Reserved
        _reserved_26: u2,
        // Word length
        M1: u1,
        // FIFO mode enable
        FIFOEN: u1,
        // TXFIFO empty interrupt enable
        TXFEIE: u1,
        // RXFIFO Full interrupt enable
        RXFFIE: u1,
    },
    // Control register 2
    CR2: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // 7-bit Address Detection/4-bit Address Detection
        ADDM7: u1,
        // Reserved
        _reserved_5: u7,
        // STOP bits
        STOP: u2,
        // Reserved
        _reserved_14: u1,
        // Swap TX/RX pins
        SWAP: u1,
        // RX pin active level inversion
        RXINV: u1,
        // TX pin active level inversion
        TXINV: u1,
        // Binary data inversion
        DATAINV: u1,
        // Most significant bit first
        MSBFIRST: u1,
        // Reserved
        _reserved_20: u4,
        // Address of the USART node
        ADD: u8,
    },
    // Control register 3
    CR3: packed struct(u32) {
        // Error interrupt enable
        EIE: u1,
        // Reserved
        _reserved_1: u2,
        // Half-duplex selection
        HDSEL: u1,
        // Reserved
        _reserved_4: u2,
        // DMA enable receiver
        DMAR: u1,
        // DMA enable transmitter
        DMAT: u1,
        // RTS enable
        RTSE: u1,
        // CTS enable
        CTSE: u1,
        // CTS interrupt enable
        CTSIE: u1,
        // Reserved
        _reserved_11: u1,
        // Overrun Disable
        OVRDIS: u1,
        // DMA Disable on Reception Error
        DDRE: u1,
        // Driver enable mode
        DEM: u1,
        // Driver enable polarity selection
        DEP: u1,
        // Reserved
        _reserved_16: u4,
        // Wakeup from Stop mode interrupt flag selection
        WUS: u2,
        // Wakeup from Stop mode interrupt enable
        WUFIE: u1,
        // TXFIFO threshold interrupt enable
        TXFTIE: u1,
        // Reserved
        _reserved_24: u1,
        // Receive FIFO threshold configuration
        RXFTCFG: u3,
        // RXFIFO threshold interrupt enable
        RXFTIE: u1,
        // TXFIFO threshold configuration
        TXFTCFG: u3,
    },
    // Baud rate register
    BRR: packed struct(u32) {
        // BRR
        BRR: u20,
        // Reserved
        _reserved_20: u12,
    },
    // Guard time and prescaler register
    GTPR: packed struct(u32) {
        // Prescaler value
        PSC: u8,
        // Guard time value
        GT: u8,
        // Reserved
        _reserved_16: u16,
    },
    // Receiver timeout register
    RTOR: packed struct(u32) {
        // Receiver timeout value
        RTO: u24,
        // Block Length
        BLEN: u8,
    },
    // Request register
    RQR: packed struct(u32) {
        // Auto baud rate request
        ABRRQ: u1,
        // Send break request
        SBKRQ: u1,
        // Mute mode request
        MMRQ: u1,
        // Receive data flush request
        RXFRQ: u1,
        // Transmit data flush request
        TXFRQ: u1,
        // Reserved
        _reserved_5: u27,
    },
    // Interrupt & status register
    ISR: packed struct(u32) {
        // PE
        PE: u1,
        // FE
        FE: u1,
        // NE
        NE: u1,
        // ORE
        ORE: u1,
        // IDLE
        IDLE: u1,
        // RXNE
        RXNE: u1,
        // TC
        TC: u1,
        // TXE
        TXE: u1,
        // Reserved
        _reserved_8: u1,
        // CTSIF
        CTSIF: u1,
        // CTS
        CTS: u1,
        // Reserved
        _reserved_11: u5,
        // BUSY
        BUSY: u1,
        // CMF
        CMF: u1,
        // SBKF
        SBKF: u1,
        // RWU
        RWU: u1,
        // WUF
        WUF: u1,
        // TEACK
        TEACK: u1,
        // REACK
        REACK: u1,
        // TXFIFO Empty
        TXFE: u1,
        // RXFIFO Full
        RXFF: u1,
        // Reserved
        _reserved_25: u1,
        // RXFIFO threshold flag
        RXFT: u1,
        // TXFIFO threshold flag
        TXFT: u1,
        // Reserved
        _reserved_28: u4,
    },
    // Interrupt flag clear register
    ICR: packed struct(u32) {
        // Parity error clear flag
        PECF: u1,
        // Framing error clear flag
        FECF: u1,
        // Noise detected clear flag
        NCF: u1,
        // Overrun error clear flag
        ORECF: u1,
        // Idle line detected clear flag
        IDLECF: u1,
        // Reserved
        _reserved_5: u1,
        // Transmission complete clear flag
        TCCF: u1,
        // Reserved
        _reserved_7: u2,
        // CTS clear flag
        CTSCF: u1,
        // Reserved
        _reserved_10: u7,
        // Character match clear flag
        CMCF: u1,
        // Reserved
        _reserved_18: u2,
        // Wakeup from Stop mode clear flag
        WUCF: u1,
        // Reserved
        _reserved_21: u11,
    },
    // Receive data register
    RDR: packed struct(u32) {
        // Receive data value
        RDR: u9,
        // Reserved
        _reserved_9: u23,
    },
    // Transmit data register
    TDR: packed struct(u32) {
        // Transmit data value
        TDR: u9,
        // Reserved
        _reserved_9: u23,
    },
    // Prescaler register
    PRESC: packed struct(u32) {
        // Clock prescaler
        PRESCALER: u4,
        // Reserved
        _reserved_4: u28,
    },
};

pub const LPUART1_BASE_ADDRESS: usize = 0x58000C00;
pub const LPUART1_REGISTERS: *volatile LPUART1 = @ptrFromInt(LPUART1_BASE_ADDRESS);
