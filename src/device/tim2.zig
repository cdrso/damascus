// General purpose timers
pub const TIM2 = struct {
    // control register 1
    CR1: packed struct(u32) {
        // Counter enable
        CEN: u1,
        // Update disable
        UDIS: u1,
        // Update request source
        URS: u1,
        // One-pulse mode
        OPM: u1,
        // Direction
        DIR: u1,
        // Center-aligned mode selection
        CMS: u2,
        // Auto-reload preload enable
        ARPE: u1,
        // Clock division
        CKD: u2,
        // Reserved
        _reserved_10: u1,
        // UIF status bit remapping
        UIFREMAP: u1,
        // Reserved
        _reserved_12: u20,
    },
    // control register 2
    CR2: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // Capture/compare DMA selection
        CCDS: u1,
        // Master mode selection
        MMS: u3,
        // TI1 selection
        TI1S: u1,
        // Reserved
        _reserved_8: u24,
    },
    // slave mode control register
    SMCR: packed struct(u32) {
        // Slave mode selection
        SMS: u3,
        // Reserved
        _reserved_3: u1,
        // Trigger selection
        TS: u3,
        // Master/Slave mode
        MSM: u1,
        // External trigger filter
        ETF: u4,
        // External trigger prescaler
        ETPS: u2,
        // External clock enable
        ECE: u1,
        // External trigger polarity
        ETP: u1,
        // Slave mode selection - bit 3
        SMS_3: u1,
        // Reserved
        _reserved_17: u3,
        // Trigger selection
        TS_4_3: u2,
        // Reserved
        _reserved_22: u10,
    },
    // DMA/Interrupt enable register
    DIER: packed struct(u32) {
        // Update interrupt enable
        UIE: u1,
        // Capture/Compare 1 interrupt enable
        CC1IE: u1,
        // Capture/Compare 2 interrupt enable
        CC2IE: u1,
        // Capture/Compare 3 interrupt enable
        CC3IE: u1,
        // Capture/Compare 4 interrupt enable
        CC4IE: u1,
        // Reserved
        _reserved_5: u1,
        // Trigger interrupt enable
        TIE: u1,
        // Reserved
        _reserved_7: u1,
        // Update DMA request enable
        UDE: u1,
        // Capture/Compare 1 DMA request enable
        CC1DE: u1,
        // Capture/Compare 2 DMA request enable
        CC2DE: u1,
        // Capture/Compare 3 DMA request enable
        CC3DE: u1,
        // Capture/Compare 4 DMA request enable
        CC4DE: u1,
        // Reserved
        _reserved_13: u1,
        // Trigger DMA request enable
        TDE: u1,
        // Reserved
        _reserved_15: u17,
    },
    // status register
    SR: packed struct(u32) {
        // Update interrupt flag
        UIF: u1,
        // Capture/compare 1 interrupt flag
        CC1IF: u1,
        // Capture/Compare 2 interrupt flag
        CC2IF: u1,
        // Capture/Compare 3 interrupt flag
        CC3IF: u1,
        // Capture/Compare 4 interrupt flag
        CC4IF: u1,
        // Reserved
        _reserved_5: u1,
        // Trigger interrupt flag
        TIF: u1,
        // Reserved
        _reserved_7: u2,
        // Capture/Compare 1 overcapture flag
        CC1OF: u1,
        // Capture/compare 2 overcapture flag
        CC2OF: u1,
        // Capture/Compare 3 overcapture flag
        CC3OF: u1,
        // Capture/Compare 4 overcapture flag
        CC4OF: u1,
        // Reserved
        _reserved_13: u19,
    },
    // event generation register
    EGR: packed struct(u32) {
        // Update generation
        UG: u1,
        // Capture/compare 1 generation
        CC1G: u1,
        // Capture/compare 2 generation
        CC2G: u1,
        // Capture/compare 3 generation
        CC3G: u1,
        // Capture/compare 4 generation
        CC4G: u1,
        // Reserved
        _reserved_5: u1,
        // Trigger generation
        TG: u1,
        // Reserved
        _reserved_7: u25,
    },
    // capture/compare mode register 1 (output mode)
    CCMR1_Output: packed struct(u32) {
        // CC1S
        CC1S: u2,
        // OC1FE
        OC1FE: u1,
        // OC1PE
        OC1PE: u1,
        // OC1M
        OC1M: u3,
        // OC1CE
        OC1CE: u1,
        // CC2S
        CC2S: u2,
        // OC2FE
        OC2FE: u1,
        // OC2PE
        OC2PE: u1,
        // OC2M
        OC2M: u3,
        // OC2CE
        OC2CE: u1,
        // Output Compare 1 mode - bit 3
        OC1M_3: u1,
        // Reserved
        _reserved_17: u7,
        // Output Compare 2 mode - bit 3
        OC2M_3: u1,
        // Reserved
        _reserved_25: u7,
    },
    // capture/compare mode register 1 (input mode)
    CCMR1_Input: packed struct(u32) {
        // Capture/Compare 1 selection
        CC1S: u2,
        // Input capture 1 prescaler
        ICPCS: u2,
        // Input capture 1 filter
        IC1F: u4,
        // Capture/Compare 2 selection
        CC2S: u2,
        // Input capture 2 prescaler
        IC2PCS: u2,
        // Input capture 2 filter
        IC2F: u4,
        // Reserved
        _reserved_16: u16,
    },
    // capture/compare mode register 2 (output mode)
    CCMR2_Output: packed struct(u32) {
        // CC3S
        CC3S: u2,
        // OC3FE
        OC3FE: u1,
        // OC3PE
        OC3PE: u1,
        // OC3M
        OC3M: u3,
        // OC3CE
        OC3CE: u1,
        // CC4S
        CC4S: u2,
        // OC4FE
        OC4FE: u1,
        // OC4PE
        OC4PE: u1,
        // OC4M
        OC4M: u3,
        // O24CE
        O24CE: u1,
        // Output Compare 1 mode - bit 3
        OC3M_3: u1,
        // Reserved
        _reserved_17: u7,
        // Output Compare 2 mode - bit 3
        OC4M_3: u1,
        // Reserved
        _reserved_25: u7,
    },
    // capture/compare mode register 2 (input mode)
    CCMR2_Input: packed struct(u32) {
        // Capture/compare 3 selection
        CC3S: u2,
        // Input capture 3 prescaler
        IC3PSC: u2,
        // Input capture 3 filter
        IC3F: u4,
        // Capture/Compare 4 selection
        CC4S: u2,
        // Input capture 4 prescaler
        IC4PSC: u2,
        // Input capture 4 filter
        IC4F: u4,
        // Reserved
        _reserved_16: u16,
    },
    // capture/compare enable register
    CCER: packed struct(u32) {
        // Capture/Compare 1 output enable
        CC1E: u1,
        // Capture/Compare 1 output Polarity
        CC1P: u1,
        // Reserved
        _reserved_2: u1,
        // Capture/Compare 1 output Polarity
        CC1NP: u1,
        // Capture/Compare 2 output enable
        CC2E: u1,
        // Capture/Compare 2 output Polarity
        CC2P: u1,
        // Reserved
        _reserved_6: u1,
        // Capture/Compare 2 output Polarity
        CC2NP: u1,
        // Capture/Compare 3 output enable
        CC3E: u1,
        // Capture/Compare 3 output Polarity
        CC3P: u1,
        // Reserved
        _reserved_10: u1,
        // Capture/Compare 3 output Polarity
        CC3NP: u1,
        // Capture/Compare 4 output enable
        CC4E: u1,
        // Capture/Compare 3 output Polarity
        CC4P: u1,
        // Reserved
        _reserved_14: u1,
        // Capture/Compare 4 output Polarity
        CC4NP: u1,
        // Reserved
        _reserved_16: u16,
    },
    // counter
    CNT: packed struct(u32) {
        // low counter value
        CNT_L: u16,
        // High counter value
        CNT_H: u16,
    },
    // prescaler
    PSC: packed struct(u32) {
        // Prescaler value
        PSC: u16,
        // Reserved
        _reserved_16: u16,
    },
    // auto-reload register
    ARR: packed struct(u32) {
        // Low Auto-reload value
        ARR_L: u16,
        // High Auto-reload value
        ARR_H: u16,
    },
    // capture/compare register 1
    CCR1: packed struct(u32) {
        // Low Capture/Compare 1 value
        CCR1_L: u16,
        // High Capture/Compare 1 value
        CCR1_H: u16,
    },
    // capture/compare register 2
    CCR2: packed struct(u32) {
        // Low Capture/Compare 2 value
        CCR2_L: u16,
        // High Capture/Compare 2 value
        CCR2_H: u16,
    },
    // capture/compare register 3
    CCR3: packed struct(u32) {
        // Low Capture/Compare value
        CCR3_L: u16,
        // High Capture/Compare value
        CCR3_H: u16,
    },
    // capture/compare register 4
    CCR4: packed struct(u32) {
        // Low Capture/Compare value
        CCR4_L: u16,
        // High Capture/Compare value
        CCR4_H: u16,
    },
    // DMA control register
    DCR: packed struct(u32) {
        // DMA base address
        DBA: u5,
        // Reserved
        _reserved_5: u3,
        // DMA burst length
        DBL: u5,
        // Reserved
        _reserved_13: u19,
    },
    // DMA address for full transfer
    DMAR: packed struct(u32) {
        // DMA register for burst accesses
        DMAB: u16,
        // Reserved
        _reserved_16: u16,
    },
    // TIM alternate function option register 1
    AF1: packed struct(u32) {
        // Reserved
        _reserved_0: u14,
        // ETR source selection
        ETRSEL: u4,
        // Reserved
        _reserved_18: u14,
    },
    // TIM timer input selection register
    TISEL: packed struct(u32) {
        // TI1[0] to TI1[15] input selection
        TI1SEL: u4,
        // Reserved
        _reserved_4: u4,
        // TI2[0] to TI2[15] input selection
        TI2SEL: u4,
        // Reserved
        _reserved_12: u4,
        // TI3[0] to TI3[15] input selection
        TI3SEL: u4,
        // Reserved
        _reserved_20: u4,
        // TI4[0] to TI4[15] input selection
        TI4SEL: u4,
        // Reserved
        _reserved_28: u4,
    },
};

pub const TIM2_BASE_ADDRESS: usize = 0x40000000;
pub const TIM2_REGISTERS: *volatile TIM2 = @ptrFromInt(TIM2_BASE_ADDRESS);
