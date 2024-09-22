// DMA controller
pub const DMA1 = struct {
    // low interrupt status register
    LISR: packed struct(u32) {
        // Stream x FIFO error interrupt flag (x=3..0)
        FEIF0: u1,
        // Reserved
        _reserved_1: u1,
        // Stream x direct mode error interrupt flag (x=3..0)
        DMEIF0: u1,
        // Stream x transfer error interrupt flag (x=3..0)
        TEIF0: u1,
        // Stream x half transfer interrupt flag (x=3..0)
        HTIF0: u1,
        // Stream x transfer complete interrupt flag (x = 3..0)
        TCIF0: u1,
        // Stream x FIFO error interrupt flag (x=3..0)
        FEIF1: u1,
        // Reserved
        _reserved_7: u1,
        // Stream x direct mode error interrupt flag (x=3..0)
        DMEIF1: u1,
        // Stream x transfer error interrupt flag (x=3..0)
        TEIF1: u1,
        // Stream x half transfer interrupt flag (x=3..0)
        HTIF1: u1,
        // Stream x transfer complete interrupt flag (x = 3..0)
        TCIF1: u1,
        // Reserved
        _reserved_12: u4,
        // Stream x FIFO error interrupt flag (x=3..0)
        FEIF2: u1,
        // Reserved
        _reserved_17: u1,
        // Stream x direct mode error interrupt flag (x=3..0)
        DMEIF2: u1,
        // Stream x transfer error interrupt flag (x=3..0)
        TEIF2: u1,
        // Stream x half transfer interrupt flag (x=3..0)
        HTIF2: u1,
        // Stream x transfer complete interrupt flag (x = 3..0)
        TCIF2: u1,
        // Stream x FIFO error interrupt flag (x=3..0)
        FEIF3: u1,
        // Reserved
        _reserved_23: u1,
        // Stream x direct mode error interrupt flag (x=3..0)
        DMEIF3: u1,
        // Stream x transfer error interrupt flag (x=3..0)
        TEIF3: u1,
        // Stream x half transfer interrupt flag (x=3..0)
        HTIF3: u1,
        // Stream x transfer complete interrupt flag (x = 3..0)
        TCIF3: u1,
        // Reserved
        _reserved_28: u4,
    },
    // high interrupt status register
    HISR: packed struct(u32) {
        // Stream x FIFO error interrupt flag (x=7..4)
        FEIF4: u1,
        // Reserved
        _reserved_1: u1,
        // Stream x direct mode error interrupt flag (x=7..4)
        DMEIF4: u1,
        // Stream x transfer error interrupt flag (x=7..4)
        TEIF4: u1,
        // Stream x half transfer interrupt flag (x=7..4)
        HTIF4: u1,
        // Stream x transfer complete interrupt flag (x=7..4)
        TCIF4: u1,
        // Stream x FIFO error interrupt flag (x=7..4)
        FEIF5: u1,
        // Reserved
        _reserved_7: u1,
        // Stream x direct mode error interrupt flag (x=7..4)
        DMEIF5: u1,
        // Stream x transfer error interrupt flag (x=7..4)
        TEIF5: u1,
        // Stream x half transfer interrupt flag (x=7..4)
        HTIF5: u1,
        // Stream x transfer complete interrupt flag (x=7..4)
        TCIF5: u1,
        // Reserved
        _reserved_12: u4,
        // Stream x FIFO error interrupt flag (x=7..4)
        FEIF6: u1,
        // Reserved
        _reserved_17: u1,
        // Stream x direct mode error interrupt flag (x=7..4)
        DMEIF6: u1,
        // Stream x transfer error interrupt flag (x=7..4)
        TEIF6: u1,
        // Stream x half transfer interrupt flag (x=7..4)
        HTIF6: u1,
        // Stream x transfer complete interrupt flag (x=7..4)
        TCIF6: u1,
        // Stream x FIFO error interrupt flag (x=7..4)
        FEIF7: u1,
        // Reserved
        _reserved_23: u1,
        // Stream x direct mode error interrupt flag (x=7..4)
        DMEIF7: u1,
        // Stream x transfer error interrupt flag (x=7..4)
        TEIF7: u1,
        // Stream x half transfer interrupt flag (x=7..4)
        HTIF7: u1,
        // Stream x transfer complete interrupt flag (x=7..4)
        TCIF7: u1,
        // Reserved
        _reserved_28: u4,
    },
    // low interrupt flag clear register
    LIFCR: packed struct(u32) {
        // Stream x clear FIFO error interrupt flag (x = 3..0)
        CFEIF0: u1,
        // Reserved
        _reserved_1: u1,
        // Stream x clear direct mode error interrupt flag (x = 3..0)
        CDMEIF0: u1,
        // Stream x clear transfer error interrupt flag (x = 3..0)
        CTEIF0: u1,
        // Stream x clear half transfer interrupt flag (x = 3..0)
        CHTIF0: u1,
        // Stream x clear transfer complete interrupt flag (x = 3..0)
        CTCIF0: u1,
        // Stream x clear FIFO error interrupt flag (x = 3..0)
        CFEIF1: u1,
        // Reserved
        _reserved_7: u1,
        // Stream x clear direct mode error interrupt flag (x = 3..0)
        CDMEIF1: u1,
        // Stream x clear transfer error interrupt flag (x = 3..0)
        CTEIF1: u1,
        // Stream x clear half transfer interrupt flag (x = 3..0)
        CHTIF1: u1,
        // Stream x clear transfer complete interrupt flag (x = 3..0)
        CTCIF1: u1,
        // Reserved
        _reserved_12: u4,
        // Stream x clear FIFO error interrupt flag (x = 3..0)
        CFEIF2: u1,
        // Reserved
        _reserved_17: u1,
        // Stream x clear direct mode error interrupt flag (x = 3..0)
        CDMEIF2: u1,
        // Stream x clear transfer error interrupt flag (x = 3..0)
        CTEIF2: u1,
        // Stream x clear half transfer interrupt flag (x = 3..0)
        CHTIF2: u1,
        // Stream x clear transfer complete interrupt flag (x = 3..0)
        CTCIF2: u1,
        // Stream x clear FIFO error interrupt flag (x = 3..0)
        CFEIF3: u1,
        // Reserved
        _reserved_23: u1,
        // Stream x clear direct mode error interrupt flag (x = 3..0)
        CDMEIF3: u1,
        // Stream x clear transfer error interrupt flag (x = 3..0)
        CTEIF3: u1,
        // Stream x clear half transfer interrupt flag (x = 3..0)
        CHTIF3: u1,
        // Stream x clear transfer complete interrupt flag (x = 3..0)
        CTCIF3: u1,
        // Reserved
        _reserved_28: u4,
    },
    // high interrupt flag clear register
    HIFCR: packed struct(u32) {
        // Stream x clear FIFO error interrupt flag (x = 7..4)
        CFEIF4: u1,
        // Reserved
        _reserved_1: u1,
        // Stream x clear direct mode error interrupt flag (x = 7..4)
        CDMEIF4: u1,
        // Stream x clear transfer error interrupt flag (x = 7..4)
        CTEIF4: u1,
        // Stream x clear half transfer interrupt flag (x = 7..4)
        CHTIF4: u1,
        // Stream x clear transfer complete interrupt flag (x = 7..4)
        CTCIF4: u1,
        // Stream x clear FIFO error interrupt flag (x = 7..4)
        CFEIF5: u1,
        // Reserved
        _reserved_7: u1,
        // Stream x clear direct mode error interrupt flag (x = 7..4)
        CDMEIF5: u1,
        // Stream x clear transfer error interrupt flag (x = 7..4)
        CTEIF5: u1,
        // Stream x clear half transfer interrupt flag (x = 7..4)
        CHTIF5: u1,
        // Stream x clear transfer complete interrupt flag (x = 7..4)
        CTCIF5: u1,
        // Reserved
        _reserved_12: u4,
        // Stream x clear FIFO error interrupt flag (x = 7..4)
        CFEIF6: u1,
        // Reserved
        _reserved_17: u1,
        // Stream x clear direct mode error interrupt flag (x = 7..4)
        CDMEIF6: u1,
        // Stream x clear transfer error interrupt flag (x = 7..4)
        CTEIF6: u1,
        // Stream x clear half transfer interrupt flag (x = 7..4)
        CHTIF6: u1,
        // Stream x clear transfer complete interrupt flag (x = 7..4)
        CTCIF6: u1,
        // Stream x clear FIFO error interrupt flag (x = 7..4)
        CFEIF7: u1,
        // Reserved
        _reserved_23: u1,
        // Stream x clear direct mode error interrupt flag (x = 7..4)
        CDMEIF7: u1,
        // Stream x clear transfer error interrupt flag (x = 7..4)
        CTEIF7: u1,
        // Stream x clear half transfer interrupt flag (x = 7..4)
        CHTIF7: u1,
        // Stream x clear transfer complete interrupt flag (x = 7..4)
        CTCIF7: u1,
        // Reserved
        _reserved_28: u4,
    },
    // stream x configuration register
    S0CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // Reserved
        _reserved_20: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S0NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S0PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S0M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S0M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S0FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
    // stream x configuration register
    S1CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // ACK
        ACK: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S1NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S1PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S1M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S1M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S1FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
    // stream x configuration register
    S2CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // ACK
        ACK: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S2NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S2PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S2M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S2M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S2FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
    // stream x configuration register
    S3CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // ACK
        ACK: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S3NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S3PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S3M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S3M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S3FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
    // stream x configuration register
    S4CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // ACK
        ACK: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S4NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S4PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S4M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S4M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S4FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
    // stream x configuration register
    S5CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // ACK
        ACK: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S5NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S5PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S5M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S5M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S5FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
    // stream x configuration register
    S6CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // ACK
        ACK: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S6NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S6PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S6M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S6M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S6FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
    // stream x configuration register
    S7CR: packed struct(u32) {
        // Stream enable / flag stream ready when read low
        EN: u1,
        // Direct mode error interrupt enable
        DMEIE: u1,
        // Transfer error interrupt enable
        TEIE: u1,
        // Half transfer interrupt enable
        HTIE: u1,
        // Transfer complete interrupt enable
        TCIE: u1,
        // Peripheral flow controller
        PFCTRL: u1,
        // Data transfer direction
        DIR: u2,
        // Circular mode
        CIRC: u1,
        // Peripheral increment mode
        PINC: u1,
        // Memory increment mode
        MINC: u1,
        // Peripheral data size
        PSIZE: u2,
        // Memory data size
        MSIZE: u2,
        // Peripheral increment offset size
        PINCOS: u1,
        // Priority level
        PL: u2,
        // Double buffer mode
        DBM: u1,
        // Current target (only in double buffer mode)
        CT: u1,
        // ACK
        ACK: u1,
        // Peripheral burst transfer configuration
        PBURST: u2,
        // Memory burst transfer configuration
        MBURST: u2,
        // Reserved
        _reserved_25: u7,
    },
    // stream x number of data register
    S7NDTR: packed struct(u32) {
        // Number of data items to transfer
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // stream x peripheral address register
    S7PAR: packed struct(u32) {
        // Peripheral address
        PA: u32,
    },
    // stream x memory 0 address register
    S7M0AR: packed struct(u32) {
        // Memory 0 address
        M0A: u32,
    },
    // stream x memory 1 address register
    S7M1AR: packed struct(u32) {
        // Memory 1 address (used in case of Double buffer mode)
        M1A: u32,
    },
    // stream x FIFO control register
    S7FCR: packed struct(u32) {
        // FIFO threshold selection
        FTH: u2,
        // Direct mode disable
        DMDIS: u1,
        // FIFO status
        FS: u3,
        // Reserved
        _reserved_6: u1,
        // FIFO error interrupt enable
        FEIE: u1,
        // Reserved
        _reserved_8: u24,
    },
};

pub const DMA1_BASE_ADDRESS: usize = 0x40020000;
pub const DMA1_REGISTERS: *volatile DMA1 = @ptrFromInt(DMA1_BASE_ADDRESS);
