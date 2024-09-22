// USB 1 on the go high speed
pub const OTG1_HS_GLOBAL = struct {
    // OTG_HS control and status register
    OTG_HS_GOTGCTL: packed struct(u32) {
        // Session request success
        SRQSCS: u1,
        // Session request
        SRQ: u1,
        // VBUS valid override enable
        VBVALOEN: u1,
        // VBUS valid override value
        VBVALOVAL: u1,
        // A-peripheral session valid override enable
        AVALOEN: u1,
        // A-peripheral session valid override value
        AVALOVAL: u1,
        // B-peripheral session valid override enable.
        BVALOEN: u1,
        // B-peripheral session valid override value
        BVALOVAL: u1,
        // Host negotiation success
        HNGSCS: u1,
        // HNP request
        HNPRQ: u1,
        // Host set HNP enable
        HSHNPEN: u1,
        // Device HNP enabled
        DHNPEN: u1,
        // Embedded host enable
        EHEN: u1,
        // Reserved
        _reserved_13: u3,
        // Connector ID status
        CIDSTS: u1,
        // Long/short debounce time
        DBCT: u1,
        // A-session valid
        ASVLD: u1,
        // B-session valid
        BSVLD: u1,
        // OTG version
        OTGVER: u1,
        // Current mode of operation
        CURMOD: u1,
        // Reserved
        _reserved_22: u10,
    },
    // OTG_HS interrupt register
    OTG_HS_GOTGINT: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Session end detected
        SEDET: u1,
        // Reserved
        _reserved_3: u5,
        // Session request success status change
        SRSSCHG: u1,
        // Host negotiation success status change
        HNSSCHG: u1,
        // Reserved
        _reserved_10: u7,
        // Host negotiation detected
        HNGDET: u1,
        // A-device timeout change
        ADTOCHG: u1,
        // Debounce done
        DBCDNE: u1,
        // ID input pin changed
        IDCHNG: u1,
        // Reserved
        _reserved_21: u11,
    },
    // OTG_HS AHB configuration register
    OTG_HS_GAHBCFG: packed struct(u32) {
        // Global interrupt mask
        GINT: u1,
        // Burst length/type
        HBSTLEN: u4,
        // DMA enable
        DMAEN: u1,
        // Reserved
        _reserved_6: u1,
        // TxFIFO empty level
        TXFELVL: u1,
        // Periodic TxFIFO empty level
        PTXFELVL: u1,
        // Reserved
        _reserved_9: u23,
    },
    // OTG_HS USB configuration register
    OTG_HS_GUSBCFG: packed struct(u32) {
        // FS timeout calibration
        TOCAL: u3,
        // Reserved
        _reserved_3: u3,
        // USB 2.0 high-speed ULPI PHY or USB 1.1 full-speed serial transceiver select
        PHYSEL: u1,
        // Reserved
        _reserved_7: u1,
        // SRP-capable
        SRPCAP: u1,
        // HNP-capable
        HNPCAP: u1,
        // USB turnaround time
        TRDT: u4,
        // Reserved
        _reserved_14: u1,
        // PHY Low-power clock select
        PHYLPCS: u1,
        // Reserved
        _reserved_16: u1,
        // ULPI FS/LS select
        ULPIFSLS: u1,
        // ULPI Auto-resume
        ULPIAR: u1,
        // ULPI Clock SuspendM
        ULPICSM: u1,
        // ULPI External VBUS Drive
        ULPIEVBUSD: u1,
        // ULPI external VBUS indicator
        ULPIEVBUSI: u1,
        // TermSel DLine pulsing selection
        TSDPS: u1,
        // Indicator complement
        PCCI: u1,
        // Indicator pass through
        PTCI: u1,
        // ULPI interface protect disable
        ULPIIPD: u1,
        // Reserved
        _reserved_26: u3,
        // Forced host mode
        FHMOD: u1,
        // Forced peripheral mode
        FDMOD: u1,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS reset register
    OTG_HS_GRSTCTL: packed struct(u32) {
        // Core soft reset
        CSRST: u1,
        // HCLK soft reset
        HSRST: u1,
        // Host frame counter reset
        FCRST: u1,
        // Reserved
        _reserved_3: u1,
        // RxFIFO flush
        RXFFLSH: u1,
        // TxFIFO flush
        TXFFLSH: u1,
        // TxFIFO number
        TXFNUM: u5,
        // Reserved
        _reserved_11: u19,
        // DMA request signal enabled for USB OTG HS
        DMAREQ: u1,
        // AHB master idle
        AHBIDL: u1,
    },
    // OTG_HS core interrupt register
    OTG_HS_GINTSTS: packed struct(u32) {
        // Current mode of operation
        CMOD: u1,
        // Mode mismatch interrupt
        MMIS: u1,
        // OTG interrupt
        OTGINT: u1,
        // Start of frame
        SOF: u1,
        // RxFIFO nonempty
        RXFLVL: u1,
        // Nonperiodic TxFIFO empty
        NPTXFE: u1,
        // Global IN nonperiodic NAK effective
        GINAKEFF: u1,
        // Global OUT NAK effective
        BOUTNAKEFF: u1,
        // Reserved
        _reserved_8: u2,
        // Early suspend
        ESUSP: u1,
        // USB suspend
        USBSUSP: u1,
        // USB reset
        USBRST: u1,
        // Enumeration done
        ENUMDNE: u1,
        // Isochronous OUT packet dropped interrupt
        ISOODRP: u1,
        // End of periodic frame interrupt
        EOPF: u1,
        // Reserved
        _reserved_16: u2,
        // IN endpoint interrupt
        IEPINT: u1,
        // OUT endpoint interrupt
        OEPINT: u1,
        // Incomplete isochronous IN transfer
        IISOIXFR: u1,
        // Incomplete periodic transfer
        PXFR_INCOMPISOOUT: u1,
        // Data fetch suspended
        DATAFSUSP: u1,
        // Reserved
        _reserved_23: u1,
        // Host port interrupt
        HPRTINT: u1,
        // Host channels interrupt
        HCINT: u1,
        // Periodic TxFIFO empty
        PTXFE: u1,
        // Reserved
        _reserved_27: u1,
        // Connector ID status change
        CIDSCHG: u1,
        // Disconnect detected interrupt
        DISCINT: u1,
        // Session request/new session detected interrupt
        SRQINT: u1,
        // Resume/remote wakeup detected interrupt
        WKUINT: u1,
    },
    // OTG_HS interrupt mask register
    OTG_HS_GINTMSK: packed struct(u32) {
        // Reserved
        _reserved_0: u1,
        // Mode mismatch interrupt mask
        MMISM: u1,
        // OTG interrupt mask
        OTGINT: u1,
        // Start of frame mask
        SOFM: u1,
        // Receive FIFO nonempty mask
        RXFLVLM: u1,
        // Nonperiodic TxFIFO empty mask
        NPTXFEM: u1,
        // Global nonperiodic IN NAK effective mask
        GINAKEFFM: u1,
        // Global OUT NAK effective mask
        GONAKEFFM: u1,
        // Reserved
        _reserved_8: u2,
        // Early suspend mask
        ESUSPM: u1,
        // USB suspend mask
        USBSUSPM: u1,
        // USB reset mask
        USBRST: u1,
        // Enumeration done mask
        ENUMDNEM: u1,
        // Isochronous OUT packet dropped interrupt mask
        ISOODRPM: u1,
        // End of periodic frame interrupt mask
        EOPFM: u1,
        // Reserved
        _reserved_16: u2,
        // IN endpoints interrupt mask
        IEPINT: u1,
        // OUT endpoints interrupt mask
        OEPINT: u1,
        // Incomplete isochronous IN transfer mask
        IISOIXFRM: u1,
        // Incomplete periodic transfer mask
        PXFRM_IISOOXFRM: u1,
        // Data fetch suspended mask
        FSUSPM: u1,
        // Reset detected interrupt mask
        RSTDE: u1,
        // Host port interrupt mask
        PRTIM: u1,
        // Host channels interrupt mask
        HCIM: u1,
        // Periodic TxFIFO empty mask
        PTXFEM: u1,
        // LPM interrupt mask
        LPMINTM: u1,
        // Connector ID status change mask
        CIDSCHGM: u1,
        // Disconnect detected interrupt mask
        DISCINT: u1,
        // Session request/new session detected interrupt mask
        SRQIM: u1,
        // Resume/remote wakeup detected interrupt mask
        WUIM: u1,
    },
    // OTG_HS Receive status debug read register (host mode)
    OTG_HS_GRXSTSR_Host: packed struct(u32) {
        // Channel number
        CHNUM: u4,
        // Byte count
        BCNT: u11,
        // Data PID
        DPID: u2,
        // Packet status
        PKTSTS: u4,
        // Reserved
        _reserved_21: u11,
    },
    // OTG_HS status read and pop register (host mode)
    OTG_HS_GRXSTSP_Host: packed struct(u32) {
        // Channel number
        CHNUM: u4,
        // Byte count
        BCNT: u11,
        // Data PID
        DPID: u2,
        // Packet status
        PKTSTS: u4,
        // Reserved
        _reserved_21: u11,
    },
    // OTG_HS Receive FIFO size register
    OTG_HS_GRXFSIZ: packed struct(u32) {
        // RxFIFO depth
        RXFD: u16,
        // Reserved
        _reserved_16: u16,
    },
    // OTG_HS nonperiodic transmit FIFO size register (host mode)
    OTG_HS_HNPTXFSIZ_Host: packed struct(u32) {
        // Nonperiodic transmit RAM start address
        NPTXFSA: u16,
        // Nonperiodic TxFIFO depth
        NPTXFD: u16,
    },
    // Endpoint 0 transmit FIFO size (peripheral mode)
    OTG_HS_DIEPTXF0_Device: packed struct(u32) {
        // Endpoint 0 transmit RAM start address
        TX0FSA: u16,
        // Endpoint 0 TxFIFO depth
        TX0FD: u16,
    },
    // OTG_HS nonperiodic transmit FIFO/queue status register
    OTG_HS_GNPTXSTS: packed struct(u32) {
        // Nonperiodic TxFIFO space available
        NPTXFSAV: u16,
        // Nonperiodic transmit request queue space available
        NPTQXSAV: u8,
        // Top of the nonperiodic transmit request queue
        NPTXQTOP: u7,
        // Reserved
        _reserved_31: u1,
    },
    // OTG_HS general core configuration register
    OTG_HS_GCCFG: packed struct(u32) {
        // Data contact detection (DCD) status
        DCDET: u1,
        // Primary detection (PD) status
        PDET: u1,
        // Secondary detection (SD) status
        SDET: u1,
        // DM pull-up detection status
        PS2DET: u1,
        // Reserved
        _reserved_4: u12,
        // Power down
        PWRDWN: u1,
        // Battery charging detector (BCD) enable
        BCDEN: u1,
        // Data contact detection (DCD) mode enable
        DCDEN: u1,
        // Primary detection (PD) mode enable
        PDEN: u1,
        // Secondary detection (SD) mode enable
        SDEN: u1,
        // USB VBUS detection enable
        VBDEN: u1,
        // Reserved
        _reserved_22: u10,
    },
    // OTG_HS core ID register
    OTG_HS_CID: packed struct(u32) {
        // Product ID field
        PRODUCT_ID: u32,
    },
    // OTG_HS Host periodic transmit FIFO size register
    OTG_HS_HPTXFSIZ: packed struct(u32) {
        // Host periodic TxFIFO start address
        PTXSA: u16,
        // Host periodic TxFIFO depth
        PTXFD: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO size register
    OTG_HS_DIEPTXF1: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        INEPTXSA: u16,
        // IN endpoint TxFIFO depth
        INEPTXFD: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO size register
    OTG_HS_DIEPTXF2: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        INEPTXSA: u16,
        // IN endpoint TxFIFO depth
        INEPTXFD: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO size register
    OTG_HS_DIEPTXF3: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        INEPTXSA: u16,
        // IN endpoint TxFIFO depth
        INEPTXFD: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO size register
    OTG_HS_DIEPTXF4: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        INEPTXSA: u16,
        // IN endpoint TxFIFO depth
        INEPTXFD: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO size register
    OTG_HS_DIEPTXF5: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        INEPTXSA: u16,
        // IN endpoint TxFIFO depth
        INEPTXFD: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO size register
    OTG_HS_DIEPTXF6: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        INEPTXSA: u16,
        // IN endpoint TxFIFO depth
        INEPTXFD: u16,
    },
    // OTG_HS device IN endpoint transmit FIFO size register
    OTG_HS_DIEPTXF7: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        INEPTXSA: u16,
        // IN endpoint TxFIFO depth
        INEPTXFD: u16,
    },

    OTG_DIEPTXF8: packed struct(u32) {
        // IN endpoint FIFOx transmit RAM start address
        // This field contains the memory start address for IN endpoint transmit FIFOx. The address must be aligned with a 32-bit memory location.
        INEPTXSA: u16,
        // IN endpoint Tx FIFO depth
        // This value is in terms of 32-bit words.
        // Minimum value is 16
        INEPTXFD: u16,
    },
    // OTG_HS Receive status debug read register (peripheral mode mode)
    OTG_HS_GRXSTSR_Device: packed struct(u32) {
        // Endpoint number
        EPNUM: u4,
        // Byte count
        BCNT: u11,
        // Data PID
        DPID: u2,
        // Packet status
        PKTSTS: u4,
        // Frame number
        FRMNUM: u4,
        // Reserved
        _reserved_25: u7,
    },
    // OTG_HS status read and pop register (peripheral mode)
    OTG_HS_GRXSTSP_Device: packed struct(u32) {
        // Endpoint number
        EPNUM: u4,
        // Byte count
        BCNT: u11,
        // Data PID
        DPID: u2,
        // Packet status
        PKTSTS: u4,
        // Frame number
        FRMNUM: u4,
        // Reserved
        _reserved_25: u7,
    },
    // OTG core LPM configuration register
    OTG_HS_GLPMCFG: packed struct(u32) {
        // LPM support enable
        LPMEN: u1,
        // LPM token acknowledge enable
        LPMACK: u1,
        // Best effort service latency
        BESL: u4,
        // bRemoteWake value
        REMWAKE: u1,
        // L1 Shallow Sleep enable
        L1SSEN: u1,
        // BESL threshold
        BESLTHRS: u4,
        // L1 deep sleep enable
        L1DSEN: u1,
        // LPM response
        LPMRST: u2,
        // Port sleep status
        SLPSTS: u1,
        // Sleep State Resume OK
        L1RSMOK: u1,
        // LPM Channel Index
        LPMCHIDX: u4,
        // LPM retry count
        LPMRCNT: u3,
        // Send LPM transaction
        SNDLPM: u1,
        // LPM retry count status
        LPMRCNTSTS: u3,
        // Enable best effort service latency
        ENBESL: u1,
        // Reserved
        _reserved_29: u3,
    },
};

pub const OTG1_HS_GLOBAL_BASE_ADDRESS: usize = 0x40040000;
pub const OTG1_HS_GLOBAL_REGISTERS: *volatile OTG1_HS_GLOBAL = @ptrFromInt(OTG1_HS_GLOBAL_BASE_ADDRESS);
