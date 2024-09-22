// DMA2D
pub const DMA2D = struct {
    // DMA2D control register
    CR: packed struct(u32) {
        // Start This bit can be used to launch the
        // DMA2D according to the parameters loaded in the
        // various configuration registers
        START: u1,
        // Suspend This bit can be used to suspend
        // the current transfer. This bit is set and reset by
        // software. It is automatically reset by hardware when
        // the START bit is reset.
        SUSP: u1,
        // Abort This bit can be used to abort the
        // current transfer. This bit is set by software and is
        // automatically reset by hardware when the START bit is
        // reset.
        ABORT: u1,
        // Reserved
        _reserved_3: u5,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Transfer complete interrupt enable This bit is set and cleared by software.
        TCIE: u1,
        // Transfer watermark interrupt enable This bit is set and cleared by software.
        TWIE: u1,
        // CLUT access error interrupt enable This bit is set and cleared by software.
        CAEIE: u1,
        // CLUT transfer complete interrupt enable
        // This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Configuration Error Interrupt Enable
        // This bit is set and cleared by
        // software.
        CEIE: u1,
        // Reserved
        _reserved_14: u2,
        // DMA2D mode This bit is set and cleared
        // by software. It cannot be modified while a transfer
        // is ongoing.
        MODE: u2,
        // Reserved
        _reserved_18: u14,
    },
    // DMA2D Interrupt Status Register
    ISR: packed struct(u32) {
        // Transfer error interrupt flag This bit
        // is set when an error occurs during a DMA transfer
        // (data transfer or automatic CLUT
        // loading).
        TEIF: u1,
        // Transfer complete interrupt flag This
        // bit is set when a DMA2D transfer operation is
        // complete (data transfer only).
        TCIF: u1,
        // Transfer watermark interrupt flag This
        // bit is set when the last pixel of the watermarked
        // line has been transferred.
        TWIF: u1,
        // CLUT access error interrupt flag This
        // bit is set when the CPU accesses the CLUT while the
        // CLUT is being automatically copied from a system
        // memory to the internal DMA2D.
        CAEIF: u1,
        // CLUT transfer complete interrupt flag
        // This bit is set when the CLUT copy from a system
        // memory area to the internal DMA2D memory is
        // complete.
        CTCIF: u1,
        // Configuration error interrupt flag This
        // bit is set when the START bit of DMA2D_CR,
        // DMA2DFGPFCCR or DMA2D_BGPFCCR is set and a wrong
        // configuration has been programmed.
        CEIF: u1,
        // Reserved
        _reserved_6: u26,
    },
    // DMA2D interrupt flag clear register
    IFCR: packed struct(u32) {
        // Clear Transfer error interrupt flag
        // Programming this bit to 1 clears the TEIF flag in the
        // DMA2D_ISR register
        CTEIF: u1,
        // Clear transfer complete interrupt flag
        // Programming this bit to 1 clears the TCIF flag in the
        // DMA2D_ISR register
        CTCIF: u1,
        // Clear transfer watermark interrupt flag
        // Programming this bit to 1 clears the TWIF flag in the
        // DMA2D_ISR register
        CTWIF: u1,
        // Clear CLUT access error interrupt flag
        // Programming this bit to 1 clears the CAEIF flag in
        // the DMA2D_ISR register
        CAECIF: u1,
        // Clear CLUT transfer complete interrupt
        // flag Programming this bit to 1 clears the CTCIF flag
        // in the DMA2D_ISR register
        CCTCIF: u1,
        // Clear configuration error interrupt flag
        // Programming this bit to 1 clears the CEIF flag in the
        // DMA2D_ISR register
        CCEIF: u1,
        // Reserved
        _reserved_6: u26,
    },
    // DMA2D foreground memory address register
    FGMAR: packed struct(u32) {
        // Memory address Address of the data used
        // for the foreground image. This register can only be
        // written when data transfers are disabled. Once the
        // data transfer has started, this register is
        // read-only. The address alignment must match the image
        // format selected e.g. a 32-bit per pixel format must
        // be 32-bit aligned, a 16-bit per pixel format must be
        // 16-bit aligned and a 4-bit per pixel format must be
        // 8-bit aligned.
        MA: u32,
    },
    // DMA2D foreground offset register
    FGOR: packed struct(u32) {
        // Line offset Line offset used for the
        // foreground expressed in pixel. This value is used to
        // generate the address. It is added at the end of each
        // line to determine the starting address of the next
        // line. These bits can only be written when data
        // transfers are disabled. Once a data transfer has
        // started, they become read-only. If the image format
        // is 4-bit per pixel, the line offset must be
        // even.
        LO: u14,
        // Reserved
        _reserved_14: u18,
    },
    // DMA2D background memory address register
    BGMAR: packed struct(u32) {
        // Memory address Address of the data used
        // for the background image. This register can only be
        // written when data transfers are disabled. Once a data
        // transfer has started, this register is read-only. The
        // address alignment must match the image format
        // selected e.g. a 32-bit per pixel format must be
        // 32-bit aligned, a 16-bit per pixel format must be
        // 16-bit aligned and a 4-bit per pixel format must be
        // 8-bit aligned.
        MA: u32,
    },
    // DMA2D background offset register
    BGOR: packed struct(u32) {
        // Line offset Line offset used for the
        // background image (expressed in pixel). This value is
        // used for the address generation. It is added at the
        // end of each line to determine the starting address of
        // the next line. These bits can only be written when
        // data transfers are disabled. Once data transfer has
        // started, they become read-only. If the image format
        // is 4-bit per pixel, the line offset must be
        // even.
        LO: u14,
        // Reserved
        _reserved_14: u18,
    },
    // DMA2D foreground PFC control register
    FGPFCCR: packed struct(u32) {
        // Color mode These bits defines the color
        // format of the foreground image. They can only be
        // written when data transfers are disabled. Once the
        // transfer has started, they are read-only. others:
        // meaningless
        CM: u4,
        // CLUT color mode This bit defines the
        // color format of the CLUT. It can only be written when
        // the transfer is disabled. Once the CLUT transfer has
        // started, this bit is read-only.
        CCM: u1,
        // Start This bit can be set to start the
        // automatic loading of the CLUT. It is automatically
        // reset: ** at the end of the transfer ** when the
        // transfer is aborted by the user application by
        // setting the ABORT bit in DMA2D_CR ** when a transfer
        // error occurs ** when the transfer has not started due
        // to a configuration error or another transfer
        // operation already ongoing (data transfer or automatic
        // background CLUT transfer).
        START: u1,
        // Reserved
        _reserved_6: u2,
        // CLUT size These bits define the size of
        // the CLUT used for the foreground image. Once the CLUT
        // transfer has started, this field is read-only. The
        // number of CLUT entries is equal to CS[7:0] +
        // 1.
        CS: u8,
        // Alpha mode These bits select the alpha
        // channel value to be used for the foreground image.
        // They can only be written data the transfer are
        // disabled. Once the transfer has started, they become
        // read-only. other configurations are
        // meaningless
        AM: u2,
        // Chroma Sub-Sampling These bits define
        // the chroma sub-sampling mode for YCbCr color mode.
        // Once the transfer has started, these bits are
        // read-only. others: meaningless
        CSS: u2,
        // Alpha Inverted This bit inverts the
        // alpha value. Once the transfer has started, this bit
        // is read-only.
        AI: u1,
        // Red Blue Swap This bit allows to swap
        // the R &amp; B to support BGR or ABGR color
        // formats. Once the transfer has started, this bit is
        // read-only.
        RBS: u1,
        // Reserved
        _reserved_22: u2,
        // Alpha value These bits define a fixed
        // alpha channel value which can replace the original
        // alpha value or be multiplied by the original alpha
        // value according to the alpha mode selected through
        // the AM[1:0] bits. These bits can only be written when
        // data transfers are disabled. Once a transfer has
        // started, they become read-only.
        ALPHA: u8,
    },
    // DMA2D foreground color register
    FGCOLR: packed struct(u32) {
        // Blue Value These bits defines the blue
        // value for the A4 or A8 mode of the foreground image.
        // They can only be written when data transfers are
        // disabled. Once the transfer has started, They are
        // read-only.
        BLUE: u8,
        // Green Value These bits defines the green
        // value for the A4 or A8 mode of the foreground image.
        // They can only be written when data transfers are
        // disabled. Once the transfer has started, They are
        // read-only.
        GREEN: u8,
        // Red Value These bits defines the red
        // value for the A4 or A8 mode of the foreground image.
        // They can only be written when data transfers are
        // disabled. Once the transfer has started, they are
        // read-only.
        RED: u8,
        // Reserved
        _reserved_24: u8,
    },
    // DMA2D background PFC control register
    BGPFCCR: packed struct(u32) {
        // Color mode These bits define the color
        // format of the foreground image. These bits can only
        // be written when data transfers are disabled. Once the
        // transfer has started, they are read-only. others:
        // meaningless
        CM: u4,
        // CLUT Color mode These bits define the
        // color format of the CLUT. This register can only be
        // written when the transfer is disabled. Once the CLUT
        // transfer has started, this bit is
        // read-only.
        CCM: u1,
        // Start This bit is set to start the
        // automatic loading of the CLUT. This bit is
        // automatically reset: ** at the end of the transfer **
        // when the transfer is aborted by the user application
        // by setting the ABORT bit in the DMA2D_CR ** when a
        // transfer error occurs ** when the transfer has not
        // started due to a configuration error or another
        // transfer operation already on going (data transfer or
        // automatic BackGround CLUT transfer).
        START: u1,
        // Reserved
        _reserved_6: u2,
        // CLUT size These bits define the size of
        // the CLUT used for the BG. Once the CLUT transfer has
        // started, this field is read-only. The number of CLUT
        // entries is equal to CS[7:0] + 1.
        CS: u8,
        // Alpha mode These bits define which alpha
        // channel value to be used for the background image.
        // These bits can only be written when data transfers
        // are disabled. Once the transfer has started, they are
        // read-only. others: meaningless
        AM: u2,
        // Reserved
        _reserved_18: u2,
        // Alpha Inverted This bit inverts the
        // alpha value. Once the transfer has started, this bit
        // is read-only.
        AI: u1,
        // Red Blue Swap This bit allows to swap
        // the R &amp; B to support BGR or ABGR color
        // formats. Once the transfer has started, this bit is
        // read-only.
        RBS: u1,
        // Reserved
        _reserved_22: u2,
        // Alpha value These bits define a fixed
        // alpha channel value which can replace the original
        // alpha value or be multiplied with the original alpha
        // value according to the alpha mode selected with bits
        // AM[1: 0]. These bits can only be written when data
        // transfers are disabled. Once the transfer has
        // started, they are read-only.
        ALPHA: u8,
    },
    // DMA2D background color register
    BGCOLR: packed struct(u32) {
        // Blue Value These bits define the blue
        // value for the A4 or A8 mode of the background. These
        // bits can only be written when data transfers are
        // disabled. Once the transfer has started, they are
        // read-only.
        BLUE: u8,
        // Green Value These bits define the green
        // value for the A4 or A8 mode of the background. These
        // bits can only be written when data transfers are
        // disabled. Once the transfer has started, they are
        // read-only.
        GREEN: u8,
        // Red Value These bits define the red
        // value for the A4 or A8 mode of the background. These
        // bits can only be written when data transfers are
        // disabled. Once the transfer has started, they are
        // read-only.
        RED: u8,
        // Reserved
        _reserved_24: u8,
    },
    // DMA2D foreground CLUT memory address register
    FGCMAR: packed struct(u32) {
        // Memory Address Address of the data used
        // for the CLUT address dedicated to the foreground
        // image. This register can only be written when no
        // transfer is ongoing. Once the CLUT transfer has
        // started, this register is read-only. If the
        // foreground CLUT format is 32-bit, the address must be
        // 32-bit aligned.
        MA: u32,
    },
    // DMA2D background CLUT memory address register
    BGCMAR: packed struct(u32) {
        // Memory address Address of the data used
        // for the CLUT address dedicated to the background
        // image. This register can only be written when no
        // transfer is on going. Once the CLUT transfer has
        // started, this register is read-only. If the
        // background CLUT format is 32-bit, the address must be
        // 32-bit aligned.
        MA: u32,
    },
    // DMA2D output PFC control register
    OPFCCR: packed struct(u32) {
        // Color mode These bits define the color
        // format of the output image. These bits can only be
        // written when data transfers are disabled. Once the
        // transfer has started, they are read-only. others:
        // meaningless
        CM: u3,
        // Reserved
        _reserved_3: u17,
        // Alpha Inverted This bit inverts the
        // alpha value. Once the transfer has started, this bit
        // is read-only.
        AI: u1,
        // Red Blue Swap This bit allows to swap
        // the R &amp; B to support BGR or ABGR color
        // formats. Once the transfer has started, this bit is
        // read-only.
        RBS: u1,
        // Reserved
        _reserved_22: u10,
    },
    // DMA2D output color register
    OCOLR: packed struct(u32) {
        // Blue Value These bits define the blue
        // value of the output image. These bits can only be
        // written when data transfers are disabled. Once the
        // transfer has started, they are
        // read-only.
        BLUE: u8,
        // Green Value These bits define the green
        // value of the output image. These bits can only be
        // written when data transfers are disabled. Once the
        // transfer has started, they are
        // read-only.
        GREEN: u8,
        // Red Value These bits define the red
        // value of the output image. These bits can only be
        // written when data transfers are disabled. Once the
        // transfer has started, they are
        // read-only.
        RED: u8,
        // Alpha Channel Value These bits define
        // the alpha channel of the output color. These bits can
        // only be written when data transfers are disabled.
        // Once the transfer has started, they are
        // read-only.
        ALPHA: u8,
    },
    // DMA2D output memory address register
    OMAR: packed struct(u32) {
        // Memory Address Address of the data used
        // for the output FIFO. These bits can only be written
        // when data transfers are disabled. Once the transfer
        // has started, they are read-only. The address
        // alignment must match the image format selected e.g. a
        // 32-bit per pixel format must be 32-bit aligned and a
        // 16-bit per pixel format must be 16-bit
        // aligned.
        MA: u32,
    },
    // DMA2D output offset register
    OOR: packed struct(u32) {
        // Line Offset Line offset used for the
        // output (expressed in pixels). This value is used for
        // the address generation. It is added at the end of
        // each line to determine the starting address of the
        // next line. These bits can only be written when data
        // transfers are disabled. Once the transfer has
        // started, they are read-only.
        LO: u14,
        // Reserved
        _reserved_14: u18,
    },
    // DMA2D number of line register
    NLR: packed struct(u32) {
        // Number of lines Number of lines of the
        // area to be transferred. These bits can only be
        // written when data transfers are disabled. Once the
        // transfer has started, they are
        // read-only.
        NL: u16,
        // Pixel per lines Number of pixels per
        // lines of the area to be transferred. These bits can
        // only be written when data transfers are disabled.
        // Once the transfer has started, they are read-only. If
        // any of the input image format is 4-bit per pixel,
        // pixel per lines must be even.
        PL: u14,
        // Reserved
        _reserved_30: u2,
    },
    // DMA2D line watermark register
    LWR: packed struct(u32) {
        // Line watermark These bits allow to
        // configure the line watermark for interrupt
        // generation. An interrupt is raised when the last
        // pixel of the watermarked line has been transferred.
        // These bits can only be written when data transfers
        // are disabled. Once the transfer has started, they are
        // read-only.
        LW: u16,
        // Reserved
        _reserved_16: u16,
    },
    // DMA2D AXI master timer configuration register
    AMTCR: packed struct(u32) {
        // Enable Enables the dead time functionality.
        EN: u1,
        // Reserved
        _reserved_1: u7,
        // Dead Time Dead time value in the AXI
        // clock cycle inserted between two consecutive accesses
        // on the AXI master port. These bits represent the
        // minimum guaranteed number of cycles between two
        // consecutive AXI accesses.
        DT: u8,
        // Reserved
        _reserved_16: u16,
    },
};

pub const DMA2D_BASE_ADDRESS: usize = 0x52001000;
pub const DMA2D_REGISTERS: *volatile DMA2D = @ptrFromInt(DMA2D_BASE_ADDRESS);
