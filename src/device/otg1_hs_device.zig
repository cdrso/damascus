// USB 1 on the go high speed
pub const OTG1_HS_DEVICE = struct {
    // OTG_HS device configuration register
    OTG_HS_DCFG: packed struct(u32) {
        // Device speed
        DSPD: u2,
        // Nonzero-length status OUT handshake
        NZLSOHSK: u1,
        // Reserved
        _reserved_3: u1,
        // Device address
        DAD: u7,
        // Periodic (micro)frame interval
        PFIVL: u2,
        // Reserved
        _reserved_13: u11,
        // Periodic scheduling interval
        PERSCHIVL: u2,
        // Reserved
        _reserved_26: u6,
    },
    // OTG_HS device control register
    OTG_HS_DCTL: packed struct(u32) {
        // Remote wakeup signaling
        RWUSIG: u1,
        // Soft disconnect
        SDIS: u1,
        // Global IN NAK status
        GINSTS: u1,
        // Global OUT NAK status
        GONSTS: u1,
        // Test control
        TCTL: u3,
        // Set global IN NAK
        SGINAK: u1,
        // Clear global IN NAK
        CGINAK: u1,
        // Set global OUT NAK
        SGONAK: u1,
        // Clear global OUT NAK
        CGONAK: u1,
        // Power-on programming done
        POPRGDNE: u1,
        // Reserved
        _reserved_12: u20,
    },
    // OTG_HS device status register
    OTG_HS_DSTS: packed struct(u32) {
        // Suspend status
        SUSPSTS: u1,
        // Enumerated speed
        ENUMSPD: u2,
        // Erratic error
        EERR: u1,
        // Reserved
        _reserved_4: u4,
        // Frame number of the received SOF
        FNSOF: u14,
        // Reserved
        _reserved_22: u10,
    },
    // OTG_HS device IN endpoint common interrupt mask register
    OTG_HS_DIEPMSK: packed struct(u32) {
        // Transfer completed interrupt mask
        XFRCM: u1,
        // Endpoint disabled interrupt mask
        EPDM: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition mask (nonisochronous endpoints)
        TOM: u1,
        // IN token received when TxFIFO empty mask
        ITTXFEMSK: u1,
        // IN token received with EP mismatch mask
        INEPNMM: u1,
        // IN endpoint NAK effective mask
        INEPNEM: u1,
        // Reserved
        _reserved_7: u1,
        // FIFO underrun mask
        TXFURM: u1,
        // BNA interrupt mask
        BIM: u1,
        // Reserved
        _reserved_10: u22,
    },
    // OTG_HS device OUT endpoint common interrupt mask register
    OTG_HS_DOEPMSK: packed struct(u32) {
        // Transfer completed interrupt mask
        XFRCM: u1,
        // Endpoint disabled interrupt mask
        EPDM: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done mask
        STUPM: u1,
        // OUT token received when endpoint disabled mask
        OTEPDM: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received mask
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u1,
        // OUT packet error mask
        OPEM: u1,
        // BNA interrupt mask
        BOIM: u1,
        // Reserved
        _reserved_10: u22,
    },
    // OTG_HS device all endpoints interrupt register
    OTG_HS_DAINT: packed struct(u32) {
        // IN endpoint interrupt bits
        IEPINT: u16,
        // OUT endpoint interrupt bits
        OEPINT: u16,
    },
    // OTG_HS all endpoints interrupt mask register
    OTG_HS_DAINTMSK: packed struct(u32) {
        // IN EP interrupt mask bits
        IEPM: u16,
        // OUT EP interrupt mask bits
        OEPM: u16,
    },
    // OTG_HS device VBUS discharge time register
    OTG_HS_DVBUSDIS: packed struct(u32) {
        // Device VBUS discharge time
        VBUSDT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device VBUS pulsing time register
    OTG_HS_DVBUSPULSE: packed struct(u32) {
        // Device VBUS pulsing time
        DVBUSP: u12,
        // Reserved
        _reserved_12: u20,
    },
    // OTG_HS Device threshold control register
    OTG_HS_DTHRCTL: packed struct(u32) {
        // Nonisochronous IN endpoints threshold enable
        NONISOTHREN: u1,
        // ISO IN endpoint threshold enable
        ISOTHREN: u1,
        // Transmit threshold length
        TXTHRLEN: u9,
        // Reserved
        _reserved_11: u5,
        // Receive threshold enable
        RXTHREN: u1,
        // Receive threshold length
        RXTHRLEN: u9,
        // Reserved
        _reserved_26: u1,
        // Arbiter parking enable
        ARPEN: u1,
        // Reserved
        _reserved_28: u4,
    },
    // OTG_HS device IN endpoint FIFO empty interrupt mask register
    OTG_HS_DIEPEMPMSK: packed struct(u32) {
        // IN EP Tx FIFO empty interrupt mask bits
        INEPTXFEM: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device each endpoint interrupt register
    OTG_HS_DEACHINT: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // IN endpoint 1interrupt bit
        IEP1INT: u1,
        // Reserved
        _reserved_2: u15,
        // OUT endpoint 1 interrupt bit
        OEP1INT: u1,
        // Reserved
        _reserved_18: u14,
    },
    // OTG_HS device each endpoint interrupt register mask
    OTG_HS_DEACHINTMSK: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // IN Endpoint 1 interrupt mask bit
        IEP1INTM: u1,
        // Reserved
        _reserved_2: u15,
        // OUT Endpoint 1 interrupt mask bit
        OEP1INTM: u1,
        // Reserved
        _reserved_18: u14,
    },
    // OTG device endpoint-0 control register
    OTG_HS_DIEPCTL0: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-1 control register
    OTG_HS_DIEPCTL1: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-2 control register
    OTG_HS_DIEPCTL2: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-3 control register
    OTG_HS_DIEPCTL3: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-4 control register
    OTG_HS_DIEPCTL4: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-5 control register
    OTG_HS_DIEPCTL5: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-6 control register
    OTG_HS_DIEPCTL6: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-7 control register
    OTG_HS_DIEPCTL7: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even/odd frame
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Reserved
        _reserved_20: u1,
        // STALL handshake
        Stall: u1,
        // TxFIFO number
        TXFNUM: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-0 interrupt register
    OTG_HS_DIEPINT0: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG device endpoint-1 interrupt register
    OTG_HS_DIEPINT1: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG device endpoint-2 interrupt register
    OTG_HS_DIEPINT2: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG device endpoint-3 interrupt register
    OTG_HS_DIEPINT3: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG device endpoint-4 interrupt register
    OTG_HS_DIEPINT4: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG device endpoint-5 interrupt register
    OTG_HS_DIEPINT5: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG device endpoint-6 interrupt register
    OTG_HS_DIEPINT6: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG device endpoint-7 interrupt register
    OTG_HS_DIEPINT7: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // Timeout condition
        TOC: u1,
        // IN token received when TxFIFO is empty
        ITTXFE: u1,
        // Reserved
        _reserved_5: u1,
        // IN endpoint NAK effective
        INEPNE: u1,
        // Transmit FIFO empty
        TXFE: u1,
        // Transmit Fifo Underrun
        TXFIFOUDRN: u1,
        // Buffer not available interrupt
        BNA: u1,
        // Reserved
        _reserved_10: u1,
        // Packet dropped status
        PKTDRPSTS: u1,
        // Babble error interrupt
        BERR: u1,
        // NAK interrupt
        NAK: u1,
        // Reserved
        _reserved_14: u18,
    },
    // OTG_HS device IN endpoint 0 transfer size register
    OTG_HS_DIEPTSIZ0: packed struct(u32) {
        // Transfer size
        XFRSIZ: u7,
        // Reserved
        _reserved_7: u12,
        // Packet count
        PKTCNT: u2,
        // Reserved
        _reserved_21: u11,
    },
    // OTG_HS device endpoint-1 DMA address register
    OTG_HS_DIEPDMA1: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS device endpoint-2 DMA address register
    OTG_HS_DIEPDMA2: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS device endpoint-3 DMA address register
    OTG_HS_DIEPDMA3: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS device endpoint-4 DMA address register
    OTG_HS_DIEPDMA4: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS device endpoint-5 DMA address register
    OTG_HS_DIEPDMA5: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS0: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS1: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS2: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS3: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS4: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS5: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device endpoint transfer size register
    OTG_HS_DIEPTSIZ1: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Multi count
        MCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint transfer size register
    OTG_HS_DIEPTSIZ2: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Multi count
        MCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint transfer size register
    OTG_HS_DIEPTSIZ3: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Multi count
        MCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint transfer size register
    OTG_HS_DIEPTSIZ4: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Multi count
        MCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint transfer size register
    OTG_HS_DIEPTSIZ5: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Multi count
        MCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device control OUT endpoint 0 control register
    OTG_HS_DOEPCTL0: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u2,
        // Reserved
        _reserved_2: u13,
        // USB active endpoint
        USBAEP: u1,
        // Reserved
        _reserved_16: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Reserved
        _reserved_28: u2,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-1 control register
    OTG_HS_DOEPCTL1: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even odd frame/Endpoint data PID
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID/Set even frame
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-2 control register
    OTG_HS_DOEPCTL2: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even odd frame/Endpoint data PID
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID/Set even frame
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-3 control register
    OTG_HS_DOEPCTL3: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even odd frame/Endpoint data PID
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID/Set even frame
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG_HS device endpoint-0 interrupt register
    OTG_HS_DOEPINT0: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-1 interrupt register
    OTG_HS_DOEPINT1: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-2 interrupt register
    OTG_HS_DOEPINT2: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-3 interrupt register
    OTG_HS_DOEPINT3: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-4 interrupt register
    OTG_HS_DOEPINT4: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-5 interrupt register
    OTG_HS_DOEPINT5: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-6 interrupt register
    OTG_HS_DOEPINT6: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-7 interrupt register
    OTG_HS_DOEPINT7: packed struct(u32) {
        // Transfer completed interrupt
        XFRC: u1,
        // Endpoint disabled interrupt
        EPDISD: u1,
        // Reserved
        _reserved_2: u1,
        // SETUP phase done
        STUP: u1,
        // OUT token received when endpoint disabled
        OTEPDIS: u1,
        // Reserved
        _reserved_5: u1,
        // Back-to-back SETUP packets received
        B2BSTUP: u1,
        // Reserved
        _reserved_7: u7,
        // NYET interrupt
        NYET: u1,
        // Reserved
        _reserved_15: u17,
    },
    // OTG_HS device endpoint-0 transfer size register
    OTG_HS_DOEPTSIZ0: packed struct(u32) {
        // Transfer size
        XFRSIZ: u7,
        // Reserved
        _reserved_7: u12,
        // Packet count
        PKTCNT: u1,
        // Reserved
        _reserved_20: u9,
        // SETUP packet count
        STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint-1 transfer size register
    OTG_HS_DOEPTSIZ1: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Received data PID/SETUP packet count
        RXDPID_STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint-2 transfer size register
    OTG_HS_DOEPTSIZ2: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Received data PID/SETUP packet count
        RXDPID_STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint-3 transfer size register
    OTG_HS_DOEPTSIZ3: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Received data PID/SETUP packet count
        RXDPID_STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint-4 transfer size register
    OTG_HS_DOEPTSIZ4: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Received data PID/SETUP packet count
        RXDPID_STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint transfer size register
    OTG_HS_DIEPTSIZ6: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Multi count
        MCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS6: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS device endpoint transfer size register
    OTG_HS_DIEPTSIZ7: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Multi count
        MCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device IN endpoint transmit FIFO status register
    OTG_HS_DTXFSTS7: packed struct(u32) {
        // IN endpoint TxFIFO space avail
        INEPTFSAV: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG device endpoint-4 control register
    OTG_HS_DOEPCTL4: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even odd frame/Endpoint data PID
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID/Set even frame
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-5 control register
    OTG_HS_DOEPCTL5: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even odd frame/Endpoint data PID
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID/Set even frame
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-6 control register
    OTG_HS_DOEPCTL6: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even odd frame/Endpoint data PID
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID/Set even frame
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG device endpoint-7 control register
    OTG_HS_DOEPCTL7: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Reserved
        _reserved_11: u4,
        // USB active endpoint
        USBAEP: u1,
        // Even odd frame/Endpoint data PID
        EONUM_DPID: u1,
        // NAK status
        NAKSTS: u1,
        // Endpoint type
        EPTYP: u2,
        // Snoop mode
        SNPM: u1,
        // STALL handshake
        Stall: u1,
        // Reserved
        _reserved_22: u4,
        // Clear NAK
        CNAK: u1,
        // Set NAK
        SNAK: u1,
        // Set DATA0 PID/Set even frame
        SD0PID_SEVNFRM: u1,
        // Set odd frame
        SODDFRM: u1,
        // Endpoint disable
        EPDIS: u1,
        // Endpoint enable
        EPENA: u1,
    },
    // OTG_HS device endpoint-5 transfer size register
    OTG_HS_DOEPTSIZ5: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Received data PID/SETUP packet count
        RXDPID_STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint-6 transfer size register
    OTG_HS_DOEPTSIZ6: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Received data PID/SETUP packet count
        RXDPID_STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS device endpoint-7 transfer size register
    OTG_HS_DOEPTSIZ7: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Received data PID/SETUP packet count
        RXDPID_STUPCNT: u2,
        // Reserved
        _reserved_31: u1,
    },
};

pub const OTG1_HS_DEVICE_BASE_ADDRESS: usize = 0x40040800;
pub const OTG1_HS_DEVICE_REGISTERS: *volatile OTG1_HS_DEVICE = @ptrFromInt(OTG1_HS_DEVICE_BASE_ADDRESS);
