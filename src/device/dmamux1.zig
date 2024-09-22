// DMAMUX
pub const DMAMUX1 = struct {

    DMAMUX_C0CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C1CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C2CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C3CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C4CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C5CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C6CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C7CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C8CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C9CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C10CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C11CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C12CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C13CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C14CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_C15CR: packed struct(u32) {
        // DMA request identification
        // Selects the input DMA request. See the DMAMUX table about assignments of multiplexer inputs to resources.
        DMAREQ_ID: u7,
        // Reserved
        _reserved_7: u1,
        // Synchronization overrun interrupt enable
        SOIE: u1,
        // Event generation enable
        EGE: u1,
        // Reserved
        _reserved_10: u6,
        // Synchronization enable
        SE: u1,
        // Synchronization polarity
        // Defines the edge polarity of the selected synchronization input:
        SPOL: u2,
        // Number of DMA requests minus 1 to forward
        // Defines the number of DMA requests to forward to the DMA controller after a synchronization event, and/or the number of DMA requests before an output event is generated.
        // This field shall only be written when both SE and EGE bits are low.
        NBREQ: u5,
        // Synchronization identification
        // Selects the synchronization input (see inputs to resources).
        SYNC_ID: u3,
        // Reserved
        _reserved_27: u5,
    },

    DMAMUX_CSR: packed struct(u32) {
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF0: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF1: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF2: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF3: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF4: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF5: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF6: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF7: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF8: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF9: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF10: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF11: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF12: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF13: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF14: u1,
        // Synchronization overrun event flag
        // The flag is set when a synchronization event occurs on a DMA request line multiplexer channel x, while the DMA request counter value is lower than NBREQ.
        // The flag is cleared by writing 1 to the corresponding CSOFx bit in DMAMUX_CFR register. For DMAMUX2 bits 15:8 are reserved, keep them at reset value.
        SOF15: u1,
        // Reserved
        _reserved_16: u16,
    },

    DMAMUX_CFR: packed struct(u32) {
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF0: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF1: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF2: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF3: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF4: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF5: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF6: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF7: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF8: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF9: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF10: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF11: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF12: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF13: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF14: u1,
        // Clear synchronization overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag SOFx in the DMAMUX_CSR register.
        CSOF15: u1,
        // Reserved
        _reserved_16: u16,
    },

    DMAMUX_RG0CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RG1CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RG2CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RG3CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RG4CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RG5CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RG6CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RG7CR: packed struct(u32) {
        // Signal identification
        // Selects the DMA request trigger input used for the channel x of the DMA request generator
        SIG_ID: u3,
        // Reserved
        _reserved_3: u5,
        // Trigger overrun interrupt enable
        OIE: u1,
        // Reserved
        _reserved_9: u7,
        // DMA request generator channel x enable
        GE: u1,
        // DMA request generator trigger polarity
        // Defines the edge polarity of the selected trigger input
        GPOL: u2,
        // Number of DMA requests to be generated (minus 1)
        // Defines the number of DMA requests to be generated after a trigger event. The actual number of generated DMA requests is GNBREQ +1.
        // Note: This field must be written only when GE bit is disabled.
        GNBREQ: u5,
        // Reserved
        _reserved_24: u8,
    },

    DMAMUX_RGSR: packed struct(u32) {
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF0: u1,
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF1: u1,
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF2: u1,
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF3: u1,
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF4: u1,
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF5: u1,
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF6: u1,
        // [:0]: Trigger overrun event flag
        // The flag is set when a new trigger event occurs on DMA request generator channel x, before the request counter underrun (the internal request counter programmed via the GNBREQ field of the DMAMUX_RGxCR register).
        // The flag is cleared by writing 1 to the corresponding COFx bit in the DMAMUX_RGCFR register.
        OF7: u1,
        // Reserved
        _reserved_8: u24,
    },

    DMAMUX_RGCFR: packed struct(u32) {
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF0: u1,
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF1: u1,
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF2: u1,
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF3: u1,
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF4: u1,
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF5: u1,
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF6: u1,
        // Clear trigger overrun event flag
        // Writing 1 in each bit clears the corresponding overrun flag OFx in the DMAMUX_RGSR register.
        COF7: u1,
        // Reserved
        _reserved_8: u24,
    },
};

pub const DMAMUX1_BASE_ADDRESS: usize = 0x40020800;
pub const DMAMUX1_REGISTERS: *volatile DMAMUX1 = @ptrFromInt(DMAMUX1_BASE_ADDRESS);
