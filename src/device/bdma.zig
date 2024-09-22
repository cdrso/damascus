// BDMA
pub const BDMA = struct {
    // BDMA interrupt status register
    BDMA_ISR: packed struct(u32) {
        // global interrupt flag for channel 0
        GIF0: u1,
        // transfer complete (TC) flag for channel 0
        TCIF0: u1,
        // half transfer (HT) flag for channel 0
        HTIF0: u1,
        // transfer error (TE) flag for channel 0
        TEIF0: u1,
        // global interrupt flag for channel 1
        GIF1: u1,
        // transfer complete (TC) flag for channel 1
        TCIF1: u1,
        // half transfer (HT) flag for channel 1
        HTIF1: u1,
        // transfer error (TE) flag for channel 1
        TEIF1: u1,
        // global interrupt flag for channel 2
        GIF2: u1,
        // transfer complete (TC) flag for channel 2
        TCIF2: u1,
        // half transfer (HT) flag for channel 2
        HTIF2: u1,
        // transfer error (TE) flag for channel 2
        TEIF2: u1,
        // global interrupt flag for channel 3
        GIF3: u1,
        // transfer complete (TC) flag for channel 3
        TCIF3: u1,
        // half transfer (HT) flag for channel 3
        HTIF3: u1,
        // transfer error (TE) flag for channel 3
        TEIF3: u1,
        // global interrupt flag for channel 4
        GIF4: u1,
        // transfer complete (TC) flag for channel 4
        TCIF4: u1,
        // half transfer (HT) flag for channel 4
        HTIF4: u1,
        // transfer error (TE) flag for channel 4
        TEIF4: u1,
        // global interrupt flag for channel 5
        GIF5: u1,
        // transfer complete (TC) flag for channel 5
        TCIF5: u1,
        // half transfer (HT) flag for channel 5
        HTIF5: u1,
        // transfer error (TE) flag for channel 5
        TEIF5: u1,
        // global interrupt flag for channel 6
        GIF6: u1,
        // transfer complete (TC) flag for channel 6
        TCIF6: u1,
        // half transfer (HT) flag for channel 6
        HTIF6: u1,
        // transfer error (TE) flag for channel 6
        TEIF6: u1,
        // global interrupt flag for channel 7
        GIF7: u1,
        // transfer complete (TC) flag for channel 7
        TCIF7: u1,
        // half transfer (HT) flag for channel 7
        HTIF7: u1,
        // transfer error (TE) flag for channel 7
        TEIF7: u1,
    },
    // BDMA interrupt flag clear register
    BDMA_IFCR: packed struct(u32) {
        // global interrupt flag clear for channel 0
        CGIF0: u1,
        // transfer complete flag clear for channel 0
        CTCIF0: u1,
        // half transfer flag clear for channel 0
        CHTIF0: u1,
        // transfer error flag clear for channel 0
        CTEIF0: u1,
        // global interrupt flag clear for channel 0
        CGIF1: u1,
        // transfer complete flag clear for channel 1
        CTCIF1: u1,
        // half transfer flag clear for channel 1
        CHTIF1: u1,
        // transfer error flag clear for channel 1
        CTEIF1: u1,
        // global interrupt flag clear for channel 2
        CGIF2: u1,
        // transfer complete flag clear for channel 2
        CTCIF2: u1,
        // half transfer flag clear for channe2
        CHTIF2: u1,
        // transfer error flag clear for channel 2
        CTEIF2: u1,
        // global interrupt flag clear for channel 3
        CGIF3: u1,
        // transfer complete flag clear for channel 3
        CTCIF3: u1,
        // half transfer flag clear for channel 3
        CHTIF3: u1,
        // transfer error flag clear for channel 3
        CTEIF3: u1,
        // global interrupt flag clear for channel 4
        CGIF4: u1,
        // transfer complete flag clear for channel 4
        CTCIF4: u1,
        // half transfer flag clear for channel 4
        CHTIF4: u1,
        // transfer error flag clear for channel 4
        CTEIF4: u1,
        // global interrupt flag clear for channel 5
        CGIF5: u1,
        // transfer complete flag clear for channel 5
        CTCIF5: u1,
        // half transfer flag clear for channel 5
        CHTIF5: u1,
        // transfer error flag clear for channel 5
        CTEIF5: u1,
        // global interrupt flag clear for channel 6
        CGIF6: u1,
        // transfer complete flag clear for channel 6
        CTCIF6: u1,
        // half transfer flag clear for channel 6
        CHTIF6: u1,
        // transfer error flag clear for channel 6
        CTEIF6: u1,
        // global interrupt flag clear for channel 7
        CGIF7: u1,
        // transfer complete flag clear for channel 7
        CTCIF7: u1,
        // half transfer flag clear for channel 7
        CHTIF7: u1,
        // transfer error flag clear for channel 7
        CTEIF7: u1,
    },
    // BDMA channel 0 configuration register
    BDMA_CCR0: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR0: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR0: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR0: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR0: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
    // BDMA channel 1 configuration register
    BDMA_CCR1: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR1: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR1: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR1: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR1: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
    // BDMA channel 2 configuration register
    BDMA_CCR2: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR2: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR2: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR2: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR2: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
    // BDMA channel 3 configuration register
    BDMA_CCR3: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR3: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR3: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR3: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR3: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
    // BDMA channel 4 configuration register
    BDMA_CCR4: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR4: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR4: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR4: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR4: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
    // BDMA channel 5 configuration register
    BDMA_CCR5: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR5: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR5: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR5: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR5: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
    // BDMA channel 6 configuration register
    BDMA_CCR6: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR6: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR6: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR6: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR6: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
    // BDMA channel 7 configuration register
    BDMA_CCR7: packed struct(u32) {
        // channel enable
        // When a channel transfer error occurs, this bit is cleared by hardware. It can not be set again by software (channel x re-activated) until the TEIFx bit of the BDMA_ISR register is cleared (by setting the CTEIFx bit of the BDMA_IFCR register).
        // Note: this bit is set and cleared by software.
        EN: u1,
        // transfer complete interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TCIE: u1,
        // half transfer interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        HTIE: u1,
        // transfer error interrupt enable
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        TEIE: u1,
        // data transfer direction
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory modes.
        // Source attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Destination attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Destination attributes are defined by PSIZE and PINC, plus the BDMA_CPARx register. This is still valid in a memory-to-memory mode.
        // Source attributes are defined by MSIZE and MINC, plus the BDMA_CM0/1ARx register. This is still valid in a peripheral-to-peripheral mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        DIR: u1,
        // circular mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        CIRC: u1,
        // peripheral increment mode
        // Defines the increment mode for each DMA transfer to the identified peripheral.
        // n memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PINC: u1,
        // memory increment mode
        // Defines the increment mode for each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MINC: u1,
        // peripheral size
        // Defines the data size of each DMA transfer to the identified peripheral.
        // In memory-to-memory mode, this field identifies the memory destination if DIR = 1 and the memory source if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral destination if DIR = 1 and the peripheral source if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PSIZE: u2,
        // memory size
        // Defines the data size of each DMA transfer to the identified memory.
        // In memory-to-memory mode, this field identifies the memory source if DIR = 1 and the memory destination if DIR = 0.
        // In peripheral-to-peripheral mode, this field identifies the peripheral source if DIR = 1 and the peripheral destination if DIR = 0.
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MSIZE: u2,
        // priority level
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        PL: u2,
        // memory-to-memory mode
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        MEM2MEM: u1,
        // double-buffer mode
        // This bit must be set only in memory-to-peripheral and peripheral-to-memory transfers (MEM2MEM=0). The CIRC bit must also be set in double buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        DBM: u1,
        // current target memory of DMA transfer in double-buffer mode
        // This bit is toggled by hardware at the end of each channel transfer in double-buffer mode.
        // Note: this bit is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        CT: u1,
        // Reserved
        _reserved_17: u15,
    },

    BDMA_CNDTR7: packed struct(u32) {
        // number of data to transfer (0 to 216 - 1)
        // This field is updated by hardware when the channel is enabled:
        // It is decremented after each single BDMA ‘read followed by write’ transfer, indicating the remaining amount of data items to transfer.
        // It is kept at zero when the programmed amount of data to transfer is reached, if the channel is not in circular mode (CIRC = 0 in the BDMA_CCRx register).
        // It is reloaded automatically by the previously programmed value, when the transfer is complete, if the channel is in circular mode (CIRC = 1).
        // If this field is zero, no transfer can be served whatever the channel status (enabled or not).
        // Note: this field is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is read-only when the channel is enabled (EN = 1).
        NDT: u16,
        // Reserved
        _reserved_16: u16,
    },

    BDMA_CPAR7: packed struct(u32) {
        // peripheral address
        // It contains the base address of the peripheral data register from/to which the data is read/written.
        // When PSIZE[1:0] = 01 (16 bits), bit 0 of PA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When PSIZE = 10 (32 bits), bits 1 and 0 of PA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory destination address if DIR = 1 and the memory source address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral destination address DIR = 1 and the peripheral source address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        PA: u32,
    },

    BDMA_CM0AR7: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },

    BDMA_CM1AR7: packed struct(u32) {
        // peripheral address
        // It contains the base address of the memory from/to which the data is read/written.
        // When MSIZE[1:0] = 01 (16 bits), bit 0 of MA[31:0] is ignored. Access is automatically aligned to a half-word address.
        // When MSIZE = 10 (32 bits), bits 1 and 0 of MA[31:0] are ignored. Access is automatically aligned to a word address.
        // In memory-to-memory mode, this register identifies the memory source address if DIR = 1 and the memory destination address if DIR = 0.
        // In peripheral-to-peripheral mode, this register identifies the peripheral source address DIR = 1 and the peripheral destination address if DIR = 0.
        // Note: this register is set and cleared by software.
        // It must not be written when the channel is enabled (EN = 1).
        // It is not read-only when the channel is enabled (EN = 1).
        MA: u32,
    },
};

pub const BDMA_BASE_ADDRESS: usize = 0x58025400;
pub const BDMA_REGISTERS: *volatile BDMA = @ptrFromInt(BDMA_BASE_ADDRESS);
