// System configuration controller
pub const SYSCFG = struct {
    // peripheral mode configuration register
    PMCR: packed struct(u32) {
        // I2C1 Fm+
        I2C1FMP: u1,
        // I2C2 Fm+
        I2C2FMP: u1,
        // I2C3 Fm+
        I2C3FMP: u1,
        // I2C4 Fm+
        I2C4FMP: u1,
        // PB(6) Fm+
        PB6FMP: u1,
        // PB(7) Fast Mode Plus
        PB7FMP: u1,
        // PB(8) Fast Mode Plus
        PB8FMP: u1,
        // PB(9) Fm+
        PB9FMP: u1,
        // Booster Enable
        BOOSTE: u1,
        // Analog switch supply voltage selection
        BOOSTVDDSEL: u1,
        // Reserved
        _reserved_10: u11,
        // Ethernet PHY Interface Selection
        EPIS: u3,
        // PA0 Switch Open
        PA0SO: u1,
        // PA1 Switch Open
        PA1SO: u1,
        // PC2 Switch Open
        PC2SO: u1,
        // PC3 Switch Open
        PC3SO: u1,
        // Reserved
        _reserved_28: u4,
    },
    // external interrupt configuration register 1
    EXTICR1: packed struct(u32) {
        // EXTI x configuration (x = 0 to 3)
        EXTI0: u4,
        // EXTI x configuration (x = 0 to 3)
        EXTI1: u4,
        // EXTI x configuration (x = 0 to 3)
        EXTI2: u4,
        // EXTI x configuration (x = 0 to 3)
        EXTI3: u4,
        // Reserved
        _reserved_16: u16,
    },
    // external interrupt configuration register 2
    EXTICR2: packed struct(u32) {
        // EXTI x configuration (x = 4 to 7)
        EXTI4: u4,
        // EXTI x configuration (x = 4 to 7)
        EXTI5: u4,
        // EXTI x configuration (x = 4 to 7)
        EXTI6: u4,
        // EXTI x configuration (x = 4 to 7)
        EXTI7: u4,
        // Reserved
        _reserved_16: u16,
    },
    // external interrupt configuration register 3
    EXTICR3: packed struct(u32) {
        // EXTI x configuration (x = 8 to 11)
        EXTI8: u4,
        // EXTI x configuration (x = 8 to 11)
        EXTI9: u4,
        // EXTI10
        EXTI10: u4,
        // EXTI x configuration (x = 8 to 11)
        EXTI11: u4,
        // Reserved
        _reserved_16: u16,
    },
    // external interrupt configuration register 4
    EXTICR4: packed struct(u32) {
        // EXTI x configuration (x = 12 to 15)
        EXTI12: u4,
        // EXTI x configuration (x = 12 to 15)
        EXTI13: u4,
        // EXTI x configuration (x = 12 to 15)
        EXTI14: u4,
        // EXTI x configuration (x = 12 to 15)
        EXTI15: u4,
        // Reserved
        _reserved_16: u16,
    },
    // compensation cell control/status register
    CCCSR: packed struct(u32) {
        // enable
        EN: u1,
        // Code selection
        CS: u1,
        // Reserved
        _reserved_2: u6,
        // Compensation cell ready flag
        READY: u1,
        // Reserved
        _reserved_9: u7,
        // High-speed at low-voltage
        HSLV: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG compensation cell value register
    CCVR: packed struct(u32) {
        // NMOS compensation value
        NCV: u4,
        // PMOS compensation value
        PCV: u4,
        // Reserved
        _reserved_8: u24,
    },
    // SYSCFG compensation cell code register
    CCCR: packed struct(u32) {
        // NMOS compensation code
        NCC: u4,
        // PMOS compensation code
        PCC: u4,
        // Reserved
        _reserved_8: u24,
    },
    // SYSCFG power control register
    PWRCR: packed struct(u32) {
        // Overdrive enable
        ODEN: u4,
        // Reserved
        _reserved_4: u28,
    },
    // SYSCFG package register
    PKGR: packed struct(u32) {
        // Package
        PKG: u4,
        // Reserved
        _reserved_4: u28,
    },
    // SYSCFG user register 0
    UR0: packed struct(u32) {
        // Bank Swap
        BKS: u1,
        // Reserved
        _reserved_1: u15,
        // Readout protection
        RDP: u8,
        // Reserved
        _reserved_24: u8,
    },
    // SYSCFG user register 2
    UR2: packed struct(u32) {
        // BOR_LVL Brownout Reset Threshold Level
        BORH: u2,
        // Reserved
        _reserved_2: u14,
        // Boot Address 0
        BOOT_ADD0: u16,
    },
    // SYSCFG user register 3
    UR3: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Boot Address 1
        BOOT_ADD1: u16,
    },
    // SYSCFG user register 4
    UR4: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Mass Erase Protected Area Disabled for bank 1
        MEPAD_1: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG user register 5
    UR5: packed struct(u32) {
        // Mass erase secured area disabled for bank 1
        MESAD_1: u1,
        // Reserved
        _reserved_1: u15,
        // Write protection for flash bank 1
        WRPN_1: u8,
        // Reserved
        _reserved_24: u8,
    },
    // SYSCFG user register 6
    UR6: packed struct(u32) {
        // Protected area start address for bank 1
        PA_BEG_1: u12,
        // Reserved
        _reserved_12: u4,
        // Protected area end address for bank 1
        PA_END_1: u12,
        // Reserved
        _reserved_28: u4,
    },
    // SYSCFG user register 7
    UR7: packed struct(u32) {
        // Secured area start address for bank 1
        SA_BEG_1: u12,
        // Reserved
        _reserved_12: u4,
        // Secured area end address for bank 1
        SA_END_1: u12,
        // Reserved
        _reserved_28: u4,
    },
    // SYSCFG user register 8
    UR8: packed struct(u32) {
        // Mass erase protected area disabled for bank 2
        MEPAD_2: u1,
        // Reserved
        _reserved_1: u15,
        // Mass erase secured area disabled for bank 2
        MESAD_2: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG user register 9
    UR9: packed struct(u32) {
        // Write protection for flash bank 2
        WRPN_2: u8,
        // Reserved
        _reserved_8: u8,
        // Protected area start address for bank 2
        PA_BEG_2: u12,
        // Reserved
        _reserved_28: u4,
    },
    // SYSCFG user register 10
    UR10: packed struct(u32) {
        // Protected area end address for bank 2
        PA_END_2: u12,
        // Reserved
        _reserved_12: u4,
        // Secured area start address for bank 2
        SA_BEG_2: u12,
        // Reserved
        _reserved_28: u4,
    },
    // SYSCFG user register 11
    UR11: packed struct(u32) {
        // Secured area end address for bank 2
        SA_END_2: u12,
        // Reserved
        _reserved_12: u4,
        // Independent Watchdog 1 mode
        IWDG1M: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG user register 12
    UR12: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Secure mode
        SECURE: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG user register 13
    UR13: packed struct(u32) {
        // Secured DTCM RAM Size
        SDRS: u2,
        // Reserved
        _reserved_2: u14,
        // D1 Standby reset
        D1SBRST: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG user register 14
    UR14: packed struct(u32) {
        // D1 Stop Reset
        D1STPRST: u1,
        // Reserved
        _reserved_1: u31,
    },
    // SYSCFG user register 15
    UR15: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Freeze independent watchdog in Standby mode
        FZIWDGSTB: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG user register 16
    UR16: packed struct(u32) {
        // Freeze independent watchdog in Stop mode
        FZIWDGSTP: u1,
        // Reserved
        _reserved_1: u15,
        // Private key programmed
        PKP: u1,
        // Reserved
        _reserved_17: u15,
    },
    // SYSCFG user register 17
    UR17: packed struct(u32) {
        // I/O high speed / low voltage
        IO_HSLV: u1,
        // Reserved
        _reserved_1: u31,
    },
};

pub const SYSCFG_BASE_ADDRESS: usize = 0x58000400;
pub const SYSCFG_REGISTERS: *volatile SYSCFG = @ptrFromInt(SYSCFG_BASE_ADDRESS);
