// DMAMUX
pub const DMAMUX2 = struct {
    // DMAMux - DMA request line multiplexer channel x control register
    C0CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request line multiplexer channel x control register
    C1CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request line multiplexer channel x control register
    C2CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request line multiplexer channel x control register
    C3CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request line multiplexer channel x control register
    C4CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request line multiplexer channel x control register
    C5CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request line multiplexer channel x control register
    C6CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request line multiplexer channel x control register
    C7CR: packed struct(u32) {
        // Input DMA request line selected
        DMAREQ_ID: u8,
        // Interrupt enable at synchronization event overrun
        SOIE: u1,
        // Event generation enable/disable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronous operating mode enable/disable
        SE: u1,
        // Synchronization event type selector
        // Defines the synchronization event on the selected
        // synchronization input:
        SPOL: u2,
        // Number of DMA requests to forward
        // Defines the number of DMA requests forwarded before
        // output event is generated. In synchronous mode, it
        // also defines the number of DMA requests to forward
        // after a synchronization event, then stop forwarding.
        // The actual number of DMA requests forwarded is
        // NBREQ+1. Note: This field can only be written when
        // both SE and EGE bits are reset.
        NBREQ: u5,
        // Synchronization input selected
        SYNC_ID: u5,
        // Reserved
        _reserved_29: u3,
    },
    // DMAMux - DMA request generator channel x control register
    RG0CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator channel x control register
    RG1CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator channel x control register
    RG2CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator channel x control register
    RG3CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator channel x control register
    RG4CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator channel x control register
    RG5CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator channel x control register
    RG6CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator channel x control register
    RG7CR: packed struct(u32) {
        // DMA request trigger input selected
        SIG_ID: u5,
        // Reserved
        _reserved_5: u3,
        // Interrupt enable at trigger event overrun
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel enable/disable
        GE: u1,
        // DMA request generator trigger event type
        // selection Defines the trigger event on the selected
        // DMA request trigger input
        GPOL: u2,
        // Number of DMA requests to generate
        // Defines the number of DMA requests generated after a
        // trigger event, then stop generating. The actual
        // number of generated DMA requests is GNBREQ+1. Note:
        // This field can only be written when GE bit is
        // reset.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },
    // DMAMux - DMA request generator status register
    RGSR: packed struct(u32) {
        // Trigger event overrun flag The flag is
        // set when a trigger event occurs on DMA request
        // generator channel x, while the DMA request generator
        // counter value is lower than GNBREQ. The flag is
        // cleared by writing 1 to the corresponding COFx bit in
        // DMAMUX_RGCFR register.
        OF: u8,
        // Reserved
        _reserved_8: u24,
    },
    // DMAMux - DMA request generator clear flag register
    RGCFR: packed struct(u32) {
        // Clear trigger event overrun flag Upon
        // setting, this bit clears the corresponding overrun
        // flag OFx in the DMAMUX_RGCSR register.
        COF: u8,
        // Reserved
        _reserved_8: u24,
    },
    // DMAMUX request line multiplexer interrupt channel status register
    CSR: packed struct(u32) {
        // Synchronization overrun event flag
        SOF: u16,
        // Reserved
        _reserved_16: u16,
    },
    // DMAMUX request line multiplexer interrupt clear flag register
    CFR: packed struct(u32) {
        // Clear synchronization overrun event flag
        CSOF: u16,
        // Reserved
        _reserved_16: u16,
    },
};

pub const DMAMUX2_BASE_ADDRESS: usize = 0x58025800;
pub const DMAMUX2_REGISTERS: *volatile DMAMUX2 = @ptrFromInt(DMAMUX2_BASE_ADDRESS);
