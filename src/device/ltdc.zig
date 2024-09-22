// LCD-TFT Controller
pub const LTDC = struct {
    // Synchronization Size Configuration Register
    SSCR: packed struct(u32) {
        // Vertical Synchronization Height (in units of horizontal scan line)
        VSH: u11,
        // Reserved
        _reserved_11: u5,
        // Horizontal Synchronization Width (in units of pixel clock period)
        HSW: u10,
        // Reserved
        _reserved_26: u6,
    },
    // Back Porch Configuration Register
    BPCR: packed struct(u32) {
        // Accumulated Vertical back porch (in units of horizontal scan line)
        AVBP: u11,
        // Reserved
        _reserved_11: u5,
        // Accumulated Horizontal back porch (in units of pixel clock period)
        AHBP: u12,
        // Reserved
        _reserved_28: u4,
    },
    // Active Width Configuration Register
    AWCR: packed struct(u32) {
        // Accumulated Active Height (in units of horizontal scan line)
        AAH: u11,
        // Reserved
        _reserved_11: u5,
        // AAV
        AAV: u12,
        // Reserved
        _reserved_28: u4,
    },
    // Total Width Configuration Register
    TWCR: packed struct(u32) {
        // Total Height (in units of horizontal scan line)
        TOTALH: u11,
        // Reserved
        _reserved_11: u5,
        // Total Width (in units of pixel clock period)
        TOTALW: u12,
        // Reserved
        _reserved_28: u4,
    },
    // Global Control Register
    GCR: packed struct(u32) {
        // LCD-TFT controller enable bit
        LTDCEN: u1,
        // Reserved
        _reserved_1: u3,
        // Dither Blue Width
        DBW: u3,
        // Reserved
        _reserved_7: u1,
        // Dither Green Width
        DGW: u3,
        // Reserved
        _reserved_11: u1,
        // Dither Red Width
        DRW: u3,
        // Reserved
        _reserved_15: u1,
        // Dither Enable
        DEN: u1,
        // Reserved
        _reserved_17: u11,
        // Pixel Clock Polarity
        PCPOL: u1,
        // Data Enable Polarity
        DEPOL: u1,
        // Vertical Synchronization Polarity
        VSPOL: u1,
        // Horizontal Synchronization Polarity
        HSPOL: u1,
    },
    // Shadow Reload Configuration Register
    SRCR: packed struct(u32) {
        // Immediate Reload
        IMR: u1,
        // Vertical Blanking Reload
        VBR: u1,
        // Reserved
        _reserved_2: u30,
    },
    // Background Color Configuration Register
    BCCR: packed struct(u32) {
        // Background Color Blue value
        BCBLUE: u8,
        // Background Color Green value
        BCGREEN: u8,
        // Background Color Red value
        BCRED: u8,
        // Reserved
        _reserved_24: u8,
    },
    // Interrupt Enable Register
    IER: packed struct(u32) {
        // Line Interrupt Enable
        LIE: u1,
        // FIFO Underrun Interrupt Enable
        FUIE: u1,
        // Transfer Error Interrupt Enable
        TERRIE: u1,
        // Register Reload interrupt enable
        RRIE: u1,
        // Reserved
        _reserved_4: u28,
    },
    // Interrupt Status Register
    ISR: packed struct(u32) {
        // Line Interrupt flag
        LIF: u1,
        // FIFO Underrun Interrupt flag
        FUIF: u1,
        // Transfer Error interrupt flag
        TERRIF: u1,
        // Register Reload Interrupt Flag
        RRIF: u1,
        // Reserved
        _reserved_4: u28,
    },
    // Interrupt Clear Register
    ICR: packed struct(u32) {
        // Clears the Line Interrupt Flag
        CLIF: u1,
        // Clears the FIFO Underrun Interrupt flag
        CFUIF: u1,
        // Clears the Transfer Error Interrupt Flag
        CTERRIF: u1,
        // Clears Register Reload Interrupt Flag
        CRRIF: u1,
        // Reserved
        _reserved_4: u28,
    },
    // Line Interrupt Position Configuration Register
    LIPCR: packed struct(u32) {
        // Line Interrupt Position
        LIPOS: u11,
        // Reserved
        _reserved_11: u21,
    },
    // Current Position Status Register
    CPSR: packed struct(u32) {
        // Current Y Position
        CYPOS: u16,
        // Current X Position
        CXPOS: u16,
    },
    // Current Display Status Register
    CDSR: packed struct(u32) {
        // Vertical Data Enable display Status
        VDES: u1,
        // Horizontal Data Enable display Status
        HDES: u1,
        // Vertical Synchronization display Status
        VSYNCS: u1,
        // Horizontal Synchronization display Status
        HSYNCS: u1,
        // Reserved
        _reserved_4: u28,
    },
    // Layerx Control Register
    L1CR: packed struct(u32) {
        // Layer Enable
        LEN: u1,
        // Color Keying Enable
        COLKEN: u1,
        // Reserved
        _reserved_2: u2,
        // Color Look-Up Table Enable
        CLUTEN: u1,
        // Reserved
        _reserved_5: u27,
    },
    // Layerx Window Horizontal Position Configuration Register
    L1WHPCR: packed struct(u32) {
        // Window Horizontal Start Position
        WHSTPOS: u12,
        // Reserved
        _reserved_12: u4,
        // Window Horizontal Stop Position
        WHSPPOS: u12,
        // Reserved
        _reserved_28: u4,
    },
    // Layerx Window Vertical Position Configuration Register
    L1WVPCR: packed struct(u32) {
        // Window Vertical Start Position
        WVSTPOS: u11,
        // Reserved
        _reserved_11: u5,
        // Window Vertical Stop Position
        WVSPPOS: u11,
        // Reserved
        _reserved_27: u5,
    },
    // Layerx Color Keying Configuration Register
    L1CKCR: packed struct(u32) {
        // Color Key Blue value
        CKBLUE: u8,
        // Color Key Green value
        CKGREEN: u8,
        // Color Key Red value
        CKRED: u8,
        // Reserved
        _reserved_24: u8,
    },
    // Layerx Pixel Format Configuration Register
    L1PFCR: packed struct(u32) {
        // Pixel Format
        PF: u3,
        // Reserved
        _reserved_3: u29,
    },
    // Layerx Constant Alpha Configuration Register
    L1CACR: packed struct(u32) {
        // Constant Alpha
        CONSTA: u8,
        // Reserved
        _reserved_8: u24,
    },
    // Layerx Default Color Configuration Register
    L1DCCR: packed struct(u32) {
        // Default Color Blue
        DCBLUE: u8,
        // Default Color Green
        DCGREEN: u8,
        // Default Color Red
        DCRED: u8,
        // Default Color Alpha
        DCALPHA: u8,
    },
    // Layerx Blending Factors Configuration Register
    L1BFCR: packed struct(u32) {
        // Blending Factor 2
        BF2: u3,
        // Reserved
        _reserved_3: u5,
        // Blending Factor 1
        BF1: u3,
        // Reserved
        _reserved_11: u21,
    },
    // Layerx Color Frame Buffer Address Register
    L1CFBAR: packed struct(u32) {
        // Color Frame Buffer Start Address
        CFBADD: u32,
    },
    // Layerx Color Frame Buffer Length Register
    L1CFBLR: packed struct(u32) {
        // Color Frame Buffer Line Length
        CFBLL: u13,
        // Reserved
        _reserved_13: u3,
        // Color Frame Buffer Pitch in bytes
        CFBP: u13,
        // Reserved
        _reserved_29: u3,
    },
    // Layerx ColorFrame Buffer Line Number Register
    L1CFBLNR: packed struct(u32) {
        // Frame Buffer Line Number
        CFBLNBR: u11,
        // Reserved
        _reserved_11: u21,
    },
    // Layerx CLUT Write Register
    L1CLUTWR: packed struct(u32) {
        // Blue value
        BLUE: u8,
        // Green value
        GREEN: u8,
        // Red value
        RED: u8,
        // CLUT Address
        CLUTADD: u8,
    },
    // Layerx Control Register
    L2CR: packed struct(u32) {
        // Layer Enable
        LEN: u1,
        // Color Keying Enable
        COLKEN: u1,
        // Reserved
        _reserved_2: u2,
        // Color Look-Up Table Enable
        CLUTEN: u1,
        // Reserved
        _reserved_5: u27,
    },
    // Layerx Window Horizontal Position Configuration Register
    L2WHPCR: packed struct(u32) {
        // Window Horizontal Start Position
        WHSTPOS: u12,
        // Reserved
        _reserved_12: u4,
        // Window Horizontal Stop Position
        WHSPPOS: u12,
        // Reserved
        _reserved_28: u4,
    },
    // Layerx Window Vertical Position Configuration Register
    L2WVPCR: packed struct(u32) {
        // Window Vertical Start Position
        WVSTPOS: u11,
        // Reserved
        _reserved_11: u5,
        // Window Vertical Stop Position
        WVSPPOS: u11,
        // Reserved
        _reserved_27: u5,
    },
    // Layerx Color Keying Configuration Register
    L2CKCR: packed struct(u32) {
        // Color Key Blue value
        CKBLUE: u8,
        // Color Key Green value
        CKGREEN: u8,
        // Color Key Red value
        CKRED: u8,
        // Reserved
        _reserved_24: u8,
    },
    // Layerx Pixel Format Configuration Register
    L2PFCR: packed struct(u32) {
        // Pixel Format
        PF: u3,
        // Reserved
        _reserved_3: u29,
    },
    // Layerx Constant Alpha Configuration Register
    L2CACR: packed struct(u32) {
        // Constant Alpha
        CONSTA: u8,
        // Reserved
        _reserved_8: u24,
    },
    // Layerx Default Color Configuration Register
    L2DCCR: packed struct(u32) {
        // Default Color Blue
        DCBLUE: u8,
        // Default Color Green
        DCGREEN: u8,
        // Default Color Red
        DCRED: u8,
        // Default Color Alpha
        DCALPHA: u8,
    },
    // Layerx Blending Factors Configuration Register
    L2BFCR: packed struct(u32) {
        // Blending Factor 2
        BF2: u3,
        // Reserved
        _reserved_3: u5,
        // Blending Factor 1
        BF1: u3,
        // Reserved
        _reserved_11: u21,
    },
    // Layerx Color Frame Buffer Address Register
    L2CFBAR: packed struct(u32) {
        // Color Frame Buffer Start Address
        CFBADD: u32,
    },
    // Layerx Color Frame Buffer Length Register
    L2CFBLR: packed struct(u32) {
        // Color Frame Buffer Line Length
        CFBLL: u13,
        // Reserved
        _reserved_13: u3,
        // Color Frame Buffer Pitch in bytes
        CFBP: u13,
        // Reserved
        _reserved_29: u3,
    },
    // Layerx ColorFrame Buffer Line Number Register
    L2CFBLNR: packed struct(u32) {
        // Frame Buffer Line Number
        CFBLNBR: u11,
        // Reserved
        _reserved_11: u21,
    },
    // Layerx CLUT Write Register
    L2CLUTWR: packed struct(u32) {
        // Blue value
        BLUE: u8,
        // Green value
        GREEN: u8,
        // Red value
        RED: u8,
        // CLUT Address
        CLUTADD: u8,
    },
};

pub const LTDC_BASE_ADDRESS: usize = 0x50001000;
pub const LTDC_REGISTERS: *volatile LTDC = @ptrFromInt(LTDC_BASE_ADDRESS);
