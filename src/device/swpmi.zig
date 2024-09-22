// Single Wire Protocol Master Interface
pub const SWPMI = struct {
    // SWPMI Configuration/Control register
    CR: packed struct(u32) {
        // Reception DMA enable
        RXDMA: u1,
        // Transmission DMA enable
        TXDMA: u1,
        // Reception buffering mode
        RXMODE: u1,
        // Transmission buffering mode
        TXMODE: u1,
        // Loopback mode enable
        LPBK: u1,
        // Single wire protocol master interface activate
        SWPACT: u1,
        // Reserved
        _reserved_6: u4,
        // Single wire protocol master interface deactivate
        DEACT: u1,
        // Single wire protocol master transceiver enable
        SWPTEN: u1,
        // Reserved
        _reserved_12: u20,
    },
    // SWPMI Bitrate register
    BRR: packed struct(u32) {
        // Bitrate prescaler
        BR: u8,
        // Reserved
        _reserved_8: u24,
    },
    // SWPMI Interrupt and Status register
    ISR: packed struct(u32) {
        // Receive buffer full flag
        RXBFF: u1,
        // Transmit buffer empty flag
        TXBEF: u1,
        // Receive CRC error flag
        RXBERF: u1,
        // Receive overrun error flag
        RXOVRF: u1,
        // Transmit underrun error flag
        TXUNRF: u1,
        // Receive data register not empty
        RXNE: u1,
        // Transmit data register empty
        TXE: u1,
        // Transfer complete flag
        TCF: u1,
        // Slave resume flag
        SRF: u1,
        // SUSPEND flag
        SUSP: u1,
        // DEACTIVATED flag
        DEACTF: u1,
        // transceiver ready flag
        RDYF: u1,
        // Reserved
        _reserved_12: u20,
    },
    // SWPMI Interrupt Flag Clear register
    ICR: packed struct(u32) {
        // Clear receive buffer full flag
        CRXBFF: u1,
        // Clear transmit buffer empty flag
        CTXBEF: u1,
        // Clear receive CRC error flag
        CRXBERF: u1,
        // Clear receive overrun error flag
        CRXOVRF: u1,
        // Clear transmit underrun error flag
        CTXUNRF: u1,
        // Reserved
        _reserved_5: u2,
        // Clear transfer complete flag
        CTCF: u1,
        // Clear slave resume flag
        CSRF: u1,
        // Reserved
        _reserved_9: u2,
        // Clear transceiver ready flag
        CRDYF: u1,
        // Reserved
        _reserved_12: u20,
    },
    // SWPMI Interrupt Enable register
    IER: packed struct(u32) {
        // Receive buffer full interrupt enable
        RXBFIE: u1,
        // Transmit buffer empty interrupt enable
        TXBEIE: u1,
        // Receive CRC error interrupt enable
        RXBERIE: u1,
        // Receive overrun error interrupt enable
        RXOVRIE: u1,
        // Transmit underrun error interrupt enable
        TXUNRIE: u1,
        // Receive interrupt enable
        RIE: u1,
        // Transmit interrupt enable
        TIE: u1,
        // Transmit complete interrupt enable
        TCIE: u1,
        // Slave resume interrupt enable
        SRIE: u1,
        // Reserved
        _reserved_9: u2,
        // Transceiver ready interrupt enable
        RDYIE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // SWPMI Receive Frame Length register
    RFL: packed struct(u32) {
        // Receive frame length
        RFL: u5,
        // Reserved
        _reserved_5: u27,
    },
    // SWPMI Transmit data register
    TDR: packed struct(u32) {
        // Transmit data
        TD: u32,
    },
    // SWPMI Receive data register
    RDR: packed struct(u32) {
        // received data
        RD: u32,
    },
    // SWPMI Option register
    OR: packed struct(u32) {
        // SWP transceiver bypass
        SWP_TBYP: u1,
        // SWP class selection
        SWP_CLASS: u1,
        // Reserved
        _reserved_2: u30,
    },
};

pub const SWPMI_BASE_ADDRESS: usize = 0x40008800;
pub const SWPMI_REGISTERS: *volatile SWPMI = @ptrFromInt(SWPMI_BASE_ADDRESS);
