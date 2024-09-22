// JPEG
pub const JPEG = struct {
    // JPEG codec control register
    CONFR0: packed struct(u32) {
        // Start This bit start or stop the
        // encoding or decoding process. Read this register
        // always return 0.
        START: u1,
        // Reserved
        _reserved_1: u31,
    },
    // JPEG codec configuration register 1
    CONFR1: packed struct(u32) {
        // Number of color components This field
        // defines the number of color components minus
        // 1.
        NF: u2,
        // Reserved
        _reserved_2: u1,
        // Decoding Enable This bit selects the coding or decoding process
        DE: u1,
        // Color Space This filed defines the
        // number of quantization tables minus 1 to insert in
        // the output stream.
        COLORSPACE: u2,
        // Number of components for Scan This field
        // defines the number of components minus 1 for scan
        // header marker segment.
        NS: u2,
        // Header Processing This bit enable the header processing (generation/parsing).
        HDR: u1,
        // Reserved
        _reserved_9: u7,
        // Y Size This field defines the number of lines in source image.
        YSIZE: u16,
    },
    // JPEG codec configuration register 2
    CONFR2: packed struct(u32) {
        // Number of MCU For encoding: this field
        // defines the number of MCU units minus 1 to encode.
        // For decoding: this field indicates the number of
        // complete MCU units minus 1 to be decoded (this field
        // is updated after the JPEG header parsing). If the
        // decoded image size has not a X or Y size multiple of
        // 8 or 16 (depending on the sub-sampling process), the
        // resulting incomplete or empty MCU must be added to
        // this value to get the total number of MCU
        // generated.
        NMCU: u26,
        // Reserved
        _reserved_26: u6,
    },
    // JPEG codec configuration register 3
    CONFR3: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // X size This field defines the number of pixels per line.
        XSIZE: u16,
    },
    // JPEG codec configuration register 4-7
    CONFRN1: packed struct(u32) {
        // Huffman DC Selects the Huffman table for encoding the DC coefficients.
        HD: u1,
        // Huffman AC Selects the Huffman table for encoding the AC coefficients.
        HA: u1,
        // Quantization Table Selects quantization
        // table associated with a color
        // component.
        QT: u2,
        // Number of Block Number of data units
        // minus 1 that belong to a particular color in the
        // MCU.
        NB: u4,
        // Vertical Sampling Factor Vertical sampling factor for component i.
        VSF: u4,
        // Horizontal Sampling Factor Horizontal sampling factor for component i.
        HSF: u4,
        // Reserved
        _reserved_16: u16,
    },
    // JPEG codec configuration register 4-7
    CONFRN2: packed struct(u32) {
        // Huffman DC Selects the Huffman table for encoding the DC coefficients.
        HD: u1,
        // Huffman AC Selects the Huffman table for encoding the AC coefficients.
        HA: u1,
        // Quantization Table Selects quantization
        // table associated with a color
        // component.
        QT: u2,
        // Number of Block Number of data units
        // minus 1 that belong to a particular color in the
        // MCU.
        NB: u4,
        // Vertical Sampling Factor Vertical sampling factor for component i.
        VSF: u4,
        // Horizontal Sampling Factor Horizontal sampling factor for component i.
        HSF: u4,
        // Reserved
        _reserved_16: u16,
    },
    // JPEG codec configuration register 4-7
    CONFRN3: packed struct(u32) {
        // Huffman DC Selects the Huffman table for encoding the DC coefficients.
        HD: u1,
        // Huffman AC Selects the Huffman table for encoding the AC coefficients.
        HA: u1,
        // Quantization Table Selects quantization
        // table associated with a color
        // component.
        QT: u2,
        // Number of Block Number of data units
        // minus 1 that belong to a particular color in the
        // MCU.
        NB: u4,
        // Vertical Sampling Factor Vertical sampling factor for component i.
        VSF: u4,
        // Horizontal Sampling Factor Horizontal sampling factor for component i.
        HSF: u4,
        // Reserved
        _reserved_16: u16,
    },
    // JPEG codec configuration register 4-7
    CONFRN4: packed struct(u32) {
        // Huffman DC Selects the Huffman table for encoding the DC coefficients.
        HD: u1,
        // Huffman AC Selects the Huffman table for encoding the AC coefficients.
        HA: u1,
        // Quantization Table Selects quantization
        // table associated with a color
        // component.
        QT: u2,
        // Number of Block Number of data units
        // minus 1 that belong to a particular color in the
        // MCU.
        NB: u4,
        // Vertical Sampling Factor Vertical sampling factor for component i.
        VSF: u4,
        // Horizontal Sampling Factor Horizontal sampling factor for component i.
        HSF: u4,
        // Reserved
        _reserved_16: u16,
    },
    // JPEG control register
    CR: packed struct(u32) {
        // JPEG Core Enable Enable the JPEG codec Core.
        JCEN: u1,
        // Input FIFO Threshold Interrupt Enable
        // This bit enables the interrupt generation when input
        // FIFO reach the threshold.
        IFTIE: u1,
        // Input FIFO Not Full Interrupt Enable
        // This bit enables the interrupt generation when input
        // FIFO is not empty.
        IFNFIE: u1,
        // Output FIFO Threshold Interrupt Enable
        // This bit enables the interrupt generation when output
        // FIFO reach the threshold.
        OFTIE: u1,
        // Output FIFO Not Empty Interrupt Enable
        // This bit enables the interrupt generation when output
        // FIFO is not empty.
        OFNEIE: u1,
        // End of Conversion Interrupt Enable This
        // bit enables the interrupt generation on the end of
        // conversion.
        EOCIE: u1,
        // Header Parsing Done Interrupt Enable
        // This bit enables the interrupt generation on the
        // Header Parsing Operation.
        HPDIE: u1,
        // Reserved
        _reserved_7: u4,
        // Input DMA Enable Enable the DMA request generation for the input FIFO.
        IDMAEN: u1,
        // Output DMA Enable Enable the DMA request generation for the output FIFO.
        ODMAEN: u1,
        // Input FIFO Flush This bit flush the
        // input FIFO. This bit is always read as
        // 0.
        IFF: u1,
        // Output FIFO Flush This bit flush the
        // output FIFO. This bit is always read as
        // 0.
        OFF: u1,
        // Reserved
        _reserved_15: u17,
    },
    // JPEG status register
    SR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // Input FIFO Threshold Flag This bit is
        // set when the input FIFO is not full and is bellow its
        // threshold.
        IFTF: u1,
        // Input FIFO Not Full Flag This bit is set
        // when the input FIFO is not full (a data can be
        // written).
        IFNFF: u1,
        // Output FIFO Threshold Flag This bit is
        // set when the output FIFO is not empty and has reach
        // its threshold.
        OFTF: u1,
        // Output FIFO Not Empty Flag This bit is
        // set when the output FIFO is not empty (a data is
        // available).
        OFNEF: u1,
        // End of Conversion Flag This bit is set
        // when the JPEG codec core has finished the encoding or
        // the decoding process and than last data has been sent
        // to the output FIFO.
        EOCF: u1,
        // Header Parsing Done Flag This bit is set
        // in decode mode when the JPEG codec has finished the
        // parsing of the headers and the internal registers
        // have been updated.
        HPDF: u1,
        // Codec Operation Flag This bit is set
        // when when a JPEG codec operation is on going
        // (encoding or decoding).
        COF: u1,
        // Reserved
        _reserved_8: u24,
    },
    // JPEG clear flag register
    CFR: packed struct(u32) {
        // Reserved
        _reserved_0: u5,
        // Clear End of Conversion Flag Writing 1
        // clears the End of Conversion Flag of the JPEG Status
        // Register.
        CEOCF: u1,
        // Clear Header Parsing Done Flag Writing 1
        // clears the Header Parsing Done Flag of the JPEG
        // Status Register.
        CHPDF: u1,
        // Reserved
        _reserved_7: u25,
    },
    // JPEG data input register
    DIR: packed struct(u32) {
        // Data Input FIFO Input FIFO data register.
        DATAIN: u32,
    },
    // JPEG data output register
    DOR: packed struct(u32) {
        // Data Output FIFO Output FIFO data register.
        DATAOUT: u32,
    },
};

pub const JPEG_BASE_ADDRESS: usize = 0x52003000;
pub const JPEG_REGISTERS: *volatile JPEG = @ptrFromInt(JPEG_BASE_ADDRESS);
