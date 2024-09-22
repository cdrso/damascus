// DAC
pub const DAC = struct {
    // DAC control register
    CR: packed struct(u32) {
        // DAC channel1 enable This bit is set and
        // cleared by software to enable/disable DAC
        // channel1.
        EN1: u1,
        // DAC channel1 trigger enable
        TEN1: u1,
        // DAC channel1 trigger selection These
        // bits select the external event used to trigger DAC
        // channel1. Note: Only used if bit TEN1 = 1 (DAC
        // channel1 trigger enabled).
        TSEL1: u3,
        // Reserved
        _reserved_5: u1,
        // DAC channel1 noise/triangle wave
        // generation enable These bits are set and cleared by
        // software. Note: Only used if bit TEN1 = 1 (DAC
        // channel1 trigger enabled).
        WAVE1: u2,
        // DAC channel1 mask/amplitude selector
        // These bits are written by software to select mask in
        // wave generation mode or amplitude in triangle
        // generation mode. = 1011: Unmask bits[11:0] of LFSR/
        // triangle amplitude equal to 4095
        MAMP1: u4,
        // DAC channel1 DMA enable This bit is set and cleared by software.
        DMAEN1: u1,
        // DAC channel1 DMA Underrun Interrupt
        // enable This bit is set and cleared by
        // software.
        DMAUDRIE1: u1,
        // DAC Channel 1 calibration enable This
        // bit is set and cleared by software to enable/disable
        // DAC channel 1 calibration, it can be written only if
        // bit EN1=0 into DAC_CR (the calibration mode can be
        // entered/exit only when the DAC channel is disabled)
        // Otherwise, the write operation is
        // ignored.
        CEN1: u1,
        // Reserved
        _reserved_15: u1,
        // DAC channel2 enable This bit is set and
        // cleared by software to enable/disable DAC
        // channel2.
        EN2: u1,
        // DAC channel2 trigger enable
        TEN2: u1,
        // DAC channel2 trigger selection These
        // bits select the external event used to trigger DAC
        // channel2 Note: Only used if bit TEN2 = 1 (DAC
        // channel2 trigger enabled).
        TSEL2: u3,
        // Reserved
        _reserved_21: u1,
        // DAC channel2 noise/triangle wave
        // generation enable These bits are set/reset by
        // software. 1x: Triangle wave generation enabled Note:
        // Only used if bit TEN2 = 1 (DAC channel2 trigger
        // enabled)
        WAVE2: u2,
        // DAC channel2 mask/amplitude selector
        // These bits are written by software to select mask in
        // wave generation mode or amplitude in triangle
        // generation mode. = 1011: Unmask bits[11:0] of LFSR/
        // triangle amplitude equal to 4095
        MAMP2: u4,
        // DAC channel2 DMA enable This bit is set and cleared by software.
        DMAEN2: u1,
        // DAC channel2 DMA underrun interrupt
        // enable This bit is set and cleared by
        // software.
        DMAUDRIE2: u1,
        // DAC Channel 2 calibration enable This
        // bit is set and cleared by software to enable/disable
        // DAC channel 2 calibration, it can be written only if
        // bit EN2=0 into DAC_CR (the calibration mode can be
        // entered/exit only when the DAC channel is disabled)
        // Otherwise, the write operation is
        // ignored.
        CEN2: u1,
        // Reserved
        _reserved_31: u1,
    },
    // DAC software trigger register
    SWTRGR: packed struct(u32) {
        // DAC channel1 software trigger This bit
        // is set by software to trigger the DAC in software
        // trigger mode. Note: This bit is cleared by hardware
        // (one APB1 clock cycle later) once the DAC_DHR1
        // register value has been loaded into the DAC_DOR1
        // register.
        SWTRIG1: u1,
        // DAC channel2 software trigger This bit
        // is set by software to trigger the DAC in software
        // trigger mode. Note: This bit is cleared by hardware
        // (one APB1 clock cycle later) once the DAC_DHR2
        // register value has been loaded into the DAC_DOR2
        // register.
        SWTRIG2: u1,
        // Reserved
        _reserved_2: u30,
    },
    // DAC channel1 12-bit right-aligned data holding register
    DHR12R1: packed struct(u32) {
        // DAC channel1 12-bit right-aligned data
        // These bits are written by software which specifies
        // 12-bit data for DAC channel1.
        DACC1DHR: u12,
        // Reserved
        _reserved_12: u20,
    },
    // DAC channel1 12-bit left aligned data holding register
    DHR12L1: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // DAC channel1 12-bit left-aligned data
        // These bits are written by software which specifies
        // 12-bit data for DAC channel1.
        DACC1DHR: u12,
        // Reserved
        _reserved_16: u16,
    },
    // DAC channel1 8-bit right aligned data holding register
    DHR8R1: packed struct(u32) {
        // DAC channel1 8-bit right-aligned data
        // These bits are written by software which specifies
        // 8-bit data for DAC channel1.
        DACC1DHR: u8,
        // Reserved
        _reserved_8: u24,
    },
    // DAC channel2 12-bit right aligned data holding register
    DHR12R2: packed struct(u32) {
        // DAC channel2 12-bit right-aligned data
        // These bits are written by software which specifies
        // 12-bit data for DAC channel2.
        DACC2DHR: u12,
        // Reserved
        _reserved_12: u20,
    },
    // DAC channel2 12-bit left aligned data holding register
    DHR12L2: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // DAC channel2 12-bit left-aligned data
        // These bits are written by software which specify
        // 12-bit data for DAC channel2.
        DACC2DHR: u12,
        // Reserved
        _reserved_16: u16,
    },
    // DAC channel2 8-bit right-aligned data holding register
    DHR8R2: packed struct(u32) {
        // DAC channel2 8-bit right-aligned data
        // These bits are written by software which specifies
        // 8-bit data for DAC channel2.
        DACC2DHR: u8,
        // Reserved
        _reserved_8: u24,
    },
    // Dual DAC 12-bit right-aligned data holding register
    DHR12RD: packed struct(u32) {
        // DAC channel1 12-bit right-aligned data
        // These bits are written by software which specifies
        // 12-bit data for DAC channel1.
        DACC1DHR: u12,
        // Reserved
        _reserved_12: u4,
        // DAC channel2 12-bit right-aligned data
        // These bits are written by software which specifies
        // 12-bit data for DAC channel2.
        DACC2DHR: u12,
        // Reserved
        _reserved_28: u4,
    },
    // DUAL DAC 12-bit left aligned data holding register
    DHR12LD: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // DAC channel1 12-bit left-aligned data
        // These bits are written by software which specifies
        // 12-bit data for DAC channel1.
        DACC1DHR: u12,
        // Reserved
        _reserved_16: u4,
        // DAC channel2 12-bit left-aligned data
        // These bits are written by software which specifies
        // 12-bit data for DAC channel2.
        DACC2DHR: u12,
    },
    // DUAL DAC 8-bit right aligned data holding register
    DHR8RD: packed struct(u32) {
        // DAC channel1 8-bit right-aligned data
        // These bits are written by software which specifies
        // 8-bit data for DAC channel1.
        DACC1DHR: u8,
        // DAC channel2 8-bit right-aligned data
        // These bits are written by software which specifies
        // 8-bit data for DAC channel2.
        DACC2DHR: u8,
        // Reserved
        _reserved_16: u16,
    },
    // DAC channel1 data output register
    DOR1: packed struct(u32) {
        // DAC channel1 data output These bits are
        // read-only, they contain data output for DAC
        // channel1.
        DACC1DOR: u12,
        // Reserved
        _reserved_12: u20,
    },
    // DAC channel2 data output register
    DOR2: packed struct(u32) {
        // DAC channel2 data output These bits are
        // read-only, they contain data output for DAC
        // channel2.
        DACC2DOR: u12,
        // Reserved
        _reserved_12: u20,
    },
    // DAC status register
    SR: packed struct(u32) {
        // Reserved
        _reserved_0: u13,
        // DAC channel1 DMA underrun flag This bit
        // is set by hardware and cleared by software (by
        // writing it to 1).
        DMAUDR1: u1,
        // DAC Channel 1 calibration offset status This bit is set and cleared by hardware
        CAL_FLAG1: u1,
        // DAC Channel 1 busy writing sample time
        // flag This bit is systematically set just after Sample
        // & Hold mode enable and is set each time the
        // software writes the register DAC_SHSR1, It is cleared
        // by hardware when the write operation of DAC_SHSR1 is
        // complete. (It takes about 3LSI periods of
        // synchronization).
        BWST1: u1,
        // Reserved
        _reserved_16: u13,
        // DAC channel2 DMA underrun flag This bit
        // is set by hardware and cleared by software (by
        // writing it to 1).
        DMAUDR2: u1,
        // DAC Channel 2 calibration offset status This bit is set and cleared by hardware
        CAL_FLAG2: u1,
        // DAC Channel 2 busy writing sample time
        // flag This bit is systematically set just after Sample
        // & Hold mode enable and is set each time the
        // software writes the register DAC_SHSR2, It is cleared
        // by hardware when the write operation of DAC_SHSR2 is
        // complete. (It takes about 3 LSI periods of
        // synchronization).
        BWST2: u1,
    },
    // DAC calibration control register
    CCR: packed struct(u32) {
        // DAC Channel 1 offset trimming value
        OTRIM1: u5,
        // Reserved
        _reserved_5: u11,
        // DAC Channel 2 offset trimming value
        OTRIM2: u5,
        // Reserved
        _reserved_21: u11,
    },
    // DAC mode control register
    MCR: packed struct(u32) {
        // DAC Channel 1 mode These bits can be
        // written only when the DAC is disabled and not in the
        // calibration mode (when bit EN1=0 and bit CEN1 =0 in
        // the DAC_CR register). If EN1=1 or CEN1 =1 the write
        // operation is ignored. They can be set and cleared by
        // software to select the DAC Channel 1 mode: DAC
        // Channel 1 in normal Mode DAC Channel 1 in sample
        // &amp; hold mode
        MODE1: u3,
        // Reserved
        _reserved_3: u13,
        // DAC Channel 2 mode These bits can be
        // written only when the DAC is disabled and not in the
        // calibration mode (when bit EN2=0 and bit CEN2 =0 in
        // the DAC_CR register). If EN2=1 or CEN2 =1 the write
        // operation is ignored. They can be set and cleared by
        // software to select the DAC Channel 2 mode: DAC
        // Channel 2 in normal Mode DAC Channel 2 in sample
        // &amp; hold mode
        MODE2: u3,
        // Reserved
        _reserved_19: u13,
    },
    // DAC Sample and Hold sample time register 1
    SHSR1: packed struct(u32) {
        // DAC Channel 1 sample Time (only valid in
        // sample &amp; hold mode) These bits can be written
        // when the DAC channel1 is disabled or also during
        // normal operation. in the latter case, the write can
        // be done only when BWSTx of DAC_SR register is low, If
        // BWSTx=1, the write operation is
        // ignored.
        TSAMPLE1: u10,
        // Reserved
        _reserved_10: u22,
    },
    // DAC Sample and Hold sample time register 2
    SHSR2: packed struct(u32) {
        // DAC Channel 2 sample Time (only valid in
        // sample &amp; hold mode) These bits can be written
        // when the DAC channel2 is disabled or also during
        // normal operation. in the latter case, the write can
        // be done only when BWSTx of DAC_SR register is low, if
        // BWSTx=1, the write operation is
        // ignored.
        TSAMPLE2: u10,
        // Reserved
        _reserved_10: u22,
    },
    // DAC Sample and Hold hold time register
    SHHR: packed struct(u32) {
        // DAC Channel 1 hold Time (only valid in
        // sample &amp; hold mode) Hold time= (THOLD[9:0]) x
        // T LSI
        THOLD1: u10,
        // Reserved
        _reserved_10: u6,
        // DAC Channel 2 hold time (only valid in
        // sample &amp; hold mode). Hold time= (THOLD[9:0])
        // x T LSI
        THOLD2: u10,
        // Reserved
        _reserved_26: u6,
    },
    // DAC Sample and Hold refresh time register
    SHRR: packed struct(u32) {
        // DAC Channel 1 refresh Time (only valid
        // in sample &amp; hold mode) Refresh time=
        // (TREFRESH[7:0]) x T LSI
        TREFRESH1: u8,
        // Reserved
        _reserved_8: u8,
        // DAC Channel 2 refresh Time (only valid
        // in sample &amp; hold mode) Refresh time=
        // (TREFRESH[7:0]) x T LSI
        TREFRESH2: u8,
        // Reserved
        _reserved_24: u8,
    },
};

pub const DAC_BASE_ADDRESS: usize = 0x40007400;
pub const DAC_REGISTERS: *volatile DAC = @ptrFromInt(DAC_BASE_ADDRESS);
