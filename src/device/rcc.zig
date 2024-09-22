// Reset and clock control
pub const RCC = struct {
    // clock control register
    CR: packed struct(u32) {
        // Internal high-speed clock enable
        HSION: u1,
        // High Speed Internal clock enable in Stop mode
        HSIKERON: u1,
        // HSI clock ready flag
        HSIRDY: u1,
        // HSI clock divider
        HSIDIV: u2,
        // HSI divider flag
        HSIDIVF: u1,
        // Reserved
        _reserved_6: u1,
        // CSI clock enable
        CSION: u1,
        // CSI clock ready flag
        CSIRDY: u1,
        // CSI clock enable in Stop mode
        CSIKERON: u1,
        // Reserved
        _reserved_10: u2,
        // RC48 clock enable
        RC48ON: u1,
        // RC48 clock ready flag
        RC48RDY: u1,
        // D1 domain clocks ready flag
        D1CKRDY: u1,
        // D2 domain clocks ready flag
        D2CKRDY: u1,
        // HSE clock enable
        HSEON: u1,
        // HSE clock ready flag
        HSERDY: u1,
        // HSE clock bypass
        HSEBYP: u1,
        // HSE Clock Security System enable
        HSECSSON: u1,
        // Reserved
        _reserved_20: u4,
        // PLL1 enable
        PLL1ON: u1,
        // PLL1 clock ready flag
        PLL1RDY: u1,
        // PLL2 enable
        PLL2ON: u1,
        // PLL2 clock ready flag
        PLL2RDY: u1,
        // PLL3 enable
        PLL3ON: u1,
        // PLL3 clock ready flag
        PLL3RDY: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC Internal Clock Source Calibration Register
    ICSCR: packed struct(u32) {
        // HSI clock calibration
        HSICAL: u12,
        // HSI clock trimming
        HSITRIM: u6,
        // CSI clock calibration
        CSICAL: u8,
        // CSI clock trimming
        CSITRIM: u5,
        // Reserved
        _reserved_31: u1,
    },
    // RCC Clock Recovery RC Register
    CRRCR: packed struct(u32) {
        // Internal RC 48 MHz clock calibration
        RC48CAL: u10,
        // Reserved
        _reserved_10: u22,
    },
    // RCC Clock Configuration Register
    CFGR: packed struct(u32) {
        // System clock switch
        SW: u3,
        // System clock switch status
        SWS: u3,
        // System clock selection after a wake up from system Stop
        STOPWUCK: u1,
        // Kernel clock selection after a wake up from system Stop
        STOPKERWUCK: u1,
        // HSE division factor for RTC clock
        RTCPRE: u6,
        // High Resolution Timer clock prescaler selection
        HRTIMSEL: u1,
        // Timers clocks prescaler selection
        TIMPRE: u1,
        // Reserved
        _reserved_16: u2,
        // MCO1 prescaler
        MCO1PRE: u4,
        // Micro-controller clock output 1
        MCO1SEL: u3,
        // MCO2 prescaler
        MCO2PRE: u4,
        // Micro-controller clock output 2
        MCO2SEL: u3,
    },
    // RCC Domain 1 Clock Configuration Register
    D1CFGR: packed struct(u32) {
        // D1 domain AHB prescaler
        HPRE: u4,
        // D1 domain APB3 prescaler
        D1PPRE: u3,
        // Reserved
        _reserved_7: u1,
        // D1 domain Core prescaler
        D1CPRE: u4,
        // Reserved
        _reserved_12: u20,
    },
    // RCC Domain 2 Clock Configuration Register
    D2CFGR: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // D2 domain APB1 prescaler
        D2PPRE1: u3,
        // Reserved
        _reserved_7: u1,
        // D2 domain APB2 prescaler
        D2PPRE2: u3,
        // Reserved
        _reserved_11: u21,
    },
    // RCC Domain 3 Clock Configuration Register
    D3CFGR: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // D3 domain APB4 prescaler
        D3PPRE: u3,
        // Reserved
        _reserved_7: u25,
    },
    // RCC PLLs Clock Source Selection Register
    PLLCKSELR: packed struct(u32) {
        // DIVMx and PLLs clock source selection
        PLLSRC: u2,
        // Reserved
        _reserved_2: u2,
        // Prescaler for PLL1
        DIVM1: u6,
        // Reserved
        _reserved_10: u2,
        // Prescaler for PLL2
        DIVM2: u6,
        // Reserved
        _reserved_18: u2,
        // Prescaler for PLL3
        DIVM3: u6,
        // Reserved
        _reserved_26: u6,
    },
    // RCC PLLs Configuration Register
    PLLCFGR: packed struct(u32) {
        // PLL1 fractional latch enable
        PLL1FRACEN: u1,
        // PLL1 VCO selection
        PLL1VCOSEL: u1,
        // PLL1 input frequency range
        PLL1RGE: u2,
        // PLL2 fractional latch enable
        PLL2FRACEN: u1,
        // PLL2 VCO selection
        PLL2VCOSEL: u1,
        // PLL2 input frequency range
        PLL2RGE: u2,
        // PLL3 fractional latch enable
        PLL3FRACEN: u1,
        // PLL3 VCO selection
        PLL3VCOSEL: u1,
        // PLL3 input frequency range
        PLL3RGE: u2,
        // Reserved
        _reserved_12: u4,
        // PLL1 DIVP divider output enable
        DIVP1EN: u1,
        // PLL1 DIVQ divider output enable
        DIVQ1EN: u1,
        // PLL1 DIVR divider output enable
        DIVR1EN: u1,
        // PLL2 DIVP divider output enable
        DIVP2EN: u1,
        // PLL2 DIVQ divider output enable
        DIVQ2EN: u1,
        // PLL2 DIVR divider output enable
        DIVR2EN: u1,
        // PLL3 DIVP divider output enable
        DIVP3EN: u1,
        // PLL3 DIVQ divider output enable
        DIVQ3EN: u1,
        // PLL3 DIVR divider output enable
        DIVR3EN: u1,
        // Reserved
        _reserved_25: u7,
    },
    // RCC PLL1 Dividers Configuration Register
    PLL1DIVR: packed struct(u32) {
        // Multiplication factor for PLL1 VCO
        DIVN1: u9,
        // PLL1 DIVP division factor
        DIVP1: u7,
        // PLL1 DIVQ division factor
        DIVQ1: u7,
        // Reserved
        _reserved_23: u1,
        // PLL1 DIVR division factor
        DIVR1: u7,
        // Reserved
        _reserved_31: u1,
    },
    // RCC PLL1 Fractional Divider Register
    PLL1FRACR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // Fractional part of the multiplication factor for PLL1 VCO
        FRACN1: u13,
        // Reserved
        _reserved_16: u16,
    },
    // RCC PLL2 Dividers Configuration Register
    PLL2DIVR: packed struct(u32) {
        // Multiplication factor for PLL1 VCO
        DIVN2: u9,
        // PLL1 DIVP division factor
        DIVP12: u7,
        // PLL1 DIVQ division factor
        DIVQ2: u7,
        // Reserved
        _reserved_23: u1,
        // PLL1 DIVR division factor
        DIVR2: u7,
        // Reserved
        _reserved_31: u1,
    },
    // RCC PLL2 Fractional Divider Register
    PLL2FRACR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // Fractional part of the multiplication factor for PLL VCO
        FRACN2: u13,
        // Reserved
        _reserved_16: u16,
    },
    // RCC PLL3 Dividers Configuration Register
    PLL3DIVR: packed struct(u32) {
        // Multiplication factor for PLL1 VCO
        DIVN3: u9,
        // PLL DIVP division factor
        DIVP3: u7,
        // PLL DIVQ division factor
        DIVQ3: u7,
        // Reserved
        _reserved_23: u1,
        // PLL DIVR division factor
        DIVR3: u7,
        // Reserved
        _reserved_31: u1,
    },
    // RCC PLL3 Fractional Divider Register
    PLL3FRACR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // Fractional part of the multiplication factor for PLL3 VCO
        FRACN3: u13,
        // Reserved
        _reserved_16: u16,
    },
    // RCC Domain 1 Kernel Clock Configuration Register
    D1CCIPR: packed struct(u32) {
        // FMC kernel clock source selection
        FMCSRC: u2,
        // Reserved
        _reserved_2: u2,
        // QUADSPI kernel clock source selection
        QSPISRC: u2,
        // Reserved
        _reserved_6: u10,
        // SDMMC kernel clock source selection
        SDMMCSRC: u1,
        // Reserved
        _reserved_17: u11,
        // per_ck clock source selection
        CKPERSRC: u2,
        // Reserved
        _reserved_30: u2,
    },
    // RCC Domain 2 Kernel Clock Configuration Register
    D2CCIP1R: packed struct(u32) {
        // SAI1 and DFSDM1 kernel Aclk clock source selection
        SAI1SRC: u3,
        // Reserved
        _reserved_3: u3,
        // SAI2 and SAI3 kernel clock source selection
        SAI23SRC: u3,
        // Reserved
        _reserved_9: u3,
        // SPI/I2S1,2 and 3 kernel clock source selection
        SPI123SRC: u3,
        // Reserved
        _reserved_15: u1,
        // SPI4 and 5 kernel clock source selection
        SPI45SRC: u3,
        // Reserved
        _reserved_19: u1,
        // SPDIFRX kernel clock source selection
        SPDIFSRC: u2,
        // Reserved
        _reserved_22: u2,
        // DFSDM1 kernel Clk clock source selection
        DFSDM1SRC: u1,
        // Reserved
        _reserved_25: u3,
        // FDCAN kernel clock source selection
        FDCANSRC: u2,
        // Reserved
        _reserved_30: u1,
        // SWPMI kernel clock source selection
        SWPSRC: u1,
    },
    // RCC Domain 2 Kernel Clock Configuration Register
    D2CCIP2R: packed struct(u32) {
        // USART2/3, UART4,5, 7/8 (APB1) kernel clock source selection
        USART234578SRC: u3,
        // USART1 and 6 kernel clock source selection
        USART16SRC: u3,
        // Reserved
        _reserved_6: u2,
        // RNG kernel clock source selection
        RNGSRC: u2,
        // Reserved
        _reserved_10: u2,
        // I2C1,2,3 kernel clock source selection
        I2C123SRC: u2,
        // Reserved
        _reserved_14: u6,
        // USBOTG 1 and 2 kernel clock source selection
        USBSRC: u2,
        // HDMI-CEC kernel clock source selection
        CECSRC: u2,
        // Reserved
        _reserved_24: u4,
        // LPTIM1 kernel clock source selection
        LPTIM1SRC: u3,
        // Reserved
        _reserved_31: u1,
    },
    // RCC Domain 3 Kernel Clock Configuration Register
    D3CCIPR: packed struct(u32) {
        // LPUART1 kernel clock source selection
        LPUART1SRC: u3,
        // Reserved
        _reserved_3: u5,
        // I2C4 kernel clock source selection
        I2C4SRC: u2,
        // LPTIM2 kernel clock source selection
        LPTIM2SRC: u3,
        // LPTIM3,4,5 kernel clock source selection
        LPTIM345SRC: u3,
        // SAR ADC kernel clock source selection
        ADCSRC: u2,
        // Reserved
        _reserved_18: u3,
        // Sub-Block A of SAI4 kernel clock source selection
        SAI4ASRC: u3,
        // Sub-Block B of SAI4 kernel clock source selection
        SAI4BSRC: u3,
        // Reserved
        _reserved_27: u1,
        // SPI6 kernel clock source selection
        SPI6SRC: u3,
        // Reserved
        _reserved_31: u1,
    },
    // RCC Clock Source Interrupt Enable Register
    CIER: packed struct(u32) {
        // LSI ready Interrupt Enable
        LSIRDYIE: u1,
        // LSE ready Interrupt Enable
        LSERDYIE: u1,
        // HSI ready Interrupt Enable
        HSIRDYIE: u1,
        // HSE ready Interrupt Enable
        HSERDYIE: u1,
        // CSI ready Interrupt Enable
        CSIRDYIE: u1,
        // RC48 ready Interrupt Enable
        RC48RDYIE: u1,
        // PLL1 ready Interrupt Enable
        PLL1RDYIE: u1,
        // PLL2 ready Interrupt Enable
        PLL2RDYIE: u1,
        // PLL3 ready Interrupt Enable
        PLL3RDYIE: u1,
        // LSE clock security system Interrupt Enable
        LSECSSIE: u1,
        // Reserved
        _reserved_10: u22,
    },
    // RCC Clock Source Interrupt Flag Register
    CIFR: packed struct(u32) {
        // LSI ready Interrupt Flag
        LSIRDYF: u1,
        // LSE ready Interrupt Flag
        LSERDYF: u1,
        // HSI ready Interrupt Flag
        HSIRDYF: u1,
        // HSE ready Interrupt Flag
        HSERDYF: u1,
        // CSI ready Interrupt Flag
        CSIRDY: u1,
        // RC48 ready Interrupt Flag
        RC48RDYF: u1,
        // PLL1 ready Interrupt Flag
        PLL1RDYF: u1,
        // PLL2 ready Interrupt Flag
        PLL2RDYF: u1,
        // PLL3 ready Interrupt Flag
        PLL3RDYF: u1,
        // LSE clock security system Interrupt Flag
        LSECSSF: u1,
        // HSE clock security system Interrupt Flag
        HSECSSF: u1,
        // Reserved
        _reserved_11: u21,
    },
    // RCC Clock Source Interrupt Clear Register
    CICR: packed struct(u32) {
        // LSI ready Interrupt Clear
        LSIRDYC: u1,
        // LSE ready Interrupt Clear
        LSERDYC: u1,
        // HSI ready Interrupt Clear
        HSIRDYC: u1,
        // HSE ready Interrupt Clear
        HSERDYC: u1,
        // CSI ready Interrupt Clear
        HSE_ready_Interrupt_Clear: u1,
        // RC48 ready Interrupt Clear
        RC48RDYC: u1,
        // PLL1 ready Interrupt Clear
        PLL1RDYC: u1,
        // PLL2 ready Interrupt Clear
        PLL2RDYC: u1,
        // PLL3 ready Interrupt Clear
        PLL3RDYC: u1,
        // LSE clock security system Interrupt Clear
        LSECSSC: u1,
        // HSE clock security system Interrupt Clear
        HSECSSC: u1,
        // Reserved
        _reserved_11: u21,
    },
    // RCC Backup Domain Control Register
    BDCR: packed struct(u32) {
        // LSE oscillator enabled
        LSEON: u1,
        // LSE oscillator ready
        LSERDY: u1,
        // LSE oscillator bypass
        LSEBYP: u1,
        // LSE oscillator driving capability
        LSEDRV: u2,
        // LSE clock security system enable
        LSECSSON: u1,
        // LSE clock security system failure detection
        LSECSSD: u1,
        // Reserved
        _reserved_7: u1,
        // RTC clock source selection
        RTCSRC: u2,
        // Reserved
        _reserved_10: u5,
        // RTC clock enable
        RTCEN: u1,
        // VSwitch domain software reset
        VSWRST: u1,
        // Reserved
        _reserved_17: u15,
    },
    // RCC Clock Control and Status Register
    CSR: packed struct(u32) {
        // LSI oscillator enable
        LSION: u1,
        // LSI oscillator ready
        LSIRDY: u1,
        // Reserved
        _reserved_2: u30,
    },
    // RCC AHB3 Reset Register
    AHB3RSTR: packed struct(u32) {
        // MDMA block reset
        MDMARST: u1,
        // Reserved
        _reserved_1: u3,
        // DMA2D block reset
        DMA2DRST: u1,
        // JPGDEC block reset
        JPGDECRST: u1,
        // Reserved
        _reserved_6: u6,
        // FMC block reset
        FMCRST: u1,
        // Reserved
        _reserved_13: u1,
        // QUADSPI and QUADSPI delay block reset
        QSPIRST: u1,
        // Reserved
        _reserved_15: u1,
        // SDMMC1 and SDMMC1 delay block reset
        SDMMC1RST: u1,
        // Reserved
        _reserved_17: u14,
        // CPU reset
        CPURST: u1,
    },
    // RCC AHB1 Peripheral Reset Register
    AHB1RSTR: packed struct(u32) {
        // DMA1 block reset
        DMA1RST: u1,
        // DMA2 block reset
        DMA2RST: u1,
        // Reserved
        _reserved_2: u3,
        // ADC1&2 block reset
        ADC12RST: u1,
        // Reserved
        _reserved_6: u9,
        // ETH1MAC block reset
        ETH1MACRST: u1,
        // Reserved
        _reserved_16: u9,
        // USB1OTG block reset
        USB1OTGRST: u1,
        // Reserved
        _reserved_26: u1,
        // USB2OTG block reset
        USB2OTGRST: u1,
        // Reserved
        _reserved_28: u4,
    },
    // RCC AHB2 Peripheral Reset Register
    AHB2RSTR: packed struct(u32) {
        // CAMITF block reset
        CAMITFRST: u1,
        // Reserved
        _reserved_1: u3,
        // Cryptography block reset
        CRYPTRST: u1,
        // Hash block reset
        HASHRST: u1,
        // Random Number Generator block reset
        RNGRST: u1,
        // Reserved
        _reserved_7: u2,
        // SDMMC2 and SDMMC2 Delay block reset
        SDMMC2RST: u1,
        // Reserved
        _reserved_10: u22,
    },
    // RCC AHB4 Peripheral Reset Register
    AHB4RSTR: packed struct(u32) {
        // GPIO block reset
        GPIOARST: u1,
        // GPIO block reset
        GPIOBRST: u1,
        // GPIO block reset
        GPIOCRST: u1,
        // GPIO block reset
        GPIODRST: u1,
        // GPIO block reset
        GPIOERST: u1,
        // GPIO block reset
        GPIOFRST: u1,
        // GPIO block reset
        GPIOGRST: u1,
        // GPIO block reset
        GPIOHRST: u1,
        // GPIO block reset
        GPIOIRST: u1,
        // GPIO block reset
        GPIOJRST: u1,
        // GPIO block reset
        GPIOKRST: u1,
        // Reserved
        _reserved_11: u8,
        // CRC block reset
        CRCRST: u1,
        // Reserved
        _reserved_20: u1,
        // BDMA block reset
        BDMARST: u1,
        // Reserved
        _reserved_22: u2,
        // ADC3 block reset
        ADC3RST: u1,
        // HSEM block reset
        HSEMRST: u1,
        // Reserved
        _reserved_26: u6,
    },
    // RCC APB3 Peripheral Reset Register
    APB3RSTR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // LTDC block reset
        LTDCRST: u1,
        // Reserved
        _reserved_4: u28,
    },
    // RCC APB1 Peripheral Reset Register
    APB1LRSTR: packed struct(u32) {
        // TIM block reset
        TIM2RST: u1,
        // TIM block reset
        TIM3RST: u1,
        // TIM block reset
        TIM4RST: u1,
        // TIM block reset
        TIM5RST: u1,
        // TIM block reset
        TIM6RST: u1,
        // TIM block reset
        TIM7RST: u1,
        // TIM block reset
        TIM12RST: u1,
        // TIM block reset
        TIM13RST: u1,
        // TIM block reset
        TIM14RST: u1,
        // TIM block reset
        LPTIM1RST: u1,
        // Reserved
        _reserved_10: u4,
        // SPI2 block reset
        SPI2RST: u1,
        // SPI3 block reset
        SPI3RST: u1,
        // SPDIFRX block reset
        SPDIFRXRST: u1,
        // USART2 block reset
        USART2RST: u1,
        // USART3 block reset
        USART3RST: u1,
        // UART4 block reset
        UART4RST: u1,
        // UART5 block reset
        UART5RST: u1,
        // I2C1 block reset
        I2C1RST: u1,
        // I2C2 block reset
        I2C2RST: u1,
        // I2C3 block reset
        I2C3RST: u1,
        // Reserved
        _reserved_24: u3,
        // HDMI-CEC block reset
        CECRST: u1,
        // Reserved
        _reserved_28: u1,
        // DAC1 and 2 Blocks Reset
        DAC12RST: u1,
        // USART7 block reset
        USART7RST: u1,
        // USART8 block reset
        USART8RST: u1,
    },
    // RCC APB1 Peripheral Reset Register
    APB1HRSTR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // Clock Recovery System reset
        CRSRST: u1,
        // SWPMI block reset
        SWPRST: u1,
        // Reserved
        _reserved_3: u1,
        // OPAMP block reset
        OPAMPRST: u1,
        // MDIOS block reset
        MDIOSRST: u1,
        // Reserved
        _reserved_6: u2,
        // FDCAN block reset
        FDCANRST: u1,
        // Reserved
        _reserved_9: u23,
    },
    // RCC APB2 Peripheral Reset Register
    APB2RSTR: packed struct(u32) {
        // TIM1 block reset
        TIM1RST: u1,
        // TIM8 block reset
        TIM8RST: u1,
        // Reserved
        _reserved_2: u2,
        // USART1 block reset
        USART1RST: u1,
        // USART6 block reset
        USART6RST: u1,
        // Reserved
        _reserved_6: u6,
        // SPI1 block reset
        SPI1RST: u1,
        // SPI4 block reset
        SPI4RST: u1,
        // Reserved
        _reserved_14: u2,
        // TIM15 block reset
        TIM15RST: u1,
        // TIM16 block reset
        TIM16RST: u1,
        // TIM17 block reset
        TIM17RST: u1,
        // Reserved
        _reserved_19: u1,
        // SPI5 block reset
        SPI5RST: u1,
        // Reserved
        _reserved_21: u1,
        // SAI1 block reset
        SAI1RST: u1,
        // SAI2 block reset
        SAI2RST: u1,
        // SAI3 block reset
        SAI3RST: u1,
        // Reserved
        _reserved_25: u3,
        // DFSDM1 block reset
        DFSDM1RST: u1,
        // HRTIM block reset
        HRTIMRST: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC APB4 Peripheral Reset Register
    APB4RSTR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // SYSCFG block reset
        SYSCFGRST: u1,
        // Reserved
        _reserved_2: u1,
        // LPUART1 block reset
        LPUART1RST: u1,
        // Reserved
        _reserved_4: u1,
        // SPI6 block reset
        SPI6RST: u1,
        // Reserved
        _reserved_6: u1,
        // I2C4 block reset
        I2C4RST: u1,
        // Reserved
        _reserved_8: u1,
        // LPTIM2 block reset
        LPTIM2RST: u1,
        // LPTIM3 block reset
        LPTIM3RST: u1,
        // LPTIM4 block reset
        LPTIM4RST: u1,
        // LPTIM5 block reset
        LPTIM5RST: u1,
        // Reserved
        _reserved_13: u1,
        // COMP12 Blocks Reset
        COMP12RST: u1,
        // VREF block reset
        VREFRST: u1,
        // Reserved
        _reserved_16: u5,
        // SAI4 block reset
        SAI4RST: u1,
        // Reserved
        _reserved_22: u10,
    },
    // RCC Global Control Register
    GCR: packed struct(u32) {
        // WWDG1 reset scope control
        WW1RSC: u1,
        // Reserved
        _reserved_1: u31,
    },
    // RCC D3 Autonomous mode Register
    D3AMR: packed struct(u32) {
        // BDMA and DMAMUX Autonomous mode enable
        BDMAAMEN: u1,
        // Reserved
        _reserved_1: u2,
        // LPUART1 Autonomous mode enable
        LPUART1AMEN: u1,
        // Reserved
        _reserved_4: u1,
        // SPI6 Autonomous mode enable
        SPI6AMEN: u1,
        // Reserved
        _reserved_6: u1,
        // I2C4 Autonomous mode enable
        I2C4AMEN: u1,
        // Reserved
        _reserved_8: u1,
        // LPTIM2 Autonomous mode enable
        LPTIM2AMEN: u1,
        // LPTIM3 Autonomous mode enable
        LPTIM3AMEN: u1,
        // LPTIM4 Autonomous mode enable
        LPTIM4AMEN: u1,
        // LPTIM5 Autonomous mode enable
        LPTIM5AMEN: u1,
        // Reserved
        _reserved_13: u1,
        // COMP12 Autonomous mode enable
        COMP12AMEN: u1,
        // VREF Autonomous mode enable
        VREFAMEN: u1,
        // RTC Autonomous mode enable
        RTCAMEN: u1,
        // Reserved
        _reserved_17: u2,
        // CRC Autonomous mode enable
        CRCAMEN: u1,
        // Reserved
        _reserved_20: u1,
        // SAI4 Autonomous mode enable
        SAI4AMEN: u1,
        // Reserved
        _reserved_22: u2,
        // ADC3 Autonomous mode enable
        ADC3AMEN: u1,
        // Reserved
        _reserved_25: u3,
        // Backup RAM Autonomous mode enable
        BKPRAMAMEN: u1,
        // SRAM4 Autonomous mode enable
        SRAM4AMEN: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC Reset Status Register
    RSR: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Remove reset flag
        RMVF: u1,
        // CPU reset flag
        CPURSTF: u1,
        // Reserved
        _reserved_18: u1,
        // D1 domain power switch reset flag
        D1RSTF: u1,
        // D2 domain power switch reset flag
        D2RSTF: u1,
        // BOR reset flag
        BORRSTF: u1,
        // Pin reset flag (NRST)
        PINRSTF: u1,
        // POR/PDR reset flag
        PORRSTF: u1,
        // System reset from CPU reset flag
        SFTRSTF: u1,
        // Reserved
        _reserved_25: u1,
        // Independent Watchdog reset flag
        IWDG1RSTF: u1,
        // Reserved
        _reserved_27: u1,
        // Window Watchdog reset flag
        WWDG1RSTF: u1,
        // Reserved
        _reserved_29: u1,
        // Reset due to illegal D1 DStandby or CPU CStop flag
        LPWRRSTF: u1,
        // Reserved
        _reserved_31: u1,
    },
    // RCC Reset Status Register
    C1_RSR: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Remove reset flag
        RMVF: u1,
        // CPU reset flag
        CPURSTF: u1,
        // Reserved
        _reserved_18: u1,
        // D1 domain power switch reset flag
        D1RSTF: u1,
        // D2 domain power switch reset flag
        D2RSTF: u1,
        // BOR reset flag
        BORRSTF: u1,
        // Pin reset flag (NRST)
        PINRSTF: u1,
        // POR/PDR reset flag
        PORRSTF: u1,
        // System reset from CPU reset flag
        SFTRSTF: u1,
        // Reserved
        _reserved_25: u1,
        // Independent Watchdog reset flag
        IWDG1RSTF: u1,
        // Reserved
        _reserved_27: u1,
        // Window Watchdog reset flag
        WWDG1RSTF: u1,
        // Reserved
        _reserved_29: u1,
        // Reset due to illegal D1 DStandby or CPU CStop flag
        LPWRRSTF: u1,
        // Reserved
        _reserved_31: u1,
    },
    // RCC AHB3 Clock Register
    C1_AHB3ENR: packed struct(u32) {
        // MDMA Peripheral Clock Enable
        MDMAEN: u1,
        // Reserved
        _reserved_1: u3,
        // DMA2D Peripheral Clock Enable
        DMA2DEN: u1,
        // JPGDEC Peripheral Clock Enable
        JPGDECEN: u1,
        // Reserved
        _reserved_6: u6,
        // FMC Peripheral Clocks Enable
        FMCEN: u1,
        // Reserved
        _reserved_13: u1,
        // QUADSPI and QUADSPI Delay Clock Enable
        QSPIEN: u1,
        // Reserved
        _reserved_15: u1,
        // SDMMC1 and SDMMC1 Delay Clock Enable
        SDMMC1EN: u1,
        // Reserved
        _reserved_17: u15,
    },
    // RCC AHB3 Clock Register
    AHB3ENR: packed struct(u32) {
        // MDMA Peripheral Clock Enable
        MDMAEN: u1,
        // Reserved
        _reserved_1: u3,
        // DMA2D Peripheral Clock Enable
        DMA2DEN: u1,
        // JPGDEC Peripheral Clock Enable
        JPGDECEN: u1,
        // Reserved
        _reserved_6: u6,
        // FMC Peripheral Clocks Enable
        FMCEN: u1,
        // Reserved
        _reserved_13: u1,
        // QUADSPI and QUADSPI Delay Clock Enable
        QSPIEN: u1,
        // Reserved
        _reserved_15: u1,
        // SDMMC1 and SDMMC1 Delay Clock Enable
        SDMMC1EN: u1,
        // Reserved
        _reserved_17: u15,
    },
    // RCC AHB1 Clock Register
    AHB1ENR: packed struct(u32) {
        // DMA1 Clock Enable
        DMA1EN: u1,
        // DMA2 Clock Enable
        DMA2EN: u1,
        // Reserved
        _reserved_2: u3,
        // ADC1/2 Peripheral Clocks Enable
        ADC12EN: u1,
        // Reserved
        _reserved_6: u9,
        // Ethernet MAC bus interface Clock Enable
        ETH1MACEN: u1,
        // Ethernet Transmission Clock Enable
        ETH1TXEN: u1,
        // Ethernet Reception Clock Enable
        ETH1RXEN: u1,
        // Enable USB_PHY2 clocks
        USB2OTGHSULPIEN: u1,
        // Reserved
        _reserved_19: u6,
        // USB1OTG Peripheral Clocks Enable
        USB1OTGEN: u1,
        // USB_PHY1 Clocks Enable
        USB1ULPIEN: u1,
        // USB2OTG Peripheral Clocks Enable
        USB2OTGEN: u1,
        // USB_PHY2 Clocks Enable
        USB2ULPIEN: u1,
        // Reserved
        _reserved_29: u3,
    },
    // RCC AHB1 Clock Register
    C1_AHB1ENR: packed struct(u32) {
        // DMA1 Clock Enable
        DMA1EN: u1,
        // DMA2 Clock Enable
        DMA2EN: u1,
        // Reserved
        _reserved_2: u3,
        // ADC1/2 Peripheral Clocks Enable
        ADC12EN: u1,
        // Reserved
        _reserved_6: u9,
        // Ethernet MAC bus interface Clock Enable
        ETH1MACEN: u1,
        // Ethernet Transmission Clock Enable
        ETH1TXEN: u1,
        // Ethernet Reception Clock Enable
        ETH1RXEN: u1,
        // Reserved
        _reserved_18: u7,
        // USB1OTG Peripheral Clocks Enable
        USB1OTGEN: u1,
        // USB_PHY1 Clocks Enable
        USB1ULPIEN: u1,
        // USB2OTG Peripheral Clocks Enable
        USB2OTGEN: u1,
        // USB_PHY2 Clocks Enable
        USB2ULPIEN: u1,
        // Reserved
        _reserved_29: u3,
    },
    // RCC AHB2 Clock Register
    C1_AHB2ENR: packed struct(u32) {
        // CAMITF peripheral clock enable
        CAMITFEN: u1,
        // Reserved
        _reserved_1: u3,
        // CRYPT peripheral clock enable
        CRYPTEN: u1,
        // HASH peripheral clock enable
        HASHEN: u1,
        // RNG peripheral clocks enable
        RNGEN: u1,
        // Reserved
        _reserved_7: u2,
        // SDMMC2 and SDMMC2 delay clock enable
        SDMMC2EN: u1,
        // Reserved
        _reserved_10: u19,
        // SRAM1 block enable
        SRAM1EN: u1,
        // SRAM2 block enable
        SRAM2EN: u1,
        // SRAM3 block enable
        SRAM3EN: u1,
    },
    // RCC AHB2 Clock Register
    AHB2ENR: packed struct(u32) {
        // CAMITF peripheral clock enable
        CAMITFEN: u1,
        // Reserved
        _reserved_1: u3,
        // CRYPT peripheral clock enable
        CRYPTEN: u1,
        // HASH peripheral clock enable
        HASHEN: u1,
        // RNG peripheral clocks enable
        RNGEN: u1,
        // Reserved
        _reserved_7: u2,
        // SDMMC2 and SDMMC2 delay clock enable
        SDMMC2EN: u1,
        // Reserved
        _reserved_10: u19,
        // SRAM1 block enable
        SRAM1EN: u1,
        // SRAM2 block enable
        SRAM2EN: u1,
        // SRAM3 block enable
        SRAM3EN: u1,
    },
    // RCC AHB4 Clock Register
    AHB4ENR: packed struct(u32) {
        // 0GPIO peripheral clock enable
        GPIOAEN: u1,
        // 0GPIO peripheral clock enable
        GPIOBEN: u1,
        // 0GPIO peripheral clock enable
        GPIOCEN: u1,
        // 0GPIO peripheral clock enable
        GPIODEN: u1,
        // 0GPIO peripheral clock enable
        GPIOEEN: u1,
        // 0GPIO peripheral clock enable
        GPIOFEN: u1,
        // 0GPIO peripheral clock enable
        GPIOGEN: u1,
        // 0GPIO peripheral clock enable
        GPIOHEN: u1,
        // 0GPIO peripheral clock enable
        GPIOIEN: u1,
        // 0GPIO peripheral clock enable
        GPIOJEN: u1,
        // 0GPIO peripheral clock enable
        GPIOKEN: u1,
        // Reserved
        _reserved_11: u8,
        // CRC peripheral clock enable
        CRCEN: u1,
        // Reserved
        _reserved_20: u1,
        // BDMA and DMAMUX2 Clock Enable
        BDMAEN: u1,
        // Reserved
        _reserved_22: u2,
        // ADC3 Peripheral Clocks Enable
        ADC3EN: u1,
        // HSEM peripheral clock enable
        HSEMEN: u1,
        // Reserved
        _reserved_26: u2,
        // Backup RAM Clock Enable
        BKPRAMEN: u1,
        // Reserved
        _reserved_29: u3,
    },
    // RCC AHB4 Clock Register
    C1_AHB4ENR: packed struct(u32) {
        // 0GPIO peripheral clock enable
        GPIOAEN: u1,
        // 0GPIO peripheral clock enable
        GPIOBEN: u1,
        // 0GPIO peripheral clock enable
        GPIOCEN: u1,
        // 0GPIO peripheral clock enable
        GPIODEN: u1,
        // 0GPIO peripheral clock enable
        GPIOEEN: u1,
        // 0GPIO peripheral clock enable
        GPIOFEN: u1,
        // 0GPIO peripheral clock enable
        GPIOGEN: u1,
        // 0GPIO peripheral clock enable
        GPIOHEN: u1,
        // 0GPIO peripheral clock enable
        GPIOIEN: u1,
        // 0GPIO peripheral clock enable
        GPIOJEN: u1,
        // 0GPIO peripheral clock enable
        GPIOKEN: u1,
        // Reserved
        _reserved_11: u8,
        // CRC peripheral clock enable
        CRCEN: u1,
        // Reserved
        _reserved_20: u1,
        // BDMA and DMAMUX2 Clock Enable
        BDMAEN: u1,
        // Reserved
        _reserved_22: u2,
        // ADC3 Peripheral Clocks Enable
        ADC3EN: u1,
        // HSEM peripheral clock enable
        HSEMEN: u1,
        // Reserved
        _reserved_26: u2,
        // Backup RAM Clock Enable
        BKPRAMEN: u1,
        // Reserved
        _reserved_29: u3,
    },
    // RCC APB3 Clock Register
    C1_APB3ENR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // LTDC peripheral clock enable
        LTDCEN: u1,
        // Reserved
        _reserved_4: u2,
        // WWDG1 Clock Enable
        WWDG1EN: u1,
        // Reserved
        _reserved_7: u25,
    },
    // RCC APB3 Clock Register
    APB3ENR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // LTDC peripheral clock enable
        LTDCEN: u1,
        // Reserved
        _reserved_4: u2,
        // WWDG1 Clock Enable
        WWDG1EN: u1,
        // Reserved
        _reserved_7: u25,
    },
    // RCC APB1 Clock Register
    APB1LENR: packed struct(u32) {
        // TIM peripheral clock enable
        TIM2EN: u1,
        // TIM peripheral clock enable
        TIM3EN: u1,
        // TIM peripheral clock enable
        TIM4EN: u1,
        // TIM peripheral clock enable
        TIM5EN: u1,
        // TIM peripheral clock enable
        TIM6EN: u1,
        // TIM peripheral clock enable
        TIM7EN: u1,
        // TIM peripheral clock enable
        TIM12EN: u1,
        // TIM peripheral clock enable
        TIM13EN: u1,
        // TIM peripheral clock enable
        TIM14EN: u1,
        // LPTIM1 Peripheral Clocks Enable
        LPTIM1EN: u1,
        // Reserved
        _reserved_10: u4,
        // SPI2 Peripheral Clocks Enable
        SPI2EN: u1,
        // SPI3 Peripheral Clocks Enable
        SPI3EN: u1,
        // SPDIFRX Peripheral Clocks Enable
        SPDIFRXEN: u1,
        // USART2 Peripheral Clocks Enable
        USART2EN: u1,
        // USART3 Peripheral Clocks Enable
        USART3EN: u1,
        // UART4 Peripheral Clocks Enable
        UART4EN: u1,
        // UART5 Peripheral Clocks Enable
        UART5EN: u1,
        // I2C1 Peripheral Clocks Enable
        I2C1EN: u1,
        // I2C2 Peripheral Clocks Enable
        I2C2EN: u1,
        // I2C3 Peripheral Clocks Enable
        I2C3EN: u1,
        // Reserved
        _reserved_24: u3,
        // HDMI-CEC peripheral clock enable
        CECEN: u1,
        // Reserved
        _reserved_28: u1,
        // DAC1&2 peripheral clock enable
        DAC12EN: u1,
        // USART7 Peripheral Clocks Enable
        USART7EN: u1,
        // USART8 Peripheral Clocks Enable
        USART8EN: u1,
    },
    // RCC APB1 Clock Register
    C1_APB1LENR: packed struct(u32) {
        // TIM peripheral clock enable
        TIM2EN: u1,
        // TIM peripheral clock enable
        TIM3EN: u1,
        // TIM peripheral clock enable
        TIM4EN: u1,
        // TIM peripheral clock enable
        TIM5EN: u1,
        // TIM peripheral clock enable
        TIM6EN: u1,
        // TIM peripheral clock enable
        TIM7EN: u1,
        // TIM peripheral clock enable
        TIM12EN: u1,
        // TIM peripheral clock enable
        TIM13EN: u1,
        // TIM peripheral clock enable
        TIM14EN: u1,
        // LPTIM1 Peripheral Clocks Enable
        LPTIM1EN: u1,
        // Reserved
        _reserved_10: u4,
        // SPI2 Peripheral Clocks Enable
        SPI2EN: u1,
        // SPI3 Peripheral Clocks Enable
        SPI3EN: u1,
        // SPDIFRX Peripheral Clocks Enable
        SPDIFRXEN: u1,
        // USART2 Peripheral Clocks Enable
        USART2EN: u1,
        // USART3 Peripheral Clocks Enable
        USART3EN: u1,
        // UART4 Peripheral Clocks Enable
        UART4EN: u1,
        // UART5 Peripheral Clocks Enable
        UART5EN: u1,
        // I2C1 Peripheral Clocks Enable
        I2C1EN: u1,
        // I2C2 Peripheral Clocks Enable
        I2C2EN: u1,
        // I2C3 Peripheral Clocks Enable
        I2C3EN: u1,
        // Reserved
        _reserved_24: u3,
        // HDMI-CEC peripheral clock enable
        HDMICECEN: u1,
        // Reserved
        _reserved_28: u1,
        // DAC1&2 peripheral clock enable
        DAC12EN: u1,
        // USART7 Peripheral Clocks Enable
        USART7EN: u1,
        // USART8 Peripheral Clocks Enable
        USART8EN: u1,
    },
    // RCC APB1 Clock Register
    APB1HENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // Clock Recovery System peripheral clock enable
        CRSEN: u1,
        // SWPMI Peripheral Clocks Enable
        SWPEN: u1,
        // Reserved
        _reserved_3: u1,
        // OPAMP peripheral clock enable
        OPAMPEN: u1,
        // MDIOS peripheral clock enable
        MDIOSEN: u1,
        // Reserved
        _reserved_6: u2,
        // FDCAN Peripheral Clocks Enable
        FDCANEN: u1,
        // Reserved
        _reserved_9: u23,
    },
    // RCC APB1 Clock Register
    C1_APB1HENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // Clock Recovery System peripheral clock enable
        CRSEN: u1,
        // SWPMI Peripheral Clocks Enable
        SWPEN: u1,
        // Reserved
        _reserved_3: u1,
        // OPAMP peripheral clock enable
        OPAMPEN: u1,
        // MDIOS peripheral clock enable
        MDIOSEN: u1,
        // Reserved
        _reserved_6: u2,
        // FDCAN Peripheral Clocks Enable
        FDCANEN: u1,
        // Reserved
        _reserved_9: u23,
    },
    // RCC APB2 Clock Register
    C1_APB2ENR: packed struct(u32) {
        // TIM1 peripheral clock enable
        TIM1EN: u1,
        // TIM8 peripheral clock enable
        TIM8EN: u1,
        // Reserved
        _reserved_2: u2,
        // USART1 Peripheral Clocks Enable
        USART1EN: u1,
        // USART6 Peripheral Clocks Enable
        USART6EN: u1,
        // Reserved
        _reserved_6: u6,
        // SPI1 Peripheral Clocks Enable
        SPI1EN: u1,
        // SPI4 Peripheral Clocks Enable
        SPI4EN: u1,
        // Reserved
        _reserved_14: u2,
        // TIM15 peripheral clock enable
        TIM15EN: u1,
        // TIM16 peripheral clock enable
        TIM16EN: u1,
        // TIM17 peripheral clock enable
        TIM17EN: u1,
        // Reserved
        _reserved_19: u1,
        // SPI5 Peripheral Clocks Enable
        SPI5EN: u1,
        // Reserved
        _reserved_21: u1,
        // SAI1 Peripheral Clocks Enable
        SAI1EN: u1,
        // SAI2 Peripheral Clocks Enable
        SAI2EN: u1,
        // SAI3 Peripheral Clocks Enable
        SAI3EN: u1,
        // Reserved
        _reserved_25: u3,
        // DFSDM1 Peripheral Clocks Enable
        DFSDM1EN: u1,
        // HRTIM peripheral clock enable
        HRTIMEN: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC APB2 Clock Register
    APB2ENR: packed struct(u32) {
        // TIM1 peripheral clock enable
        TIM1EN: u1,
        // TIM8 peripheral clock enable
        TIM8EN: u1,
        // Reserved
        _reserved_2: u2,
        // USART1 Peripheral Clocks Enable
        USART1EN: u1,
        // USART6 Peripheral Clocks Enable
        USART6EN: u1,
        // Reserved
        _reserved_6: u6,
        // SPI1 Peripheral Clocks Enable
        SPI1EN: u1,
        // SPI4 Peripheral Clocks Enable
        SPI4EN: u1,
        // Reserved
        _reserved_14: u2,
        // TIM15 peripheral clock enable
        TIM15EN: u1,
        // TIM16 peripheral clock enable
        TIM16EN: u1,
        // TIM17 peripheral clock enable
        TIM17EN: u1,
        // Reserved
        _reserved_19: u1,
        // SPI5 Peripheral Clocks Enable
        SPI5EN: u1,
        // Reserved
        _reserved_21: u1,
        // SAI1 Peripheral Clocks Enable
        SAI1EN: u1,
        // SAI2 Peripheral Clocks Enable
        SAI2EN: u1,
        // SAI3 Peripheral Clocks Enable
        SAI3EN: u1,
        // Reserved
        _reserved_25: u3,
        // DFSDM1 Peripheral Clocks Enable
        DFSDM1EN: u1,
        // HRTIM peripheral clock enable
        HRTIMEN: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC APB4 Clock Register
    APB4ENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // SYSCFG peripheral clock enable
        SYSCFGEN: u1,
        // Reserved
        _reserved_2: u1,
        // LPUART1 Peripheral Clocks Enable
        LPUART1EN: u1,
        // Reserved
        _reserved_4: u1,
        // SPI6 Peripheral Clocks Enable
        SPI6EN: u1,
        // Reserved
        _reserved_6: u1,
        // I2C4 Peripheral Clocks Enable
        I2C4EN: u1,
        // Reserved
        _reserved_8: u1,
        // LPTIM2 Peripheral Clocks Enable
        LPTIM2EN: u1,
        // LPTIM3 Peripheral Clocks Enable
        LPTIM3EN: u1,
        // LPTIM4 Peripheral Clocks Enable
        LPTIM4EN: u1,
        // LPTIM5 Peripheral Clocks Enable
        LPTIM5EN: u1,
        // Reserved
        _reserved_13: u1,
        // COMP1/2 peripheral clock enable
        COMP12EN: u1,
        // VREF peripheral clock enable
        VREFEN: u1,
        // RTC APB Clock Enable
        RTCAPBEN: u1,
        // Reserved
        _reserved_17: u4,
        // SAI4 Peripheral Clocks Enable
        SAI4EN: u1,
        // Reserved
        _reserved_22: u10,
    },
    // RCC APB4 Clock Register
    C1_APB4ENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // SYSCFG peripheral clock enable
        SYSCFGEN: u1,
        // Reserved
        _reserved_2: u1,
        // LPUART1 Peripheral Clocks Enable
        LPUART1EN: u1,
        // Reserved
        _reserved_4: u1,
        // SPI6 Peripheral Clocks Enable
        SPI6EN: u1,
        // Reserved
        _reserved_6: u1,
        // I2C4 Peripheral Clocks Enable
        I2C4EN: u1,
        // Reserved
        _reserved_8: u1,
        // LPTIM2 Peripheral Clocks Enable
        LPTIM2EN: u1,
        // LPTIM3 Peripheral Clocks Enable
        LPTIM3EN: u1,
        // LPTIM4 Peripheral Clocks Enable
        LPTIM4EN: u1,
        // LPTIM5 Peripheral Clocks Enable
        LPTIM5EN: u1,
        // Reserved
        _reserved_13: u1,
        // COMP1/2 peripheral clock enable
        COMP12EN: u1,
        // VREF peripheral clock enable
        VREFEN: u1,
        // RTC APB Clock Enable
        RTCAPBEN: u1,
        // Reserved
        _reserved_17: u4,
        // SAI4 Peripheral Clocks Enable
        SAI4EN: u1,
        // Reserved
        _reserved_22: u10,
    },
    // RCC AHB3 Sleep Clock Register
    C1_AHB3LPENR: packed struct(u32) {
        // MDMA Clock Enable During CSleep Mode
        MDMALPEN: u1,
        // Reserved
        _reserved_1: u3,
        // DMA2D Clock Enable During CSleep Mode
        DMA2DLPEN: u1,
        // JPGDEC Clock Enable During CSleep Mode
        JPGDECLPEN: u1,
        // Reserved
        _reserved_6: u2,
        // FLITF Clock Enable During CSleep Mode
        FLITFLPEN: u1,
        // Reserved
        _reserved_9: u3,
        // FMC Peripheral Clocks Enable During CSleep Mode
        FMCLPEN: u1,
        // Reserved
        _reserved_13: u1,
        // QUADSPI and QUADSPI Delay Clock Enable During CSleep Mode
        QSPILPEN: u1,
        // Reserved
        _reserved_15: u1,
        // SDMMC1 and SDMMC1 Delay Clock Enable During CSleep Mode
        SDMMC1LPEN: u1,
        // Reserved
        _reserved_17: u11,
        // D1DTCM1 Block Clock Enable During CSleep mode
        D1DTCM1LPEN: u1,
        // D1 DTCM2 Block Clock Enable During CSleep mode
        DTCM2LPEN: u1,
        // D1ITCM Block Clock Enable During CSleep mode
        ITCMLPEN: u1,
        // AXISRAM Block Clock Enable During CSleep mode
        AXISRAMLPEN: u1,
    },
    // RCC AHB3 Sleep Clock Register
    AHB3LPENR: packed struct(u32) {
        // MDMA Clock Enable During CSleep Mode
        MDMALPEN: u1,
        // Reserved
        _reserved_1: u3,
        // DMA2D Clock Enable During CSleep Mode
        DMA2DLPEN: u1,
        // JPGDEC Clock Enable During CSleep Mode
        JPGDECLPEN: u1,
        // Reserved
        _reserved_6: u2,
        // FLITF Clock Enable During CSleep Mode
        FLASHLPEN: u1,
        // Reserved
        _reserved_9: u3,
        // FMC Peripheral Clocks Enable During CSleep Mode
        FMCLPEN: u1,
        // Reserved
        _reserved_13: u1,
        // QUADSPI and QUADSPI Delay Clock Enable During CSleep Mode
        QSPILPEN: u1,
        // Reserved
        _reserved_15: u1,
        // SDMMC1 and SDMMC1 Delay Clock Enable During CSleep Mode
        SDMMC1LPEN: u1,
        // Reserved
        _reserved_17: u11,
        // D1DTCM1 Block Clock Enable During CSleep mode
        D1DTCM1LPEN: u1,
        // D1 DTCM2 Block Clock Enable During CSleep mode
        DTCM2LPEN: u1,
        // D1ITCM Block Clock Enable During CSleep mode
        ITCMLPEN: u1,
        // AXISRAM Block Clock Enable During CSleep mode
        AXISRAMLPEN: u1,
    },
    // RCC AHB1 Sleep Clock Register
    AHB1LPENR: packed struct(u32) {
        // DMA1 Clock Enable During CSleep Mode
        DMA1LPEN: u1,
        // DMA2 Clock Enable During CSleep Mode
        DMA2LPEN: u1,
        // Reserved
        _reserved_2: u3,
        // ADC1/2 Peripheral Clocks Enable During CSleep Mode
        ADC12LPEN: u1,
        // Reserved
        _reserved_6: u9,
        // Ethernet MAC bus interface Clock Enable During CSleep Mode
        ETH1MACLPEN: u1,
        // Ethernet Transmission Clock Enable During CSleep Mode
        ETH1TXLPEN: u1,
        // Ethernet Reception Clock Enable During CSleep Mode
        ETH1RXLPEN: u1,
        // Reserved
        _reserved_18: u7,
        // USB1OTG peripheral clock enable during CSleep mode
        USB1OTGHSLPEN: u1,
        // USB_PHY1 clock enable during CSleep mode
        USB1OTGHSULPILPEN: u1,
        // USB2OTG peripheral clock enable during CSleep mode
        USB2OTGHSLPEN: u1,
        // USB_PHY2 clocks enable during CSleep mode
        USB2OTGHSULPILPEN: u1,
        // Reserved
        _reserved_29: u3,
    },
    // RCC AHB1 Sleep Clock Register
    C1_AHB1LPENR: packed struct(u32) {
        // DMA1 Clock Enable During CSleep Mode
        DMA1LPEN: u1,
        // DMA2 Clock Enable During CSleep Mode
        DMA2LPEN: u1,
        // Reserved
        _reserved_2: u3,
        // ADC1/2 Peripheral Clocks Enable During CSleep Mode
        ADC12LPEN: u1,
        // Reserved
        _reserved_6: u9,
        // Ethernet MAC bus interface Clock Enable During CSleep Mode
        ETH1MACLPEN: u1,
        // Ethernet Transmission Clock Enable During CSleep Mode
        ETH1TXLPEN: u1,
        // Ethernet Reception Clock Enable During CSleep Mode
        ETH1RXLPEN: u1,
        // Reserved
        _reserved_18: u7,
        // USB1OTG peripheral clock enable during CSleep mode
        USB1OTGLPEN: u1,
        // USB_PHY1 clock enable during CSleep mode
        USB1ULPILPEN: u1,
        // USB2OTG peripheral clock enable during CSleep mode
        USB2OTGLPEN: u1,
        // USB_PHY2 clocks enable during CSleep mode
        USB2ULPILPEN: u1,
        // Reserved
        _reserved_29: u3,
    },
    // RCC AHB2 Sleep Clock Register
    C1_AHB2LPENR: packed struct(u32) {
        // CAMITF peripheral clock enable during CSleep mode
        CAMITFLPEN: u1,
        // Reserved
        _reserved_1: u3,
        // CRYPT peripheral clock enable during CSleep mode
        CRYPTLPEN: u1,
        // HASH peripheral clock enable during CSleep mode
        HASHLPEN: u1,
        // RNG peripheral clock enable during CSleep mode
        RNGLPEN: u1,
        // Reserved
        _reserved_7: u2,
        // SDMMC2 and SDMMC2 Delay Clock Enable During CSleep Mode
        SDMMC2LPEN: u1,
        // Reserved
        _reserved_10: u19,
        // SRAM1 Clock Enable During CSleep Mode
        SRAM1LPEN: u1,
        // SRAM2 Clock Enable During CSleep Mode
        SRAM2LPEN: u1,
        // SRAM3 Clock Enable During CSleep Mode
        SRAM3LPEN: u1,
    },
    // RCC AHB2 Sleep Clock Register
    AHB2LPENR: packed struct(u32) {
        // CAMITF peripheral clock enable during CSleep mode
        CAMITFLPEN: u1,
        // Reserved
        _reserved_1: u3,
        // CRYPT peripheral clock enable during CSleep mode
        CRYPTLPEN: u1,
        // HASH peripheral clock enable during CSleep mode
        HASHLPEN: u1,
        // RNG peripheral clock enable during CSleep mode
        RNGLPEN: u1,
        // Reserved
        _reserved_7: u2,
        // SDMMC2 and SDMMC2 Delay Clock Enable During CSleep Mode
        SDMMC2LPEN: u1,
        // Reserved
        _reserved_10: u19,
        // SRAM1 Clock Enable During CSleep Mode
        SRAM1LPEN: u1,
        // SRAM2 Clock Enable During CSleep Mode
        SRAM2LPEN: u1,
        // SRAM3 Clock Enable During CSleep Mode
        SRAM3LPEN: u1,
    },
    // RCC AHB4 Sleep Clock Register
    AHB4LPENR: packed struct(u32) {
        // GPIO peripheral clock enable during CSleep mode
        GPIOALPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOBLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOCLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIODLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOELPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOFLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOGLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOHLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOILPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOJLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOKLPEN: u1,
        // Reserved
        _reserved_11: u8,
        // CRC peripheral clock enable during CSleep mode
        CRCLPEN: u1,
        // Reserved
        _reserved_20: u1,
        // BDMA Clock Enable During CSleep Mode
        BDMALPEN: u1,
        // Reserved
        _reserved_22: u2,
        // ADC3 Peripheral Clocks Enable During CSleep Mode
        ADC3LPEN: u1,
        // Reserved
        _reserved_25: u3,
        // Backup RAM Clock Enable During CSleep Mode
        BKPRAMLPEN: u1,
        // SRAM4 Clock Enable During CSleep Mode
        SRAM4LPEN: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC AHB4 Sleep Clock Register
    C1_AHB4LPENR: packed struct(u32) {
        // GPIO peripheral clock enable during CSleep mode
        GPIOALPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOBLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOCLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIODLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOELPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOFLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOGLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOHLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOILPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOJLPEN: u1,
        // GPIO peripheral clock enable during CSleep mode
        GPIOKLPEN: u1,
        // Reserved
        _reserved_11: u8,
        // CRC peripheral clock enable during CSleep mode
        CRCLPEN: u1,
        // Reserved
        _reserved_20: u1,
        // BDMA Clock Enable During CSleep Mode
        BDMALPEN: u1,
        // Reserved
        _reserved_22: u2,
        // ADC3 Peripheral Clocks Enable During CSleep Mode
        ADC3LPEN: u1,
        // Reserved
        _reserved_25: u3,
        // Backup RAM Clock Enable During CSleep Mode
        BKPRAMLPEN: u1,
        // SRAM4 Clock Enable During CSleep Mode
        SRAM4LPEN: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC APB3 Sleep Clock Register
    C1_APB3LPENR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // LTDC peripheral clock enable during CSleep mode
        LTDCLPEN: u1,
        // Reserved
        _reserved_4: u2,
        // WWDG1 Clock Enable During CSleep Mode
        WWDG1LPEN: u1,
        // Reserved
        _reserved_7: u25,
    },
    // RCC APB3 Sleep Clock Register
    APB3LPENR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // LTDC peripheral clock enable during CSleep mode
        LTDCLPEN: u1,
        // Reserved
        _reserved_4: u2,
        // WWDG1 Clock Enable During CSleep Mode
        WWDG1LPEN: u1,
        // Reserved
        _reserved_7: u25,
    },
    // RCC APB1 Low Sleep Clock Register
    APB1LLPENR: packed struct(u32) {
        // TIM2 peripheral clock enable during CSleep mode
        TIM2LPEN: u1,
        // TIM3 peripheral clock enable during CSleep mode
        TIM3LPEN: u1,
        // TIM4 peripheral clock enable during CSleep mode
        TIM4LPEN: u1,
        // TIM5 peripheral clock enable during CSleep mode
        TIM5LPEN: u1,
        // TIM6 peripheral clock enable during CSleep mode
        TIM6LPEN: u1,
        // TIM7 peripheral clock enable during CSleep mode
        TIM7LPEN: u1,
        // TIM12 peripheral clock enable during CSleep mode
        TIM12LPEN: u1,
        // TIM13 peripheral clock enable during CSleep mode
        TIM13LPEN: u1,
        // TIM14 peripheral clock enable during CSleep mode
        TIM14LPEN: u1,
        // LPTIM1 Peripheral Clocks Enable During CSleep Mode
        LPTIM1LPEN: u1,
        // Reserved
        _reserved_10: u4,
        // SPI2 Peripheral Clocks Enable During CSleep Mode
        SPI2LPEN: u1,
        // SPI3 Peripheral Clocks Enable During CSleep Mode
        SPI3LPEN: u1,
        // SPDIFRX Peripheral Clocks Enable During CSleep Mode
        SPDIFRXLPEN: u1,
        // USART2 Peripheral Clocks Enable During CSleep Mode
        USART2LPEN: u1,
        // USART3 Peripheral Clocks Enable During CSleep Mode
        USART3LPEN: u1,
        // UART4 Peripheral Clocks Enable During CSleep Mode
        UART4LPEN: u1,
        // UART5 Peripheral Clocks Enable During CSleep Mode
        UART5LPEN: u1,
        // I2C1 Peripheral Clocks Enable During CSleep Mode
        I2C1LPEN: u1,
        // I2C2 Peripheral Clocks Enable During CSleep Mode
        I2C2LPEN: u1,
        // I2C3 Peripheral Clocks Enable During CSleep Mode
        I2C3LPEN: u1,
        // Reserved
        _reserved_24: u3,
        // HDMI-CEC Peripheral Clocks Enable During CSleep Mode
        HDMICECLPEN: u1,
        // Reserved
        _reserved_28: u1,
        // DAC1/2 peripheral clock enable during CSleep mode
        DAC12LPEN: u1,
        // USART7 Peripheral Clocks Enable During CSleep Mode
        USART7LPEN: u1,
        // USART8 Peripheral Clocks Enable During CSleep Mode
        USART8LPEN: u1,
    },
    // RCC APB1 Low Sleep Clock Register
    C1_APB1LLPENR: packed struct(u32) {
        // TIM2 peripheral clock enable during CSleep mode
        TIM2LPEN: u1,
        // TIM3 peripheral clock enable during CSleep mode
        TIM3LPEN: u1,
        // TIM4 peripheral clock enable during CSleep mode
        TIM4LPEN: u1,
        // TIM5 peripheral clock enable during CSleep mode
        TIM5LPEN: u1,
        // TIM6 peripheral clock enable during CSleep mode
        TIM6LPEN: u1,
        // TIM7 peripheral clock enable during CSleep mode
        TIM7LPEN: u1,
        // TIM12 peripheral clock enable during CSleep mode
        TIM12LPEN: u1,
        // TIM13 peripheral clock enable during CSleep mode
        TIM13LPEN: u1,
        // TIM14 peripheral clock enable during CSleep mode
        TIM14LPEN: u1,
        // LPTIM1 Peripheral Clocks Enable During CSleep Mode
        LPTIM1LPEN: u1,
        // Reserved
        _reserved_10: u4,
        // SPI2 Peripheral Clocks Enable During CSleep Mode
        SPI2LPEN: u1,
        // SPI3 Peripheral Clocks Enable During CSleep Mode
        SPI3LPEN: u1,
        // SPDIFRX Peripheral Clocks Enable During CSleep Mode
        SPDIFRXLPEN: u1,
        // USART2 Peripheral Clocks Enable During CSleep Mode
        USART2LPEN: u1,
        // USART3 Peripheral Clocks Enable During CSleep Mode
        USART3LPEN: u1,
        // UART4 Peripheral Clocks Enable During CSleep Mode
        UART4LPEN: u1,
        // UART5 Peripheral Clocks Enable During CSleep Mode
        UART5LPEN: u1,
        // I2C1 Peripheral Clocks Enable During CSleep Mode
        I2C1LPEN: u1,
        // I2C2 Peripheral Clocks Enable During CSleep Mode
        I2C2LPEN: u1,
        // I2C3 Peripheral Clocks Enable During CSleep Mode
        I2C3LPEN: u1,
        // Reserved
        _reserved_24: u3,
        // HDMI-CEC Peripheral Clocks Enable During CSleep Mode
        HDMICECLPEN: u1,
        // Reserved
        _reserved_28: u1,
        // DAC1/2 peripheral clock enable during CSleep mode
        DAC12LPEN: u1,
        // USART7 Peripheral Clocks Enable During CSleep Mode
        USART7LPEN: u1,
        // USART8 Peripheral Clocks Enable During CSleep Mode
        USART8LPEN: u1,
    },
    // RCC APB1 High Sleep Clock Register
    C1_APB1HLPENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // Clock Recovery System peripheral clock enable during CSleep mode
        CRSLPEN: u1,
        // SWPMI Peripheral Clocks Enable During CSleep Mode
        SWPLPEN: u1,
        // Reserved
        _reserved_3: u1,
        // OPAMP peripheral clock enable during CSleep mode
        OPAMPLPEN: u1,
        // MDIOS peripheral clock enable during CSleep mode
        MDIOSLPEN: u1,
        // Reserved
        _reserved_6: u2,
        // FDCAN Peripheral Clocks Enable During CSleep Mode
        FDCANLPEN: u1,
        // Reserved
        _reserved_9: u23,
    },
    // RCC APB1 High Sleep Clock Register
    APB1HLPENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // Clock Recovery System peripheral clock enable during CSleep mode
        CRSLPEN: u1,
        // SWPMI Peripheral Clocks Enable During CSleep Mode
        SWPLPEN: u1,
        // Reserved
        _reserved_3: u1,
        // OPAMP peripheral clock enable during CSleep mode
        OPAMPLPEN: u1,
        // MDIOS peripheral clock enable during CSleep mode
        MDIOSLPEN: u1,
        // Reserved
        _reserved_6: u2,
        // FDCAN Peripheral Clocks Enable During CSleep Mode
        FDCANLPEN: u1,
        // Reserved
        _reserved_9: u23,
    },
    // RCC APB2 Sleep Clock Register
    APB2LPENR: packed struct(u32) {
        // TIM1 peripheral clock enable during CSleep mode
        TIM1LPEN: u1,
        // TIM8 peripheral clock enable during CSleep mode
        TIM8LPEN: u1,
        // Reserved
        _reserved_2: u2,
        // USART1 Peripheral Clocks Enable During CSleep Mode
        USART1LPEN: u1,
        // USART6 Peripheral Clocks Enable During CSleep Mode
        USART6LPEN: u1,
        // Reserved
        _reserved_6: u6,
        // SPI1 Peripheral Clocks Enable During CSleep Mode
        SPI1LPEN: u1,
        // SPI4 Peripheral Clocks Enable During CSleep Mode
        SPI4LPEN: u1,
        // Reserved
        _reserved_14: u2,
        // TIM15 peripheral clock enable during CSleep mode
        TIM15LPEN: u1,
        // TIM16 peripheral clock enable during CSleep mode
        TIM16LPEN: u1,
        // TIM17 peripheral clock enable during CSleep mode
        TIM17LPEN: u1,
        // Reserved
        _reserved_19: u1,
        // SPI5 Peripheral Clocks Enable During CSleep Mode
        SPI5LPEN: u1,
        // Reserved
        _reserved_21: u1,
        // SAI1 Peripheral Clocks Enable During CSleep Mode
        SAI1LPEN: u1,
        // SAI2 Peripheral Clocks Enable During CSleep Mode
        SAI2LPEN: u1,
        // SAI3 Peripheral Clocks Enable During CSleep Mode
        SAI3LPEN: u1,
        // Reserved
        _reserved_25: u3,
        // DFSDM1 Peripheral Clocks Enable During CSleep Mode
        DFSDM1LPEN: u1,
        // HRTIM peripheral clock enable during CSleep mode
        HRTIMLPEN: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC APB2 Sleep Clock Register
    C1_APB2LPENR: packed struct(u32) {
        // TIM1 peripheral clock enable during CSleep mode
        TIM1LPEN: u1,
        // TIM8 peripheral clock enable during CSleep mode
        TIM8LPEN: u1,
        // Reserved
        _reserved_2: u2,
        // USART1 Peripheral Clocks Enable During CSleep Mode
        USART1LPEN: u1,
        // USART6 Peripheral Clocks Enable During CSleep Mode
        USART6LPEN: u1,
        // Reserved
        _reserved_6: u6,
        // SPI1 Peripheral Clocks Enable During CSleep Mode
        SPI1LPEN: u1,
        // SPI4 Peripheral Clocks Enable During CSleep Mode
        SPI4LPEN: u1,
        // Reserved
        _reserved_14: u2,
        // TIM15 peripheral clock enable during CSleep mode
        TIM15LPEN: u1,
        // TIM16 peripheral clock enable during CSleep mode
        TIM16LPEN: u1,
        // TIM17 peripheral clock enable during CSleep mode
        TIM17LPEN: u1,
        // Reserved
        _reserved_19: u1,
        // SPI5 Peripheral Clocks Enable During CSleep Mode
        SPI5LPEN: u1,
        // Reserved
        _reserved_21: u1,
        // SAI1 Peripheral Clocks Enable During CSleep Mode
        SAI1LPEN: u1,
        // SAI2 Peripheral Clocks Enable During CSleep Mode
        SAI2LPEN: u1,
        // SAI3 Peripheral Clocks Enable During CSleep Mode
        SAI3LPEN: u1,
        // Reserved
        _reserved_25: u3,
        // DFSDM1 Peripheral Clocks Enable During CSleep Mode
        DFSDM1LPEN: u1,
        // HRTIM peripheral clock enable during CSleep mode
        HRTIMLPEN: u1,
        // Reserved
        _reserved_30: u2,
    },
    // RCC APB4 Sleep Clock Register
    C1_APB4LPENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // SYSCFG peripheral clock enable during CSleep mode
        SYSCFGLPEN: u1,
        // Reserved
        _reserved_2: u1,
        // LPUART1 Peripheral Clocks Enable During CSleep Mode
        LPUART1LPEN: u1,
        // Reserved
        _reserved_4: u1,
        // SPI6 Peripheral Clocks Enable During CSleep Mode
        SPI6LPEN: u1,
        // Reserved
        _reserved_6: u1,
        // I2C4 Peripheral Clocks Enable During CSleep Mode
        I2C4LPEN: u1,
        // Reserved
        _reserved_8: u1,
        // LPTIM2 Peripheral Clocks Enable During CSleep Mode
        LPTIM2LPEN: u1,
        // LPTIM3 Peripheral Clocks Enable During CSleep Mode
        LPTIM3LPEN: u1,
        // LPTIM4 Peripheral Clocks Enable During CSleep Mode
        LPTIM4LPEN: u1,
        // LPTIM5 Peripheral Clocks Enable During CSleep Mode
        LPTIM5LPEN: u1,
        // Reserved
        _reserved_13: u1,
        // COMP1/2 peripheral clock enable during CSleep mode
        COMP12LPEN: u1,
        // VREF peripheral clock enable during CSleep mode
        VREFLPEN: u1,
        // RTC APB Clock Enable During CSleep Mode
        RTCAPBLPEN: u1,
        // Reserved
        _reserved_17: u4,
        // SAI4 Peripheral Clocks Enable During CSleep Mode
        SAI4LPEN: u1,
        // Reserved
        _reserved_22: u10,
    },
    // RCC APB4 Sleep Clock Register
    APB4LPENR: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // SYSCFG peripheral clock enable during CSleep mode
        SYSCFGLPEN: u1,
        // Reserved
        _reserved_2: u1,
        // LPUART1 Peripheral Clocks Enable During CSleep Mode
        LPUART1LPEN: u1,
        // Reserved
        _reserved_4: u1,
        // SPI6 Peripheral Clocks Enable During CSleep Mode
        SPI6LPEN: u1,
        // Reserved
        _reserved_6: u1,
        // I2C4 Peripheral Clocks Enable During CSleep Mode
        I2C4LPEN: u1,
        // Reserved
        _reserved_8: u1,
        // LPTIM2 Peripheral Clocks Enable During CSleep Mode
        LPTIM2LPEN: u1,
        // LPTIM3 Peripheral Clocks Enable During CSleep Mode
        LPTIM3LPEN: u1,
        // LPTIM4 Peripheral Clocks Enable During CSleep Mode
        LPTIM4LPEN: u1,
        // LPTIM5 Peripheral Clocks Enable During CSleep Mode
        LPTIM5LPEN: u1,
        // Reserved
        _reserved_13: u1,
        // COMP1/2 peripheral clock enable during CSleep mode
        COMP12LPEN: u1,
        // VREF peripheral clock enable during CSleep mode
        VREFLPEN: u1,
        // RTC APB Clock Enable During CSleep Mode
        RTCAPBLPEN: u1,
        // Reserved
        _reserved_17: u4,
        // SAI4 Peripheral Clocks Enable During CSleep Mode
        SAI4LPEN: u1,
        // Reserved
        _reserved_22: u10,
    },
};

pub const RCC_BASE_ADDRESS: usize = 0x58024400;
pub const RCC_REGISTERS: *volatile RCC = @ptrFromInt(RCC_BASE_ADDRESS);
