// GPIO
pub const GPIOA = struct {
    // GPIO port mode register
    MODER: packed struct(u32) {
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE0: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE1: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE2: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE3: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE4: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE5: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE6: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE7: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE8: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE9: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE10: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE11: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE12: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE13: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE14: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O mode.
        MODE15: u2,
    },
    // GPIO port output type register
    OTYPER: packed struct(u32) {
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT0: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT1: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT2: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT3: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT4: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT5: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT6: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT7: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT8: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT9: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT10: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT11: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT12: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT13: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT14: u1,
        // Port x configuration bits (y = 0..15)
        // These bits are written by software to configure the
        // I/O output type.
        OT15: u1,
        // Reserved
        _reserved_16: u16,
    },
    // GPIO port output speed register
    OSPEEDR: packed struct(u32) {
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED0: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED1: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED2: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED3: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED4: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED5: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED6: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED7: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED8: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED9: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED10: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED11: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED12: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED13: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED14: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O output speed. Note: Refer to the
        // device datasheet for the frequency specifications and
        // the power supply and load conditions for each
        // speed.
        OSPEED15: u2,
    },
    // GPIO port pull-up/pull-down register
    PUPDR: packed struct(u32) {
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD0: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD1: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD2: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD3: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD4: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD5: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD6: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD7: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD8: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD9: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD10: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD11: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD12: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD13: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD14: u2,
        // [1:0]: Port x configuration bits (y =
        // 0..15) These bits are written by software to
        // configure the I/O pull-up or pull-down
        PUPD15: u2,
    },
    // GPIO port input data register
    IDR: packed struct(u32) {
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID0: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID1: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID2: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID3: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID4: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID5: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID6: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID7: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID8: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID9: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID10: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID11: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID12: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID13: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID14: u1,
        // Port input data bit (y = 0..15) These
        // bits are read-only. They contain the input value of
        // the corresponding I/O port.
        ID15: u1,
        // Reserved
        _reserved_16: u16,
    },
    // GPIO port output data register
    ODR: packed struct(u32) {
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD0: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD1: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD2: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD3: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD4: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD5: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD6: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD7: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD8: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD9: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD10: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD11: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD12: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD13: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD14: u1,
        // Port output data bit These bits can be
        // read and written by software. Note: For atomic bit
        // set/reset, the OD bits can be individually set and/or
        // reset by writing to the GPIOx_BSRR or GPIOx_BRR
        // registers (x = A..F).
        OD15: u1,
        // Reserved
        _reserved_16: u16,
    },
    // GPIO port bit set/reset register
    BSRR: packed struct(u32) {
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS0: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS1: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS2: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS3: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS4: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS5: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS6: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS7: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS8: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS9: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS10: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS11: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS12: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS13: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS14: u1,
        // Port x set bit y (y= 0..15) These bits
        // are write-only. A read to these bits returns the
        // value 0x0000.
        BS15: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR0: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR1: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR2: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR3: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR4: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR5: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR6: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR7: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR8: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR9: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR10: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR11: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR12: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR13: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR14: u1,
        // Port x reset bit y (y = 0..15) These
        // bits are write-only. A read to these bits returns the
        // value 0x0000. Note: If both BSx and BRx are set, BSx
        // has priority.
        BR15: u1,
    },
    // This register is used to lock the
    // configuration of the port bits when a correct write
    // sequence is applied to bit 16 (LCKK). The value of bits
    // [15:0] is used to lock the configuration of the GPIO.
    // During the write sequence, the value of LCKR[15:0] must
    // not change. When the LOCK sequence has been applied on a
    // port bit, the value of this port bit can no longer be
    // modified until the next MCU reset or peripheral reset.A
    // specific write sequence is used to write to the
    // GPIOx_LCKR register. Only word access (32-bit long) is
    // allowed during this locking sequence.Each lock bit
    // freezes a specific configuration register (control and
    // alternate function registers).
    LCKR: packed struct(u32) {
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK0: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK1: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK2: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK3: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK4: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK5: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK6: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK7: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK8: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK9: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK10: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK11: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK12: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK13: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK14: u1,
        // Port x lock bit y (y= 0..15) These bits
        // are read/write but can only be written when the LCKK
        // bit is 0.
        LCK15: u1,
        // Lock key This bit can be read any time.
        // It can only be modified using the lock key write
        // sequence. LOCK key write sequence: WR LCKR[16] = 1 +
        // LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] =
        // 1 + LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read
        // operation is optional but it confirms that the lock
        // is active) Note: During the LOCK key write sequence,
        // the value of LCK[15:0] must not change. Any error in
        // the lock sequence aborts the lock. After the first
        // lock sequence on any bit of the port, any read access
        // on the LCKK bit will return 1 until the next MCU
        // reset or peripheral reset.
        LCKK: u1,
        // Reserved
        _reserved_17: u15,
    },
    // GPIO alternate function low register
    AFRL: packed struct(u32) {
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL0: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL1: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL2: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL3: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL4: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL5: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL6: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 0..7) These bits are written by
        // software to configure alternate function I/Os AFSELy
        // selection:
        AFSEL7: u4,
    },
    // GPIO alternate function high register
    AFRH: packed struct(u32) {
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL8: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL9: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL10: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL11: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL12: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL13: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL14: u4,
        // [3:0]: Alternate function selection for
        // port x pin y (y = 8..15) These bits are written by
        // software to configure alternate function
        // I/Os
        AFSEL15: u4,
    },
};

pub const GPIOA_BASE_ADDRESS: usize = 0x58020000;
pub const GPIOA_REGISTERS: *volatile GPIOA = @ptrFromInt(GPIOA_BASE_ADDRESS);
