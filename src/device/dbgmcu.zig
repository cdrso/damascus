// Microcontroller Debug Unit
pub const DBGMCU = struct {
    // DBGMCU Identity Code Register
    IDC: packed struct(u32) {
        // Device ID
        DEV_ID: u12,
        // Reserved
        _reserved_12: u4,
        // Revision
        REV_ID: u16,
    },
    // DBGMCU Configuration Register
    CR: packed struct(u32) {
        // Allow D1 domain debug in Sleep mode
        DBGSLEEP_D1: u1,
        // Allow D1 domain debug in Stop mode
        DBGSTOP_D1: u1,
        // Allow D1 domain debug in Standby mode
        DBGSTBY_D1: u1,
        // Allow D2 domain debug in Sleep mode
        DBGSLEEP_D2: u1,
        // Allow D2 domain debug in Stop mode
        DBGSTOP_D2: u1,
        // Allow D2 domain debug in Standby mode
        DBGSTBY_D2: u1,
        // Reserved
        _reserved_6: u1,
        // Allow debug in D3 Stop mode
        DBGSTOP_D3: u1,
        // Allow debug in D3 Standby mode
        DBGSTBY_D3: u1,
        // Reserved
        _reserved_9: u11,
        // Trace port clock enable
        TRACECLKEN: u1,
        // D1 debug clock enable
        D1DBGCKEN: u1,
        // D3 debug clock enable
        D3DBGCKEN: u1,
        // Reserved
        _reserved_23: u5,
        // External trigger output enable
        TRGOEN: u1,
        // Reserved
        _reserved_29: u3,
    },
    // DBGMCU APB3 peripheral freeze register
    APB3FZ1: packed struct(u32) {
        // Reserved
        _reserved_0: u6,
        // WWDG1 stop in debug
        WWDG1: u1,
        // Reserved
        _reserved_7: u25,
    },
    // DBGMCU APB1L peripheral freeze register
    APB1LFZ1: packed struct(u32) {
        // TIM2 stop in debug
        DBG_TIM2: u1,
        // TIM3 stop in debug
        DBG_TIM3: u1,
        // TIM4 stop in debug
        DBG_TIM4: u1,
        // TIM5 stop in debug
        DBG_TIM5: u1,
        // TIM6 stop in debug
        DBG_TIM6: u1,
        // TIM7 stop in debug
        DBG_TIM7: u1,
        // TIM12 stop in debug
        DBG_TIM12: u1,
        // TIM13 stop in debug
        DBG_TIM13: u1,
        // TIM14 stop in debug
        DBG_TIM14: u1,
        // LPTIM1 stop in debug
        DBG_LPTIM1: u1,
        // Reserved
        _reserved_10: u11,
        // I2C1 SMBUS timeout stop in debug
        DBG_I2C1: u1,
        // I2C2 SMBUS timeout stop in debug
        DBG_I2C2: u1,
        // I2C3 SMBUS timeout stop in debug
        DBG_I2C3: u1,
        // Reserved
        _reserved_24: u8,
    },
    // DBGMCU APB2 peripheral freeze register
    APB2FZ1: packed struct(u32) {
        // TIM1 stop in debug
        DBG_TIM1: u1,
        // TIM8 stop in debug
        DBG_TIM8: u1,
        // Reserved
        _reserved_2: u14,
        // TIM15 stop in debug
        DBG_TIM15: u1,
        // TIM16 stop in debug
        DBG_TIM16: u1,
        // TIM17 stop in debug
        DBG_TIM17: u1,
        // Reserved
        _reserved_19: u10,
        // HRTIM stop in debug
        DBG_HRTIM: u1,
        // Reserved
        _reserved_30: u2,
    },
    // DBGMCU APB4 peripheral freeze register
    APB4FZ1: packed struct(u32) {
        // Reserved
        _reserved_0: u7,
        // I2C4 SMBUS timeout stop in debug
        DBG_I2C4: u1,
        // Reserved
        _reserved_8: u1,
        // LPTIM2 stop in debug
        DBG_LPTIM2: u1,
        // LPTIM2 stop in debug
        DBG_LPTIM3: u1,
        // LPTIM4 stop in debug
        DBG_LPTIM4: u1,
        // LPTIM5 stop in debug
        DBG_LPTIM5: u1,
        // Reserved
        _reserved_13: u3,
        // RTC stop in debug
        DBG_RTC: u1,
        // Reserved
        _reserved_17: u1,
        // Independent watchdog for D1 stop in debug
        DBG_WDGLSD1: u1,
        // Reserved
        _reserved_19: u13,
    },
};

pub const DBGMCU_BASE_ADDRESS: usize = 0x5C001000;
pub const DBGMCU_REGISTERS: *volatile DBGMCU = @ptrFromInt(DBGMCU_BASE_ADDRESS);
