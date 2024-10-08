// Device: STM32H753
// Version: 1.9
// Description: STM32H753

pub const COMP1 = @import("comp1.zig");
pub const CRS = @import("crs.zig");
pub const DAC = @import("dac.zig");
pub const BDMA = @import("bdma.zig");
pub const DMA2D = @import("dma2d.zig");
pub const DMAMUX1 = @import("dmamux1.zig");
pub const DMAMUX2 = @import("dmamux2.zig");
pub const FMC = @import("fmc.zig");
pub const CEC = @import("cec.zig");
pub const HSEM = @import("hsem.zig");
pub const I2C1 = @import("i2c1.zig");
pub const I2C2 = @import("i2c2.zig");
pub const I2C3 = @import("i2c3.zig");
pub const I2C4 = @import("i2c4.zig");
pub const GPIOA = @import("gpioa.zig");
pub const GPIOB = @import("gpiob.zig");
pub const GPIOC = @import("gpioc.zig");
pub const GPIOD = @import("gpiod.zig");
pub const GPIOE = @import("gpioe.zig");
pub const GPIOF = @import("gpiof.zig");
pub const GPIOG = @import("gpiog.zig");
pub const GPIOH = @import("gpioh.zig");
pub const GPIOI = @import("gpioi.zig");
pub const GPIOJ = @import("gpioj.zig");
pub const GPIOK = @import("gpiok.zig");
pub const JPEG = @import("jpeg.zig");
pub const MDMA = @import("mdma.zig");
pub const QUADSPI = @import("quadspi.zig");
pub const RNG = @import("rng.zig");
pub const RTC = @import("rtc.zig");
pub const SAI4 = @import("sai4.zig");
pub const SAI1 = @import("sai1.zig");
pub const SAI2 = @import("sai2.zig");
pub const SAI3 = @import("sai3.zig");
pub const SDMMC1 = @import("sdmmc1.zig");
pub const SDMMC2 = @import("sdmmc2.zig");
pub const VREFBUF = @import("vrefbuf.zig");
pub const IWDG = @import("iwdg.zig");
pub const WWDG = @import("wwdg.zig");
pub const PWR = @import("pwr.zig");
pub const SPI1 = @import("spi1.zig");
pub const SPI2 = @import("spi2.zig");
pub const SPI3 = @import("spi3.zig");
pub const SPI4 = @import("spi4.zig");
pub const SPI5 = @import("spi5.zig");
pub const SPI6 = @import("spi6.zig");
pub const LTDC = @import("ltdc.zig");
pub const SPDIFRX = @import("spdifrx.zig");
pub const ADC3 = @import("adc3.zig");
pub const ADC1 = @import("adc1.zig");
pub const ADC2 = @import("adc2.zig");
pub const ADC3_Common = @import("adc3_common.zig");
pub const ADC12_Common = @import("adc12_common.zig");
pub const CRC = @import("crc.zig");
pub const RCC = @import("rcc.zig");
pub const LPTIM1 = @import("lptim1.zig");
pub const LPTIM2 = @import("lptim2.zig");
pub const LPTIM3 = @import("lptim3.zig");
pub const LPTIM4 = @import("lptim4.zig");
pub const LPTIM5 = @import("lptim5.zig");
pub const LPUART1 = @import("lpuart1.zig");
pub const SYSCFG = @import("syscfg.zig");
pub const EXTI = @import("exti.zig");
pub const RAMECC1 = @import("ramecc1.zig");
pub const RAMECC2 = @import("ramecc2.zig");
pub const RAMECC3 = @import("ramecc3.zig");
pub const DELAY_Block_SDMMC1 = @import("delay_block_sdmmc1.zig");
pub const DELAY_Block_QUADSPI = @import("delay_block_quadspi.zig");
pub const DELAY_Block_SDMMC2 = @import("delay_block_sdmmc2.zig");
pub const Flash = @import("flash.zig");
pub const AXI = @import("axi.zig");
pub const HASH = @import("hash.zig");
pub const CRYP = @import("cryp.zig");
pub const DCMI = @import("dcmi.zig");
pub const OTG1_HS_GLOBAL = @import("otg1_hs_global.zig");
pub const OTG2_HS_GLOBAL = @import("otg2_hs_global.zig");
pub const OTG1_HS_HOST = @import("otg1_hs_host.zig");
pub const OTG2_HS_HOST = @import("otg2_hs_host.zig");
pub const OTG1_HS_DEVICE = @import("otg1_hs_device.zig");
pub const OTG2_HS_DEVICE = @import("otg2_hs_device.zig");
pub const OTG1_HS_PWRCLK = @import("otg1_hs_pwrclk.zig");
pub const OTG2_HS_PWRCLK = @import("otg2_hs_pwrclk.zig");
pub const Ethernet_DMA = @import("ethernet_dma.zig");
pub const Ethernet_MTL = @import("ethernet_mtl.zig");
pub const Ethernet_MAC = @import("ethernet_mac.zig");
pub const DMA1 = @import("dma1.zig");
pub const DMA2 = @import("dma2.zig");
pub const HRTIM_Master = @import("hrtim_master.zig");
pub const HRTIM_TIMA = @import("hrtim_tima.zig");
pub const HRTIM_TIMB = @import("hrtim_timb.zig");
pub const HRTIM_TIMC = @import("hrtim_timc.zig");
pub const HRTIM_TIMD = @import("hrtim_timd.zig");
pub const HRTIM_TIME = @import("hrtim_time.zig");
pub const HRTIM_Common = @import("hrtim_common.zig");
pub const DFSDM = @import("dfsdm.zig");
pub const TIM16 = @import("tim16.zig");
pub const TIM17 = @import("tim17.zig");
pub const TIM15 = @import("tim15.zig");
pub const USART1 = @import("usart1.zig");
pub const USART2 = @import("usart2.zig");
pub const USART3 = @import("usart3.zig");
pub const UART4 = @import("uart4.zig");
pub const UART5 = @import("uart5.zig");
pub const USART6 = @import("usart6.zig");
pub const UART7 = @import("uart7.zig");
pub const UART8 = @import("uart8.zig");
pub const TIM1 = @import("tim1.zig");
pub const TIM8 = @import("tim8.zig");
pub const FDCAN1 = @import("fdcan1.zig");
pub const FDCAN2 = @import("fdcan2.zig");
pub const CAN_CCU = @import("can_ccu.zig");
pub const MDIOS = @import("mdios.zig");
pub const OPAMP = @import("opamp.zig");
pub const SWPMI = @import("swpmi.zig");
pub const TIM2 = @import("tim2.zig");
pub const TIM3 = @import("tim3.zig");
pub const TIM4 = @import("tim4.zig");
pub const TIM5 = @import("tim5.zig");
pub const TIM12 = @import("tim12.zig");
pub const TIM13 = @import("tim13.zig");
pub const TIM14 = @import("tim14.zig");
pub const TIM6 = @import("tim6.zig");
pub const TIM7 = @import("tim7.zig");
pub const DBGMCU = @import("dbgmcu.zig");
