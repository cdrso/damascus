// MDMA
pub const MDMA = struct {
    // MDMA Global Interrupt/Status Register
    MDMA_GISR0: packed struct(u32) {
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF0: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF1: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF2: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF3: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF4: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF5: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF6: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF7: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF8: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF9: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF10: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF11: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF12: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF13: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF14: u1,
        // Channel x global interrupt flag (x=...)
        // This bit is set and reset by hardware. It is a
        // logical OR of all the Channel x interrupt flags
        // (CTCIFx, BTIFx, BRTIFx, TEIFx) which are enabled in
        // the interrupt mask register (CTCIEx, BTIEx, BRTIEx,
        // TEIEx)
        GIF15: u1,
        // Reserved
        _reserved_16: u16,
    },
    // MDMA channel x interrupt/status register
    MDMA_C0ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF0: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF0: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF0: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF0: u1,
        // channel x buffer transfer complete
        TCIF0: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA0: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C0IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF0: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF0: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF0: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF0: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF0: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C0ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C0CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C0TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C0BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C0SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C0DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C0BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C0LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C0TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C0MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C0MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C1ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF1: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF1: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF1: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF1: u1,
        // channel x buffer transfer complete
        TCIF1: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA1: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C1IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF1: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF1: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF1: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF1: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF1: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C1ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C1CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C1TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C1BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C1SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C1DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C1BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C1LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C1TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C1MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C1MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C2ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF2: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF2: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF2: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF2: u1,
        // channel x buffer transfer complete
        TCIF2: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA2: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C2IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF2: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF2: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF2: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF2: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF2: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C2ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C2CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C2TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C2BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C2SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C2DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C2BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C2LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C2TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C2MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C2MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C3ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF3: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF3: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF3: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF3: u1,
        // channel x buffer transfer complete
        TCIF3: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA3: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C3IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF3: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF3: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF3: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF3: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF3: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C3ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C3CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C3TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C3BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C3SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C3DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C3BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C3LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C3TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C3MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C3MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C4ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF4: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF4: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF4: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF4: u1,
        // channel x buffer transfer complete
        TCIF4: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA4: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C4IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF4: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF4: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF4: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF4: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF4: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C4ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C4CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C4TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C4BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C4SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C4DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C4BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C4LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C4TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C4MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C4MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C5ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF5: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF5: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF5: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF5: u1,
        // channel x buffer transfer complete
        TCIF5: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA5: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C5IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF5: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF5: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF5: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF5: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF5: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C5ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C5CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C5TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C5BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C5SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C5DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C5BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C5LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C5TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C5MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C5MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C6ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF6: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF6: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF6: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF6: u1,
        // channel x buffer transfer complete
        TCIF6: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA6: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C6IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF6: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF6: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF6: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF6: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF6: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C6ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C6CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C6TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C6BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C6SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C6DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C6BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C6LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C6TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C6MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C6MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C7ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF7: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF7: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF7: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF7: u1,
        // channel x buffer transfer complete
        TCIF7: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA7: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C7IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF7: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF7: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF7: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF7: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF7: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C7ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C7CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C7TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C7BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C7SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C7DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C7BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C7LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C7TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C7MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C7MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C8ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF8: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF8: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF8: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF8: u1,
        // channel x buffer transfer complete
        TCIF8: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA8: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C8IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF8: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF8: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF8: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF8: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF8: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C8ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C8CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C8TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C8BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C8SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C8DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C8BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C8LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C8TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C8MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C8MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C9ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF9: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF9: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF9: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF9: u1,
        // channel x buffer transfer complete
        TCIF9: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA9: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C9IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF9: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF9: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF9: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF9: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF9: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C9ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C9CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C9TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C9BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C9SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C9DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C9BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C9LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C9TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C9MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C9MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C10ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF10: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF10: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF10: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF10: u1,
        // channel x buffer transfer complete
        TCIF10: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA10: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C10IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF10: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF10: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF10: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF10: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF10: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C10ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C10CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C10TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C10BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C10SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C10DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C10BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C10LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C10TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C10MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C10MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C11ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF11: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF11: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF11: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF11: u1,
        // channel x buffer transfer complete
        TCIF11: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA11: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C11IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF11: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF11: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF11: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF11: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF11: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C11ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C11CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C11TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C11BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C11SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C11DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C11BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C11LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C11TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C11MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C11MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C12ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF12: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF12: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF12: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF12: u1,
        // channel x buffer transfer complete
        TCIF12: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA12: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C12IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF12: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF12: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF12: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF12: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF12: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C12ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C12CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C12TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C12BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C12SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C12DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C12BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C12LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C12TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C12MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C12MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C13ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF13: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF13: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF13: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF13: u1,
        // channel x buffer transfer complete
        TCIF13: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA13: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C13IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF13: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF13: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF13: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF13: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF13: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C13ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C13CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C13TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C13BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C13SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C13DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C13BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C13LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C13TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C13MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C13MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C14ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF14: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF14: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF14: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF14: u1,
        // channel x buffer transfer complete
        TCIF14: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA14: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C14IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF14: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF14: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF14: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF14: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF14: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C14ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C14CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C14TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C14BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C14SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C14DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C14BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C14LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C14TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C14MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C14MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
    // MDMA channel x interrupt/status register
    MDMA_C15ISR: packed struct(u32) {
        // Channel x transfer error interrupt flag
        // This bit is set by hardware. It is cleared by
        // software writing 1 to the corresponding bit in the
        // DMA_IFCRy register.
        TEIF15: u1,
        // Channel x Channel Transfer Complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register. CTC is set when the
        // last block was transferred and the channel has been
        // automatically disabled. CTC is also set when the
        // channel is suspended, as a result of writing EN bit
        // to 0.
        CTCIF15: u1,
        // Channel x block repeat transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BRTIF15: u1,
        // Channel x block transfer complete
        // interrupt flag This bit is set by hardware. It is
        // cleared by software writing 1 to the corresponding
        // bit in the DMA_IFCRy register.
        BTIF15: u1,
        // channel x buffer transfer complete
        TCIF15: u1,
        // Reserved
        _reserved_5: u11,
        // channel x request active flag
        CRQA15: u1,
        // Reserved
        _reserved_17: u15,
    },
    // MDMA channel x interrupt flag clear register
    MDMA_C15IFCR: packed struct(u32) {
        // Channel x clear transfer error interrupt
        // flag Writing a 1 into this bit clears TEIFx in the
        // MDMA_ISRy register
        CTEIF15: u1,
        // Clear Channel transfer complete
        // interrupt flag for channel x Writing a 1 into this
        // bit clears CTCIFx in the MDMA_ISRy
        // register
        CCTCIF15: u1,
        // Channel x clear block repeat transfer
        // complete interrupt flag Writing a 1 into this bit
        // clears BRTIFx in the MDMA_ISRy register
        CBRTIF15: u1,
        // Channel x Clear block transfer complete
        // interrupt flag Writing a 1 into this bit clears BTIFx
        // in the MDMA_ISRy register
        CBTIF15: u1,
        // CLear buffer Transfer Complete Interrupt
        // Flag for channel x Writing a 1 into this bit clears
        // TCIFx in the MDMA_ISRy register
        CLTCIF15: u1,
        // Reserved
        _reserved_5: u27,
    },
    // MDMA Channel x error status register
    MDMA_C15ESR: packed struct(u32) {
        // Transfer Error Address These bits are
        // set and cleared by HW, in case of an MDMA data
        // transfer error. It is used in conjunction with TED.
        // This field indicates the 7 LSBits of the address
        // which generated a transfer/access error. It may be
        // used by SW to retrieve the failing address, by adding
        // this value (truncated to the buffer transfer length
        // size) to the current SAR/DAR value. Note: The SAR/DAR
        // current value doesnt reflect this last address due to
        // the FIFO management system. The SAR/DAR are only
        // updated at the end of a (buffer) transfer (of TLEN+1
        // bytes). Note: It is not set in case of a link data
        // error.
        TEA: u7,
        // Transfer Error Direction These bit is
        // set and cleared by HW, in case of an MDMA data
        // transfer error.
        TED: u1,
        // Transfer Error Link Data These bit is
        // set by HW, in case of a transfer error while reading
        // the block link data structure. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        TELD: u1,
        // Transfer Error Mask Data These bit is
        // set by HW, in case of a transfer error while writing
        // the Mask Data. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        TEMD: u1,
        // Address/Size Error These bit is set by
        // HW, when the programmed address is not aligned with
        // the data size. TED will indicate whether the problem
        // is on the source or destination. It is cleared by
        // software writing 1 to the CTEIFx bit in the DMA_IFCRy
        // register.
        ASE: u1,
        // Block Size Error These bit is set by HW,
        // when the block size is not an integer multiple of the
        // data size either for source or destination. TED will
        // indicate whether the problem is on the source or
        // destination. It is cleared by software writing 1 to
        // the CTEIFx bit in the DMA_IFCRy
        // register.
        BSE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // This register is used to control the concerned channel.
    MDMA_C15CR: packed struct(u32) {
        // channel enable
        EN: u1,
        // Transfer error interrupt enable This bit is set and cleared by software.
        TEIE: u1,
        // Channel Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        CTCIE: u1,
        // Block Repeat transfer interrupt enable
        // This bit is set and cleared by
        // software.
        BRTIE: u1,
        // Block Transfer interrupt enable This bit is set and cleared by software.
        BTIE: u1,
        // buffer Transfer Complete interrupt
        // enable This bit is set and cleared by
        // software.
        TCIE: u1,
        // Priority level These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0.
        PL: u2,
        // Reserved
        _reserved_8: u4,
        // byte Endianness exchange
        BEX: u1,
        // Half word Endianes exchange
        HEX: u1,
        // Word Endianness exchange
        WEX: u1,
        // Reserved
        _reserved_15: u1,
        // SW ReQuest Writing a 1 into this bit
        // sets the CRQAx in MDMA_ISRy register, activating the
        // request on Channel x Note: Either the whole CxCR
        // register or the 8-bit/16-bit register @ Address
        // offset: 0x4E + 0x40 chn may be used for SWRQ
        // activation. In case of a SW request, acknowledge is
        // not generated (neither HW signal, nor CxMAR write
        // access).
        SWRQ: u1,
        // Reserved
        _reserved_17: u15,
    },
    // This register is used to configure the concerned channel.
    MDMA_C15TCR: packed struct(u32) {
        // Source increment mode These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0 Note: When source is
        // AHB (SBUS=1), SINC = 00 is forbidden. In Linked List
        // Mode, at the end of a block (single or last block in
        // repeated block transfer mode), this register will be
        // loaded from memory (from address given by current
        // LAR[31:0] + 0x00).
        SINC: u2,
        // Destination increment mode These bits
        // are set and cleared by software. These bits are
        // protected and can be written only if EN is 0 Note:
        // When destination is AHB (DBUS=1), DINC = 00 is
        // forbidden.
        DINC: u2,
        // Source data size These bits are set and
        // cleared by software. These bits are protected and can
        // be written only if EN is 0 Note: If a value of 11 is
        // programmed for the TCM access/AHB port, a transfer
        // error will occur (TEIF bit set) If SINCOS &lt;
        // SSIZE and SINC &#8800; 00, the result will be
        // unpredictable. Note: SSIZE = 11 (double-word) is
        // forbidden when source is TCM/AHB bus
        // (SBUS=1).
        SSIZE: u2,
        // Destination data size These bits are set
        // and cleared by software. These bits are protected and
        // can be written only if EN is 0. Note: If a value of
        // 11 is programmed for the TCM access/AHB port, a
        // transfer error will occur (TEIF bit set) If DINCOS
        // &lt; DSIZE and DINC &#8800; 00, the result
        // will be unpredictable. Note: DSIZE = 11 (double-word)
        // is forbidden when destination is TCM/AHB bus
        // (DBUS=1).
        DSIZE: u2,
        // source increment offset size
        SINCOS: u2,
        // Destination increment offset
        DINCOS: u2,
        // source burst transfer configuration
        SBURST: u3,
        // Destination burst transfer configuration
        DBURST: u3,
        // buffer transfer lengh
        TLEN: u7,
        // PacK Enable These bit is set and cleared
        // by software. If the Source Size is smaller than the
        // destination, it will be padded according to the PAM
        // value. If the Source data size is larger than the
        // destination one, it will be truncated. The alignment
        // will be done according to the PAM[0] value. This bit
        // is protected and can be written only if EN is
        // 0
        PKE: u1,
        // Padding/Alignement Mode These bits are
        // set and cleared by software. Case 1: Source data size
        // smaller than destination data size - 3 options are
        // valid. Case 2: Source data size larger than
        // destination data size. The remainder part is
        // discarded. When PKE = 1 or DSIZE=SSIZE, these bits
        // are ignored. These bits are protected and can be
        // written only if EN is 0
        PAM: u2,
        // Trigger Mode These bits are set and
        // cleared by software. Note: If TRGM is 11 for the
        // current block, all the values loaded at the end of
        // the current block through the linked list mechanism
        // must keep the same value (TRGM=11) and the same SWRM
        // value, otherwise the result is undefined. These bits
        // are protected and can be written only if EN is
        // 0.
        TRGM: u2,
        // SW Request Mode This bit is set and
        // cleared by software. If a HW or SW request is
        // currently active, the bit change will be delayed
        // until the current transfer is completed. If the CxMAR
        // contains a valid address, the CxMDR value will also
        // be written @ CxMAR address. This bit is protected and
        // can be written only if EN is 0.
        SWRM: u1,
        // Bufferable Write Mode This bit is set
        // and cleared by software. This bit is protected and
        // can be written only if EN is 0. Note: All MDMA
        // destination accesses are non-cacheable.
        BWM: u1,
    },
    // MDMA Channel x block number of data register
    MDMA_C15BNDTR: packed struct(u32) {
        // block number of data to transfer
        BNDT: u17,
        // Reserved
        _reserved_17: u1,
        // Block Repeat Source address Update Mode
        // These bits are protected and can be written only if
        // EN is 0.
        BRSUM: u1,
        // Block Repeat Destination address Update
        // Mode These bits are protected and can be written only
        // if EN is 0.
        BRDUM: u1,
        // Block Repeat Count This field contains
        // the number of repetitions of the current block (0 to
        // 4095). When the channel is enabled, this register is
        // read-only, indicating the remaining number of blocks,
        // excluding the current one. This register decrements
        // after each complete block transfer. Once the last
        // block transfer has completed, this register can
        // either stay at zero or be reloaded automatically from
        // memory (in Linked List mode - i.e. Link Address
        // valid). These bits are protected and can be written
        // only if EN is 0.
        BRC: u12,
    },
    // MDMA channel x source address register
    MDMA_C15SAR: packed struct(u32) {
        // source adr base
        SAR: u32,
    },
    // MDMA channel x destination address register
    MDMA_C15DAR: packed struct(u32) {
        // Destination adr base
        DAR: u32,
    },
    // MDMA channel x Block Repeat address Update register
    MDMA_C15BRUR: packed struct(u32) {
        // source adresse update value
        SUV: u16,
        // destination address update
        DUV: u16,
    },
    // MDMA channel x Link Address register
    MDMA_C15LAR: packed struct(u32) {
        // Link address register
        LAR: u32,
    },
    // MDMA channel x Trigger and Bus selection Register
    MDMA_C15TBR: packed struct(u32) {
        // Trigger selection
        TSEL: u6,
        // Reserved
        _reserved_6: u10,
        // Source BUS select This bit is protected and can be written only if EN is 0.
        SBUS: u1,
        // Destination BUS slect This bit is
        // protected and can be written only if EN is
        // 0.
        DBUS: u1,
        // Reserved
        _reserved_18: u14,
    },
    // MDMA channel x Mask address register
    MDMA_C15MAR: packed struct(u32) {
        // Mask address
        MAR: u32,
    },
    // MDMA channel x Mask Data register
    MDMA_C15MDR: packed struct(u32) {
        // Mask data
        MDR: u32,
    },
};

pub const MDMA_BASE_ADDRESS: usize = 0x52000000;
pub const MDMA_REGISTERS: *volatile MDMA = @ptrFromInt(MDMA_BASE_ADDRESS);
