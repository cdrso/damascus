// Basic timers
pub const TIM6 = struct {
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
        // Reserved
        _reserved_8: u3,
        // UIF status bit remapping
        UIFREMAP: u1,
        // Reserved
        _reserved_12: u20,
    },
    // control register 2
    CR2: packed struct(u32) {
        // Reserved
        _reserved_0: u4,
        // Master mode selection
        MMS: u3,
        // Reserved
        _reserved_7: u25,
    },
    // DMA/Interrupt enable register
    DIER: packed struct(u32) {
        // Update interrupt enable
        UIE: u1,
        // Reserved
        _reserved_1: u7,
        // Update DMA request enable
        UDE: u1,
        // Reserved
        _reserved_9: u23,
    },
    // status register
    SR: packed struct(u32) {
        // Update interrupt flag
        UIF: u1,
        // Reserved
        _reserved_1: u31,
    },
    // event generation register
    EGR: packed struct(u32) {
        // Update generation
        UG: u1,
        // Reserved
        _reserved_1: u31,
    },
    // counter
    CNT: packed struct(u32) {
        // Low counter value
        CNT: u16,
        // Reserved
        _reserved_16: u15,
        // UIF Copy
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
        // Low Auto-reload value
        ARR: u16,
        // Reserved
        _reserved_16: u16,
    },
};

pub const TIM6_BASE_ADDRESS: usize = 0x40001000;
pub const TIM6_REGISTERS: *volatile TIM6 = @ptrFromInt(TIM6_BASE_ADDRESS);
