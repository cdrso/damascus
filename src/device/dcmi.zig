// Digital camera interface
pub const DCMI = struct {
    // control register 1
    CR: packed struct(u32) {
        // Capture enable
        CAPTURE: u1,
        // Capture mode
        CM: u1,
        // Crop feature
        CROP: u1,
        // JPEG format
        JPEG: u1,
        // Embedded synchronization select
        ESS: u1,
        // Pixel clock polarity
        PCKPOL: u1,
        // Horizontal synchronization polarity
        HSPOL: u1,
        // Vertical synchronization polarity
        VSPOL: u1,
        // Frame capture rate control
        FCRC: u2,
        // Extended data mode
        EDM: u2,
        // Reserved
        _reserved_12: u2,
        // DCMI enable
        ENABLE: u1,
        // Reserved
        _reserved_15: u1,
        // Byte Select mode
        BSM: u2,
        // Odd/Even Byte Select (Byte Select Start)
        OEBS: u1,
        // Line Select mode
        LSM: u1,
        // Odd/Even Line Select (Line Select Start)
        OELS: u1,
        // Reserved
        _reserved_21: u11,
    },
    // status register
    SR: packed struct(u32) {
        // HSYNC
        HSYNC: u1,
        // VSYNC
        VSYNC: u1,
        // FIFO not empty
        FNE: u1,
        // Reserved
        _reserved_3: u29,
    },
    // raw interrupt status register
    RIS: packed struct(u32) {
        // Capture complete raw interrupt status
        FRAME_RIS: u1,
        // Overrun raw interrupt status
        OVR_RIS: u1,
        // Synchronization error raw interrupt status
        ERR_RIS: u1,
        // VSYNC raw interrupt status
        VSYNC_RIS: u1,
        // Line raw interrupt status
        LINE_RIS: u1,
        // Reserved
        _reserved_5: u27,
    },
    // interrupt enable register
    IER: packed struct(u32) {
        // Capture complete interrupt enable
        FRAME_IE: u1,
        // Overrun interrupt enable
        OVR_IE: u1,
        // Synchronization error interrupt enable
        ERR_IE: u1,
        // VSYNC interrupt enable
        VSYNC_IE: u1,
        // Line interrupt enable
        LINE_IE: u1,
        // Reserved
        _reserved_5: u27,
    },
    // masked interrupt status register
    MIS: packed struct(u32) {
        // Capture complete masked interrupt status
        FRAME_MIS: u1,
        // Overrun masked interrupt status
        OVR_MIS: u1,
        // Synchronization error masked interrupt status
        ERR_MIS: u1,
        // VSYNC masked interrupt status
        VSYNC_MIS: u1,
        // Line masked interrupt status
        LINE_MIS: u1,
        // Reserved
        _reserved_5: u27,
    },
    // interrupt clear register
    ICR: packed struct(u32) {
        // Capture complete interrupt status clear
        FRAME_ISC: u1,
        // Overrun interrupt status clear
        OVR_ISC: u1,
        // Synchronization error interrupt status clear
        ERR_ISC: u1,
        // Vertical synch interrupt status clear
        VSYNC_ISC: u1,
        // line interrupt status clear
        LINE_ISC: u1,
        // Reserved
        _reserved_5: u27,
    },
    // embedded synchronization code register
    ESCR: packed struct(u32) {
        // Frame start delimiter code
        FSC: u8,
        // Line start delimiter code
        LSC: u8,
        // Line end delimiter code
        LEC: u8,
        // Frame end delimiter code
        FEC: u8,
    },
    // embedded synchronization unmask register
    ESUR: packed struct(u32) {
        // Frame start delimiter unmask
        FSU: u8,
        // Line start delimiter unmask
        LSU: u8,
        // Line end delimiter unmask
        LEU: u8,
        // Frame end delimiter unmask
        FEU: u8,
    },
    // crop window start
    CWSTRT: packed struct(u32) {
        // Horizontal offset count
        HOFFCNT: u14,
        // Reserved
        _reserved_14: u2,
        // Vertical start line count
        VST: u13,
        // Reserved
        _reserved_29: u3,
    },
    // crop window size
    CWSIZE: packed struct(u32) {
        // Capture count
        CAPCNT: u14,
        // Reserved
        _reserved_14: u2,
        // Vertical line count
        VLINE: u14,
        // Reserved
        _reserved_30: u2,
    },
    // data register
    DR: packed struct(u32) {
        // Data byte 0
        Byte0: u8,
        // Data byte 1
        Byte1: u8,
        // Data byte 2
        Byte2: u8,
        // Data byte 3
        Byte3: u8,
    },
};

pub const DCMI_BASE_ADDRESS: usize = 0x48020000;
pub const DCMI_REGISTERS: *volatile DCMI = @ptrFromInt(DCMI_BASE_ADDRESS);
