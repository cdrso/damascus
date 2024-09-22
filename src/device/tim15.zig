// General purpose timers
pub const TIM15 = struct {
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
        // Reserved
        _reserved_4: u3,
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
        // Reserved
        _reserved_11: u21,
    },
    // slave mode control register
    SMCR: packed struct(u32) {
        // Slave mode selection
        SMS: u3,
        // Reserved
        _reserved_3: u1,
        // Trigger selection
        TS_2_0: u3,
        // Master/Slave mode
        MSM: u1,
        // Reserved
        _reserved_8: u8,
        // Slave mode selection bit 3
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
        // Reserved
        _reserved_3: u2,
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
        // Reserved
        _reserved_11: u2,
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
        // Reserved
        _reserved_3: u2,
        // COM interrupt flag
        COMIF: u1,
        // Trigger interrupt flag
        TIF: u1,
        // Break interrupt flag
        BIF: u1,
        // Reserved
        _reserved_8: u1,
        // Capture/Compare 1 overcapture flag
        CC1OF: u1,
        // Capture/compare 2 overcapture flag
        CC2OF: u1,
        // Reserved
        _reserved_11: u21,
    },
    // event generation register
    EGR: packed struct(u32) {
        // Update generation
        UG: u1,
        // Capture/compare 1 generation
        CC1G: u1,
        // Capture/compare 2 generation
        CC2G: u1,
        // Reserved
        _reserved_3: u2,
        // Capture/Compare control update generation
        COMG: u1,
        // Trigger generation
        TG: u1,
        // Break generation
        BG: u1,
        // Reserved
        _reserved_8: u24,
    },
    // capture/compare mode register (output mode)
    CCMR1_Output: packed struct(u32) {
        // Capture/Compare 1 selection
        CC1S: u2,
        // Output Compare 1 fast enable
        OC1FE: u1,
        // Output Compare 1 preload enable
        OC1PE: u1,
        // Output Compare 1 mode
        OC1M: u3,
        // Reserved
        _reserved_7: u1,
        // Capture/Compare 2 selection
        CC2S: u2,
        // Output Compare 2 fast enable
        OC2FE: u1,
        // Output Compare 2 preload enable
        OC2PE: u1,
        // Output Compare 2 mode
        OC2M: u3,
        // Reserved
        _reserved_15: u1,
        // Output Compare 1 mode bit 3
        OC1M_3: u1,
        // Reserved
        _reserved_17: u7,
        // Output Compare 2 mode bit 3
        OC2M_3: u1,
        // Reserved
        _reserved_25: u7,
    },
    // capture/compare mode register 1 (input mode)
    CCMR1_Input: packed struct(u32) {
        // Capture/Compare 1 selection
        CC1S: u2,
        // Input capture 1 prescaler
        IC1PSC: u2,
        // Input capture 1 filter
        IC1F: u4,
        // Capture/Compare 2 selection
        CC2S: u2,
        // Input capture 2 prescaler
        IC2PSC: u2,
        // Input capture 2 filter
        IC2F: u4,
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
        // Reserved
        _reserved_6: u1,
        // Capture/Compare 2 output Polarity
        CC2NP: u1,
        // Reserved
        _reserved_8: u24,
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
    // repetition counter register
    RCR: packed struct(u32) {
        // Repetition counter value
        REP: u8,
        // Reserved
        _reserved_8: u24,
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
        // Reserved
        _reserved_20: u12,
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
    // TIM15 alternate fdfsdm1_breakon register 1
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
        _reserved_12: u20,
    },
    // TIM15 input selection register
    TISEL: packed struct(u32) {
        // selects TI1[0] to TI1[15] input
        TI1SEL: u4,
        // Reserved
        _reserved_4: u4,
        // selects TI2[0] to TI2[15] input
        TI2SEL: u4,
        // Reserved
        _reserved_12: u20,
    },
};

pub const TIM15_BASE_ADDRESS: usize = 0x40014000;
pub const TIM15_REGISTERS: *volatile TIM15 = @ptrFromInt(TIM15_BASE_ADDRESS);
