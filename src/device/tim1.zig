// Advanced-timers
pub const TIM1 = struct {
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
        // Capture/compare preloaded control
        CCPC: u1,
        // Reserved
        _reserved_1: u1,
        // Capture/compare control update selection
        CCUS: u1,
        // Capture/compare DMA selection
        CCDS: u1,
        // Master mode selection
        MMS: u3,
        // TI1 selection
        TI1S: u1,
        // Output Idle state 1
        OIS1: u1,
        // Output Idle state 1
        OIS1N: u1,
        // Output Idle state 2
        OIS2: u1,
        // Output Idle state 2
        OIS2N: u1,
        // Output Idle state 3
        OIS3: u1,
        // Output Idle state 3
        OIS3N: u1,
        // Output Idle state 4
        OIS4: u1,
        // Reserved
        _reserved_15: u1,
        // Output Idle state 5
        OIS5: u1,
        // Reserved
        _reserved_17: u1,
        // Output Idle state 6
        OIS6: u1,
        // Reserved
        _reserved_19: u1,
        // Master mode selection 2
        MMS2: u4,
        // Reserved
        _reserved_24: u8,
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
        // Trigger selection - bit 4:3
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
        // COM interrupt enable
        COMIE: u1,
        // Trigger interrupt enable
        TIE: u1,
        // Break interrupt enable
        BIE: u1,
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
        // COM DMA request enable
        COMDE: u1,
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
        // COM interrupt flag
        COMIF: u1,
        // Trigger interrupt flag
        TIF: u1,
        // Break interrupt flag
        BIF: u1,
        // Break 2 interrupt flag
        B2IF: u1,
        // Capture/Compare 1 overcapture flag
        CC1OF: u1,
        // Capture/compare 2 overcapture flag
        CC2OF: u1,
        // Capture/Compare 3 overcapture flag
        CC3OF: u1,
        // Capture/Compare 4 overcapture flag
        CC4OF: u1,
        // System Break interrupt flag
        SBIF: u1,
        // Reserved
        _reserved_14: u2,
        // Compare 5 interrupt flag
        CC5IF: u1,
        // Compare 6 interrupt flag
        CC6IF: u1,
        // Reserved
        _reserved_18: u14,
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
        // Capture/Compare control update generation
        COMG: u1,
        // Trigger generation
        TG: u1,
        // Break generation
        BG: u1,
        // Break 2 generation
        B2G: u1,
        // Reserved
        _reserved_9: u23,
    },
    // capture/compare mode register 1 (output mode)
    CCMR1_Output: packed struct(u32) {
        // Capture/Compare 1 selection
        CC1S: u2,
        // Output Compare 1 fast enable
        OC1FE: u1,
        // Output Compare 1 preload enable
        OC1PE: u1,
        // Output Compare 1 mode
        OC1M: u3,
        // Output Compare 1 clear enable
        OC1CE: u1,
        // Capture/Compare 2 selection
        CC2S: u2,
        // Output Compare 2 fast enable
        OC2FE: u1,
        // Output Compare 2 preload enable
        OC2PE: u1,
        // Output Compare 2 mode
        OC2M: u3,
        // Output Compare 2 clear enable
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
        // Capture/Compare 3 selection
        CC3S: u2,
        // Output compare 3 fast enable
        OC3FE: u1,
        // Output compare 3 preload enable
        OC3PE: u1,
        // Output compare 3 mode
        OC3M: u3,
        // Output compare 3 clear enable
        OC3CE: u1,
        // Capture/Compare 4 selection
        CC4S: u2,
        // Output compare 4 fast enable
        OC4FE: u1,
        // Output compare 4 preload enable
        OC4PE: u1,
        // Output compare 4 mode
        OC4M: u3,
        // Output compare 4 clear enable
        OC4CE: u1,
        // Output Compare 3 mode - bit 3
        OC3M_3: u1,
        // Reserved
        _reserved_17: u7,
        // Output Compare 4 mode - bit 3
        OC4M_4: u1,
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
        // Capture/Compare 1 complementary output enable
        CC1NE: u1,
        // Capture/Compare 1 output Polarity
        CC1NP: u1,
        // Capture/Compare 2 output enable
        CC2E: u1,
        // Capture/Compare 2 output Polarity
        CC2P: u1,
        // Capture/Compare 2 complementary output enable
        CC2NE: u1,
        // Capture/Compare 2 output Polarity
        CC2NP: u1,
        // Capture/Compare 3 output enable
        CC3E: u1,
        // Capture/Compare 3 output Polarity
        CC3P: u1,
        // Capture/Compare 3 complementary output enable
        CC3NE: u1,
        // Capture/Compare 3 output Polarity
        CC3NP: u1,
        // Capture/Compare 4 output enable
        CC4E: u1,
        // Capture/Compare 3 output Polarity
        CC4P: u1,
        // Reserved
        _reserved_14: u1,
        // Capture/Compare 4 complementary output polarity
        CC4NP: u1,
        // Capture/Compare 5 output enable
        CC5E: u1,
        // Capture/Compare 5 output polarity
        CC5P: u1,
        // Reserved
        _reserved_18: u2,
        // Capture/Compare 6 output enable
        CC6E: u1,
        // Capture/Compare 6 output polarity
        CC6P: u1,
        // Reserved
        _reserved_22: u10,
    },
    // counter
    CNT: packed struct(u32) {
        // counter value
        CNT: u16,
        // Reserved
        _reserved_16: u15,
        // UIF copy
        UIFCPY: u1,
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
        // Auto-reload value
        ARR: u16,
        // Reserved
        _reserved_16: u16,
    },
    // capture/compare register 1
    CCR1: packed struct(u32) {
        // Capture/Compare 1 value
        CCR1: u16,
        // Reserved
        _reserved_16: u16,
    },
    // capture/compare register 2
    CCR2: packed struct(u32) {
        // Capture/Compare 2 value
        CCR2: u16,
        // Reserved
        _reserved_16: u16,
    },
    // capture/compare register 3
    CCR3: packed struct(u32) {
        // Capture/Compare value
        CCR3: u16,
        // Reserved
        _reserved_16: u16,
    },
    // capture/compare register 4
    CCR4: packed struct(u32) {
        // Capture/Compare value
        CCR4: u16,
        // Reserved
        _reserved_16: u16,
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
    // repetition counter register
    RCR: packed struct(u32) {
        // Repetition counter value
        REP: u8,
        // Reserved
        _reserved_8: u24,
    },
    // break and dead-time register
    BDTR: packed struct(u32) {
        // Dead-time generator setup
        DTG: u8,
        // Lock configuration
        LOCK: u2,
        // Off-state selection for Idle mode
        OSSI: u1,
        // Off-state selection for Run mode
        OSSR: u1,
        // Break enable
        BKE: u1,
        // Break polarity
        BKP: u1,
        // Automatic output enable
        AOE: u1,
        // Main output enable
        MOE: u1,
        // Break filter
        BKF: u4,
        // Break 2 filter
        BK2F: u4,
        // Break 2 enable
        BK2E: u1,
        // Break 2 polarity
        BK2P: u1,
        // Reserved
        _reserved_26: u6,
    },
    // capture/compare mode register 3 (output mode)
    CCMR3_Output: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Output compare 5 fast enable
        OC5FE: u1,
        // Output compare 5 preload enable
        OC5PE: u1,
        // Output compare 5 mode
        OC5M: u3,
        // Output compare 5 clear enable
        OC5CE: u1,
        // Reserved
        _reserved_8: u2,
        // Output compare 6 fast enable
        OC6FE: u1,
        // Output compare 6 preload enable
        OC6PE: u1,
        // Output compare 6 mode
        OC6M: u3,
        // Output compare 6 clear enable
        OC6CE: u1,
        // Output Compare 5 mode
        OC5M3: u1,
        // Reserved
        _reserved_17: u7,
        // Output Compare 6 mode
        OC6M3: u1,
        // Reserved
        _reserved_25: u7,
    },
    // capture/compare register 5
    CCR5: packed struct(u32) {
        // Capture/Compare 5 value
        CCR5: u16,
        // Reserved
        _reserved_16: u13,
        // Group Channel 5 and Channel 1
        GC5C1: u1,
        // Group Channel 5 and Channel 2
        GC5C2: u1,
        // Group Channel 5 and Channel 3
        GC5C3: u1,
    },
    // capture/compare register 6
    CCR6: packed struct(u32) {
        // Capture/Compare 6 value
        CCR6: u16,
        // Reserved
        _reserved_16: u16,
    },
    // TIM1 alternate function option register 1
    AF1: packed struct(u32) {
        // BRK BKIN input enable
        BKINE: u1,
        // BRK COMP1 enable
        BKCMP1E: u1,
        // BRK COMP2 enable
        BKCMP2E: u1,
        // Reserved
        _reserved_3: u5,
        // BRK dfsdm1_break[0] enable
        BKDF1BK0E: u1,
        // BRK BKIN input polarity
        BKINP: u1,
        // BRK COMP1 input polarity
        BKCMP1P: u1,
        // BRK COMP2 input polarity
        BKCMP2P: u1,
        // Reserved
        _reserved_12: u2,
        // ETR source selection
        ETRSEL: u4,
        // Reserved
        _reserved_18: u14,
    },
    // TIM1 Alternate function odfsdm1_breakster 2
    AF2: packed struct(u32) {
        // BRK2 BKIN input enable
        BK2INE: u1,
        // BRK2 COMP1 enable
        BK2CMP1E: u1,
        // BRK2 COMP2 enable
        BK2CMP2E: u1,
        // Reserved
        _reserved_3: u5,
        // BRK2 dfsdm1_break[1] enable
        BK2DF1BK1E: u1,
        // BRK2 BKIN2 input polarity
        BK2INP: u1,
        // BRK2 COMP1 input polarit
        BK2CMP1P: u1,
        // BRK2 COMP2 input polarity
        BK2CMP2P: u1,
        // Reserved
        _reserved_12: u20,
    },
    // TIM1 timer input selection register
    TISEL: packed struct(u32) {
        // selects TI1[0] to TI1[15] input
        TI1SEL: u4,
        // Reserved
        _reserved_4: u4,
        // selects TI2[0] to TI2[15] input
        TI2SEL: u4,
        // Reserved
        _reserved_12: u4,
        // selects TI3[0] to TI3[15] input
        TI3SEL: u4,
        // Reserved
        _reserved_20: u4,
        // selects TI4[0] to TI4[15] input
        TI4SEL: u4,
        // Reserved
        _reserved_28: u4,
    },
};

pub const TIM1_BASE_ADDRESS: usize = 0x40010000;
pub const TIM1_REGISTERS: *volatile TIM1 = @ptrFromInt(TIM1_BASE_ADDRESS);
