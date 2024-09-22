// Serial peripheral interface
pub const SPI1 = struct {
    // control register 1
    CR1: packed struct(u32) {
        // Serial Peripheral Enable
        SPE: u1,
        // Reserved
        _reserved_1: u7,
        // Master automatic SUSP in Receive mode
        MASRX: u1,
        // Master transfer start
        CSTART: u1,
        // Master SUSPend request
        CSUSP: u1,
        // Rx/Tx direction at Half-duplex mode
        HDDIR: u1,
        // Internal SS signal input level
        SSI: u1,
        // 32-bit CRC polynomial configuration
        CRC33_17: u1,
        // CRC calculation initialization pattern control for receiver
        RCRCI: u1,
        // CRC calculation initialization pattern control for transmitter
        TCRCI: u1,
        // Locking the AF configuration of associated IOs
        IOLOCK: u1,
        // Reserved
        _reserved_17: u15,
    },
    // control register 2
    CR2: packed struct(u32) {
        // Number of data at current transfer
        TSIZE: u16,
        // Number of data transfer extension to be reload into TSIZE just when a previous
        TSER: u16,
    },
    // configuration register 1
    CFG1: packed struct(u32) {
        // Number of bits in at single SPI data frame
        DSIZE: u5,
        // threshold level
        FTHVL: u4,
        // Behavior of slave transmitter at underrun condition
        UDRCFG: u2,
        // Detection of underrun condition at slave transmitter
        UDRDET: u2,
        // Reserved
        _reserved_13: u1,
        // Rx DMA stream enable
        RXDMAEN: u1,
        // Tx DMA stream enable
        TXDMAEN: u1,
        // Length of CRC frame to be transacted and compared
        CRCSIZE: u5,
        // Reserved
        _reserved_21: u1,
        // Hardware CRC computation enable
        CRCEN: u1,
        // Reserved
        _reserved_23: u5,
        // Master baud rate
        MBR: u3,
        // Reserved
        _reserved_31: u1,
    },
    // configuration register 2
    CFG2: packed struct(u32) {
        // Master SS Idleness
        MSSI: u4,
        // Master Inter-Data Idleness
        MIDI: u4,
        // Reserved
        _reserved_8: u7,
        // Swap functionality of MISO and MOSI pins
        IOSWP: u1,
        // Reserved
        _reserved_16: u1,
        // SPI Communication Mode
        COMM: u2,
        // Serial Protocol
        SP: u3,
        // SPI Master
        MASTER: u1,
        // Data frame format
        LSBFRST: u1,
        // Clock phase
        CPHA: u1,
        // Clock polarity
        CPOL: u1,
        // Software management of SS signal input
        SSM: u1,
        // Reserved
        _reserved_27: u1,
        // SS input/output polarity
        SSIOP: u1,
        // SS output enable
        SSOE: u1,
        // SS output management in master mode
        SSOM: u1,
        // Alternate function GPIOs control
        AFCNTR: u1,
    },
    // Interrupt Enable Register
    IER: packed struct(u32) {
        // RXP Interrupt Enable
        RXPIE: u1,
        // TXP interrupt enable
        TXPIE: u1,
        // DXP interrupt enabled
        DPXPIE: u1,
        // EOT, SUSP and TXC interrupt enable
        EOTIE: u1,
        // TXTFIE interrupt enable
        TXTFIE: u1,
        // UDR interrupt enable
        UDRIE: u1,
        // OVR interrupt enable
        OVRIE: u1,
        // CRC Interrupt enable
        CRCEIE: u1,
        // TIFRE interrupt enable
        TIFREIE: u1,
        // Mode Fault interrupt enable
        MODFIE: u1,
        // Additional number of transactions reload interrupt enable
        TSERFIE: u1,
        // Reserved
        _reserved_11: u21,
    },
    // Status Register
    SR: packed struct(u32) {
        // Rx-Packet available
        RXP: u1,
        // Tx-Packet space available
        TXP: u1,
        // Duplex Packet
        DXP: u1,
        // End Of Transfer
        EOT: u1,
        // Transmission Transfer Filled
        TXTF: u1,
        // Underrun at slave transmission mode
        UDR: u1,
        // Overrun
        OVR: u1,
        // CRC Error
        CRCE: u1,
        // TI frame format error
        TIFRE: u1,
        // Mode Fault
        MODF: u1,
        // Additional number of SPI data to be transacted was reload
        TSERF: u1,
        // SUSPend
        SUSP: u1,
        // TxFIFO transmission complete
        TXC: u1,
        // RxFIFO Packing LeVeL
        RXPLVL: u2,
        // RxFIFO Word Not Empty
        RXWNE: u1,
        // Number of data frames remaining in current TSIZE session
        CTSIZE: u16,
    },
    // Interrupt/Status Flags Clear Register
    IFCR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // End Of Transfer flag clear
        EOTC: u1,
        // Transmission Transfer Filled flag clear
        TXTFC: u1,
        // Underrun flag clear
        UDRC: u1,
        // Overrun flag clear
        OVRC: u1,
        // CRC Error flag clear
        CRCEC: u1,
        // TI frame format error flag clear
        TIFREC: u1,
        // Mode Fault flag clear
        MODFC: u1,
        // TSERFC flag clear
        TSERFC: u1,
        // SUSPend flag clear
        SUSPC: u1,
        // Reserved
        _reserved_12: u20,
    },
    // Transmit Data Register
    TXDR: packed struct(u32) {
        // Transmit data register
        TXDR: u32,
    },
    // Receive Data Register
    RXDR: packed struct(u32) {
        // Receive data register
        RXDR: u32,
    },
    // Polynomial Register
    CRCPOLY: packed struct(u32) {
        // CRC polynomial register
        CRCPOLY: u32,
    },
    // Transmitter CRC Register
    TXCRC: packed struct(u32) {
        // CRC register for transmitter
        TXCRC: u32,
    },
    // Receiver CRC Register
    RXCRC: packed struct(u32) {
        // CRC register for receiver
        RXCRC: u32,
    },
    // Underrun Data Register
    UDRDR: packed struct(u32) {
        // Data at slave underrun condition
        UDRDR: u32,
    },
    // configuration register
    CGFR: packed struct(u32) {
        // I2S mode selection
        I2SMOD: u1,
        // I2S configuration mode
        I2SCFG: u3,
        // I2S standard selection
        I2SSTD: u2,
        // Reserved
        _reserved_6: u1,
        // PCM frame synchronization
        PCMSYNC: u1,
        // Data length to be transferred
        DATLEN: u2,
        // Channel length (number of bits per audio channel)
        CHLEN: u1,
        // Serial audio clock polarity
        CKPOL: u1,
        // Word select inversion
        FIXCH: u1,
        // Fixed channel length in SLAVE
        WSINV: u1,
        // Data format
        DATFMT: u1,
        // Reserved
        _reserved_15: u1,
        // I2S linear prescaler
        I2SDIV: u8,
        // Odd factor for the prescaler
        ODD: u1,
        // Master clock output enable
        MCKOE: u1,
        // Reserved
        _reserved_26: u6,
    },
};

pub const SPI1_BASE_ADDRESS: usize = 0x40013000;
pub const SPI1_REGISTERS: *volatile SPI1 = @ptrFromInt(SPI1_BASE_ADDRESS);
