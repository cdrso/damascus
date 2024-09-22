// USB 1 on the go high speed
pub const OTG1_HS_HOST = struct {
    // OTG_HS host configuration register
    OTG_HS_HCFG: packed struct(u32) {
        // FS/LS PHY clock select
        FSLSPCS: u2,
        // FS- and LS-only support
        FSLSS: u1,
        // Reserved
        _reserved_3: u29,
    },
    // OTG_HS Host frame interval register
    OTG_HS_HFIR: packed struct(u32) {
        // Frame interval
        FRIVL: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS host frame number/frame time remaining register
    OTG_HS_HFNUM: packed struct(u32) {
        // Frame number
        FRNUM: u16,
        // Frame time remaining
        FTREM: u16,
    },
    // OTG_HS_Host periodic transmit FIFO/queue status register
    OTG_HS_HPTXSTS: packed struct(u32) {
        // Periodic transmit data FIFO space available
        PTXFSAVL: u16,
        // Periodic transmit request queue space available
        PTXQSAV: u8,
        // Top of the periodic transmit request queue
        PTXQTOP: u8,
    },
    // OTG_HS Host all channels interrupt register
    OTG_HS_HAINT: packed struct(u32) {
        // Channel interrupts
        HAINT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS host all channels interrupt mask register
    OTG_HS_HAINTMSK: packed struct(u32) {
        // Channel interrupt mask
        HAINTM: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS host port control and status register
    OTG_HS_HPRT: packed struct(u32) {
        // Port connect status
        PCSTS: u1,
        // Port connect detected
        PCDET: u1,
        // Port enable
        PENA: u1,
        // Port enable/disable change
        PENCHNG: u1,
        // Port overcurrent active
        POCA: u1,
        // Port overcurrent change
        POCCHNG: u1,
        // Port resume
        PRES: u1,
        // Port suspend
        PSUSP: u1,
        // Port reset
        PRST: u1,
        // Reserved
        _reserved_9: u1,
        // Port line status
        PLSTS: u2,
        // Port power
        PPWR: u1,
        // Port test control
        PTCTL: u4,
        // Port speed
        PSPD: u2,
        // Reserved
        _reserved_19: u13,
    },
    // OTG_HS host channel-0 characteristics register
    OTG_HS_HCCHAR0: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-1 characteristics register
    OTG_HS_HCCHAR1: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-2 characteristics register
    OTG_HS_HCCHAR2: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-3 characteristics register
    OTG_HS_HCCHAR3: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-4 characteristics register
    OTG_HS_HCCHAR4: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-5 characteristics register
    OTG_HS_HCCHAR5: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-6 characteristics register
    OTG_HS_HCCHAR6: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-7 characteristics register
    OTG_HS_HCCHAR7: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-8 characteristics register
    OTG_HS_HCCHAR8: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-9 characteristics register
    OTG_HS_HCCHAR9: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-10 characteristics register
    OTG_HS_HCCHAR10: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-11 characteristics register
    OTG_HS_HCCHAR11: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-0 split control register
    OTG_HS_HCSPLT0: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-1 split control register
    OTG_HS_HCSPLT1: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-2 split control register
    OTG_HS_HCSPLT2: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-3 split control register
    OTG_HS_HCSPLT3: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-4 split control register
    OTG_HS_HCSPLT4: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-5 split control register
    OTG_HS_HCSPLT5: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-6 split control register
    OTG_HS_HCSPLT6: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-7 split control register
    OTG_HS_HCSPLT7: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-8 split control register
    OTG_HS_HCSPLT8: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-9 split control register
    OTG_HS_HCSPLT9: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-10 split control register
    OTG_HS_HCSPLT10: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-11 split control register
    OTG_HS_HCSPLT11: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-11 interrupt register
    OTG_HS_HCINT0: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-1 interrupt register
    OTG_HS_HCINT1: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-2 interrupt register
    OTG_HS_HCINT2: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-3 interrupt register
    OTG_HS_HCINT3: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-4 interrupt register
    OTG_HS_HCINT4: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-5 interrupt register
    OTG_HS_HCINT5: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-6 interrupt register
    OTG_HS_HCINT6: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-7 interrupt register
    OTG_HS_HCINT7: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-8 interrupt register
    OTG_HS_HCINT8: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-9 interrupt register
    OTG_HS_HCINT9: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-10 interrupt register
    OTG_HS_HCINT10: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-11 interrupt register
    OTG_HS_HCINT11: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-11 interrupt mask register
    OTG_HS_HCINTMSK0: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-1 interrupt mask register
    OTG_HS_HCINTMSK1: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-2 interrupt mask register
    OTG_HS_HCINTMSK2: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-3 interrupt mask register
    OTG_HS_HCINTMSK3: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-4 interrupt mask register
    OTG_HS_HCINTMSK4: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-5 interrupt mask register
    OTG_HS_HCINTMSK5: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-6 interrupt mask register
    OTG_HS_HCINTMSK6: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-7 interrupt mask register
    OTG_HS_HCINTMSK7: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-8 interrupt mask register
    OTG_HS_HCINTMSK8: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-9 interrupt mask register
    OTG_HS_HCINTMSK9: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-10 interrupt mask register
    OTG_HS_HCINTMSK10: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-11 interrupt mask register
    OTG_HS_HCINTMSK11: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // response received interrupt mask
        NYET: u1,
        // Transaction error mask
        TXERRM: u1,
        // Babble error mask
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-11 transfer size register
    OTG_HS_HCTSIZ0: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-1 transfer size register
    OTG_HS_HCTSIZ1: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-2 transfer size register
    OTG_HS_HCTSIZ2: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-3 transfer size register
    OTG_HS_HCTSIZ3: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-4 transfer size register
    OTG_HS_HCTSIZ4: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-5 transfer size register
    OTG_HS_HCTSIZ5: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-6 transfer size register
    OTG_HS_HCTSIZ6: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-7 transfer size register
    OTG_HS_HCTSIZ7: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-8 transfer size register
    OTG_HS_HCTSIZ8: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-9 transfer size register
    OTG_HS_HCTSIZ9: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-10 transfer size register
    OTG_HS_HCTSIZ10: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-11 transfer size register
    OTG_HS_HCTSIZ11: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-0 DMA address register
    OTG_HS_HCDMA0: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-1 DMA address register
    OTG_HS_HCDMA1: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-2 DMA address register
    OTG_HS_HCDMA2: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-3 DMA address register
    OTG_HS_HCDMA3: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-4 DMA address register
    OTG_HS_HCDMA4: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-5 DMA address register
    OTG_HS_HCDMA5: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-6 DMA address register
    OTG_HS_HCDMA6: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-7 DMA address register
    OTG_HS_HCDMA7: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-8 DMA address register
    OTG_HS_HCDMA8: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-9 DMA address register
    OTG_HS_HCDMA9: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-10 DMA address register
    OTG_HS_HCDMA10: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-11 DMA address register
    OTG_HS_HCDMA11: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-12 characteristics register
    OTG_HS_HCCHAR12: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-12 split control register
    OTG_HS_HCSPLT12: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-12 interrupt register
    OTG_HS_HCINT12: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-12 interrupt mask register
    OTG_HS_HCINTMSK12: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERRM: u1,
        // Babble error
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-12 transfer size register
    OTG_HS_HCTSIZ12: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-12 DMA address register
    OTG_HS_HCDMA12: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-13 characteristics register
    OTG_HS_HCCHAR13: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-13 split control register
    OTG_HS_HCSPLT13: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-13 interrupt register
    OTG_HS_HCINT13: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-13 interrupt mask register
    OTG_HS_HCINTMSK13: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALLM response received interrupt mask
        STALLM: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERRM: u1,
        // Babble error
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-13 transfer size register
    OTG_HS_HCTSIZ13: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-13 DMA address register
    OTG_HS_HCDMA13: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-14 characteristics register
    OTG_HS_HCCHAR14: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-14 split control register
    OTG_HS_HCSPLT14: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-14 interrupt register
    OTG_HS_HCINT14: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-14 interrupt mask register
    OTG_HS_HCINTMSK14: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALLM: u1,
        // NAKM response received interrupt mask
        NAKM: u1,
        // ACKM response received/transmitted interrupt mask
        ACKM: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERRM: u1,
        // Babble error
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-14 transfer size register
    OTG_HS_HCTSIZ14: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-14 DMA address register
    OTG_HS_HCDMA14: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
    // OTG_HS host channel-15 characteristics register
    OTG_HS_HCCHAR15: packed struct(u32) {
        // Maximum packet size
        MPSIZ: u11,
        // Endpoint number
        EPNUM: u4,
        // Endpoint direction
        EPDIR: u1,
        // Reserved
        _reserved_16: u1,
        // Low-speed device
        LSDEV: u1,
        // Endpoint type
        EPTYP: u2,
        // Multi Count (MC) / Error Count (EC)
        MC: u2,
        // Device address
        DAD: u7,
        // Odd frame
        ODDFRM: u1,
        // Channel disable
        CHDIS: u1,
        // Channel enable
        CHENA: u1,
    },
    // OTG_HS host channel-15 split control register
    OTG_HS_HCSPLT15: packed struct(u32) {
        // Port address
        PRTADDR: u7,
        // Hub address
        HUBADDR: u7,
        // XACTPOS
        XACTPOS: u2,
        // Do complete split
        COMPLSPLT: u1,
        // Reserved
        _reserved_17: u14,
        // Split enable
        SPLITEN: u1,
    },
    // OTG_HS host channel-15 interrupt register
    OTG_HS_HCINT15: packed struct(u32) {
        // Transfer completed
        XFRC: u1,
        // Channel halted
        CHH: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt
        STALL: u1,
        // NAK response received interrupt
        NAK: u1,
        // ACK response received/transmitted interrupt
        ACK: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERR: u1,
        // Babble error
        BBERR: u1,
        // Frame overrun
        FRMOR: u1,
        // Data toggle error
        DTERR: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-15 interrupt mask register
    OTG_HS_HCINTMSK15: packed struct(u32) {
        // Transfer completed mask
        XFRCM: u1,
        // Channel halted mask
        CHHM: u1,
        // AHB error
        AHBERR: u1,
        // STALL response received interrupt mask
        STALL: u1,
        // NAK response received interrupt mask
        NAKM: u1,
        // ACK response received/transmitted interrupt mask
        ACKM: u1,
        // Response received interrupt
        NYET: u1,
        // Transaction error
        TXERRM: u1,
        // Babble error
        BBERRM: u1,
        // Frame overrun mask
        FRMORM: u1,
        // Data toggle error mask
        DTERRM: u1,
        // Reserved
        _reserved_11: u21,
    },
    // OTG_HS host channel-15 transfer size register
    OTG_HS_HCTSIZ15: packed struct(u32) {
        // Transfer size
        XFRSIZ: u19,
        // Packet count
        PKTCNT: u10,
        // Data PID
        DPID: u2,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS host channel-15 DMA address register
    OTG_HS_HCDMA15: packed struct(u32) {
        // DMA address
        DMAADDR: u32,
    },
};

pub const OTG1_HS_HOST_BASE_ADDRESS: usize = 0x40040400;
pub const OTG1_HS_HOST_REGISTERS: *volatile OTG1_HS_HOST = @ptrFromInt(OTG1_HS_HOST_BASE_ADDRESS);
