// Ethernet: media access control (MAC)
pub const Ethernet_MAC = struct {
    // Operating mode configuration register
    MACCR: packed struct(u32) {
        // Receiver Enable
        RE: u1,
        // TE
        TE: u1,
        // PRELEN
        PRELEN: u2,
        // DC
        DC: u1,
        // BL
        BL: u2,
        // Reserved
        _reserved_7: u1,
        // DR
        DR: u1,
        // DCRS
        DCRS: u1,
        // DO
        DO: u1,
        // ECRSFD
        ECRSFD: u1,
        // LM
        LM: u1,
        // DM
        DM: u1,
        // FES
        FES: u1,
        // Reserved
        _reserved_15: u1,
        // JE
        JE: u1,
        // JD
        JD: u1,
        // Reserved
        _reserved_18: u1,
        // WD
        WD: u1,
        // ACS
        ACS: u1,
        // CST
        CST: u1,
        // S2KP
        S2KP: u1,
        // GPSLCE
        GPSLCE: u1,
        // IPG
        IPG: u3,
        // IPC
        IPC: u1,
        // SARC
        SARC: u3,
        // ARPEN
        ARPEN: u1,
    },
    // Extended operating mode configuration register
    MACECR: packed struct(u32) {
        // GPSL
        GPSL: u14,
        // Reserved
        _reserved_14: u2,
        // DCRCC
        DCRCC: u1,
        // SPEN
        SPEN: u1,
        // USP
        USP: u1,
        // Reserved
        _reserved_19: u5,
        // EIPGEN
        EIPGEN: u1,
        // EIPG
        EIPG: u5,
        // Reserved
        _reserved_30: u2,
    },
    // Packet filtering control register
    MACPFR: packed struct(u32) {
        // PR
        PR: u1,
        // HUC
        HUC: u1,
        // HMC
        HMC: u1,
        // DAIF
        DAIF: u1,
        // PM
        PM: u1,
        // DBF
        DBF: u1,
        // PCF
        PCF: u2,
        // SAIF
        SAIF: u1,
        // SAF
        SAF: u1,
        // HPF
        HPF: u1,
        // Reserved
        _reserved_11: u5,
        // VTFE
        VTFE: u1,
        // Reserved
        _reserved_17: u3,
        // IPFE
        IPFE: u1,
        // DNTU
        DNTU: u1,
        // Reserved
        _reserved_22: u9,
        // RA
        RA: u1,
    },
    // Watchdog timeout register
    MACWTR: packed struct(u32) {
        // WTO
        WTO: u4,
        // Reserved
        _reserved_4: u4,
        // PWE
        PWE: u1,
        // Reserved
        _reserved_9: u23,
    },
    // Hash Table 0 register
    MACHT0R: packed struct(u32) {
        // HT31T0
        HT31T0: u32,
    },
    // Hash Table 1 register
    MACHT1R: packed struct(u32) {
        // HT63T32
        HT63T32: u32,
    },
    // VLAN tag register
    MACVTR: packed struct(u32) {
        // VL
        VL: u16,
        // ETV
        ETV: u1,
        // VTIM
        VTIM: u1,
        // ESVL
        ESVL: u1,
        // ERSVLM
        ERSVLM: u1,
        // DOVLTC
        DOVLTC: u1,
        // EVLS
        EVLS: u2,
        // Reserved
        _reserved_23: u1,
        // EVLRXS
        EVLRXS: u1,
        // VTHM
        VTHM: u1,
        // EDVLP
        EDVLP: u1,
        // ERIVLT
        ERIVLT: u1,
        // EIVLS
        EIVLS: u2,
        // Reserved
        _reserved_30: u1,
        // EIVLRXS
        EIVLRXS: u1,
    },
    // VLAN Hash table register
    MACVHTR: packed struct(u32) {
        // VLHT
        VLHT: u16,
        // Reserved
        _reserved_16: u16,
    },
    // VLAN inclusion register
    MACVIR: packed struct(u32) {
        // VLT
        VLT: u16,
        // VLC
        VLC: u2,
        // VLP
        VLP: u1,
        // CSVL
        CSVL: u1,
        // VLTI
        VLTI: u1,
        // Reserved
        _reserved_21: u11,
    },
    // Inner VLAN inclusion register
    MACIVIR: packed struct(u32) {
        // VLT
        VLT: u16,
        // VLC
        VLC: u2,
        // VLP
        VLP: u1,
        // CSVL
        CSVL: u1,
        // VLTI
        VLTI: u1,
        // Reserved
        _reserved_21: u11,
    },
    // Tx Queue flow control register
    MACQTxFCR: packed struct(u32) {
        // FCB_BPA
        FCB_BPA: u1,
        // TFE
        TFE: u1,
        // Reserved
        _reserved_2: u2,
        // PLT
        PLT: u3,
        // DZPQ
        DZPQ: u1,
        // Reserved
        _reserved_8: u8,
        // PT
        PT: u16,
    },
    // Rx flow control register
    MACRxFCR: packed struct(u32) {
        // RFE
        RFE: u1,
        // UP
        UP: u1,
        // Reserved
        _reserved_2: u30,
    },
    // Interrupt status register
    MACISR: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // PHYIS
        PHYIS: u1,
        // PMTIS
        PMTIS: u1,
        // LPIIS
        LPIIS: u1,
        // Reserved
        _reserved_6: u2,
        // MMCIS
        MMCIS: u1,
        // MMCRXIS
        MMCRXIS: u1,
        // MMCTXIS
        MMCTXIS: u1,
        // Reserved
        _reserved_11: u1,
        // TSIS
        TSIS: u1,
        // TXSTSIS
        TXSTSIS: u1,
        // RXSTSIS
        RXSTSIS: u1,
        // Reserved
        _reserved_15: u17,
    },
    // Interrupt enable register
    MACIER: packed struct(u32) {
        // Reserved
        _reserved_0: u3,
        // PHYIE
        PHYIE: u1,
        // PMTIE
        PMTIE: u1,
        // LPIIE
        LPIIE: u1,
        // Reserved
        _reserved_6: u6,
        // TSIE
        TSIE: u1,
        // TXSTSIE
        TXSTSIE: u1,
        // RXSTSIE
        RXSTSIE: u1,
        // Reserved
        _reserved_15: u17,
    },
    // Rx Tx status register
    MACRxTxSR: packed struct(u32) {
        // TJT
        TJT: u1,
        // NCARR
        NCARR: u1,
        // LCARR
        LCARR: u1,
        // EXDEF
        EXDEF: u1,
        // LCOL
        LCOL: u1,
        // LCOL
        EXCOL: u1,
        // Reserved
        _reserved_6: u2,
        // RWT
        RWT: u1,
        // Reserved
        _reserved_9: u23,
    },
    // PMT control status register
    MACPCSR: packed struct(u32) {
        // PWRDWN
        PWRDWN: u1,
        // MGKPKTEN
        MGKPKTEN: u1,
        // RWKPKTEN
        RWKPKTEN: u1,
        // Reserved
        _reserved_3: u2,
        // MGKPRCVD
        MGKPRCVD: u1,
        // RWKPRCVD
        RWKPRCVD: u1,
        // Reserved
        _reserved_7: u2,
        // GLBLUCAST
        GLBLUCAST: u1,
        // RWKPFE
        RWKPFE: u1,
        // Reserved
        _reserved_11: u13,
        // RWKPTR
        RWKPTR: u5,
        // Reserved
        _reserved_29: u2,
        // RWKFILTRST
        RWKFILTRST: u1,
    },
    // Remove wakeup packet filter register
    MACRWKPFR: packed struct(u32) {
        // MACRWKPFR
        MACRWKPFR: u32,
    },
    // LPI control status register
    MACLCSR: packed struct(u32) {
        // TLPIEN
        TLPIEN: u1,
        // TLPIEX
        TLPIEX: u1,
        // RLPIEN
        RLPIEN: u1,
        // RLPIEX
        RLPIEX: u1,
        // Reserved
        _reserved_4: u4,
        // TLPIST
        TLPIST: u1,
        // RLPIST
        RLPIST: u1,
        // Reserved
        _reserved_10: u6,
        // LPIEN
        LPIEN: u1,
        // PLS
        PLS: u1,
        // PLSEN
        PLSEN: u1,
        // LPITXA
        LPITXA: u1,
        // LPITE
        LPITE: u1,
        // Reserved
        _reserved_21: u11,
    },
    // LPI timers control register
    MACLTCR: packed struct(u32) {
        // TWT
        TWT: u16,
        // LST
        LST: u10,
        // Reserved
        _reserved_26: u6,
    },
    // LPI entry timer register
    MACLETR: packed struct(u32) {
        // LPIET
        LPIET: u17,
        // Reserved
        _reserved_17: u15,
    },
    // 1-microsecond-tick counter register
    MAC1USTCR: packed struct(u32) {
        // TIC_1US_CNTR
        TIC_1US_CNTR: u12,
        // Reserved
        _reserved_12: u20,
    },
    // Version register
    MACVR: packed struct(u32) {
        // SNPSVER
        SNPSVER: u8,
        // USERVER
        USERVER: u8,
        // Reserved
        _reserved_16: u16,
    },
    // Debug register
    MACDR: packed struct(u32) {
        // RPESTS
        RPESTS: u1,
        // RFCFCSTS
        RFCFCSTS: u2,
        // Reserved
        _reserved_3: u13,
        // TPESTS
        TPESTS: u1,
        // TFCSTS
        TFCSTS: u2,
        // Reserved
        _reserved_19: u13,
    },
    // HW feature 1 register
    MACHWF1R: packed struct(u32) {
        // RXFIFOSIZE
        RXFIFOSIZE: u5,
        // Reserved
        _reserved_5: u1,
        // TXFIFOSIZE
        TXFIFOSIZE: u5,
        // OSTEN
        OSTEN: u1,
        // PTOEN
        PTOEN: u1,
        // ADVTHWORD
        ADVTHWORD: u1,
        // ADDR64
        ADDR64: u2,
        // DCBEN
        DCBEN: u1,
        // SPHEN
        SPHEN: u1,
        // TSOEN
        TSOEN: u1,
        // DBGMEMA
        DBGMEMA: u1,
        // AVSEL
        AVSEL: u1,
        // Reserved
        _reserved_21: u3,
        // HASHTBLSZ
        HASHTBLSZ: u2,
        // Reserved
        _reserved_26: u1,
        // L3L4FNUM
        L3L4FNUM: u4,
        // Reserved
        _reserved_31: u1,
    },
    // HW feature 2 register
    MACHWF2R: packed struct(u32) {
        // RXQCNT
        RXQCNT: u4,
        // Reserved
        _reserved_4: u2,
        // TXQCNT
        TXQCNT: u4,
        // Reserved
        _reserved_10: u2,
        // RXCHCNT
        RXCHCNT: u4,
        // Reserved
        _reserved_16: u2,
        // TXCHCNT
        TXCHCNT: u4,
        // Reserved
        _reserved_22: u2,
        // PPSOUTNUM
        PPSOUTNUM: u3,
        // Reserved
        _reserved_27: u1,
        // AUXSNAPNUM
        AUXSNAPNUM: u3,
        // Reserved
        _reserved_31: u1,
    },
    // MDIO address register
    MACMDIOAR: packed struct(u32) {
        // MB
        MB: u1,
        // C45E
        C45E: u1,
        // GOC
        GOC: u2,
        // SKAP
        SKAP: u1,
        // Reserved
        _reserved_5: u3,
        // CR
        CR: u4,
        // NTC
        NTC: u3,
        // Reserved
        _reserved_15: u1,
        // RDA
        RDA: u5,
        // PA
        PA: u5,
        // BTB
        BTB: u1,
        // PSE
        PSE: u1,
        // Reserved
        _reserved_28: u4,
    },
    // MDIO data register
    MACMDIODR: packed struct(u32) {
        // MD
        MD: u16,
        // RA
        RA: u16,
    },
    // ARP address register
    MACARPAR: packed struct(u32) {
        // ARPPA
        ARPPA: u32,
    },
    // Address 0 high register
    MACA0HR: packed struct(u32) {
        // ADDRHI
        ADDRHI: u16,
        // Reserved
        _reserved_16: u15,
        // AE
        AE: u1,
    },
    // Address 0 low register
    MACA0LR: packed struct(u32) {
        // ADDRLO
        ADDRLO: u32,
    },
    // Address 1 low register
    MACA1LR: packed struct(u32) {
        // ADDRLO
        ADDRLO: u32,
    },
    // Address 2 low register
    MACA2LR: packed struct(u32) {
        // ADDRLO
        ADDRLO: u32,
    },
    // Address 1 high register
    MACA1HR: packed struct(u32) {
        // ADDRHI
        ADDRHI: u16,
        // Reserved
        _reserved_16: u8,
        // MBC
        MBC: u6,
        // SA
        SA: u1,
        // AE
        AE: u1,
    },
    // Address 2 high register
    MACA2HR: packed struct(u32) {
        // ADDRHI
        ADDRHI: u16,
        // Reserved
        _reserved_16: u8,
        // MBC
        MBC: u6,
        // SA
        SA: u1,
        // AE
        AE: u1,
    },
    // Address 3 high register
    MACA3HR: packed struct(u32) {
        // ADDRHI
        ADDRHI: u16,
        // Reserved
        _reserved_16: u8,
        // MBC
        MBC: u6,
        // SA
        SA: u1,
        // AE
        AE: u1,
    },
    // Address 3 low register
    MACA3LR: packed struct(u32) {
        // ADDRLO
        ADDRLO: u32,
    },
    // MMC control register
    MMC_CONTROL: packed struct(u32) {
        // CNTRST
        CNTRST: u1,
        // CNTSTOPRO
        CNTSTOPRO: u1,
        // RSTONRD
        RSTONRD: u1,
        // CNTFREEZ
        CNTFREEZ: u1,
        // CNTPRST
        CNTPRST: u1,
        // CNTPRSTLVL
        CNTPRSTLVL: u1,
        // Reserved
        _reserved_6: u2,
        // UCDBC
        UCDBC: u1,
        // Reserved
        _reserved_9: u23,
    },
    // MMC Rx interrupt register
    MMC_RX_INTERRUPT: packed struct(u32) {
        // Reserved
        _reserved_0: u5,
        // RXCRCERPIS
        RXCRCERPIS: u1,
        // RXALGNERPIS
        RXALGNERPIS: u1,
        // Reserved
        _reserved_7: u10,
        // RXUCGPIS
        RXUCGPIS: u1,
        // Reserved
        _reserved_18: u8,
        // RXLPIUSCIS
        RXLPIUSCIS: u1,
        // RXLPITRCIS
        RXLPITRCIS: u1,
        // Reserved
        _reserved_28: u4,
    },
    // MMC Tx interrupt register
    MMC_TX_INTERRUPT: packed struct(u32) {
        // Reserved
        _reserved_0: u14,
        // TXSCOLGPIS
        TXSCOLGPIS: u1,
        // TXMCOLGPIS
        TXMCOLGPIS: u1,
        // Reserved
        _reserved_16: u5,
        // TXGPKTIS
        TXGPKTIS: u1,
        // Reserved
        _reserved_22: u4,
        // TXLPIUSCIS
        TXLPIUSCIS: u1,
        // TXLPITRCIS
        TXLPITRCIS: u1,
        // Reserved
        _reserved_28: u4,
    },
    // MMC Rx interrupt mask register
    MMC_RX_INTERRUPT_MASK: packed struct(u32) {
        // Reserved
        _reserved_0: u5,
        // RXCRCERPIM
        RXCRCERPIM: u1,
        // RXALGNERPIM
        RXALGNERPIM: u1,
        // Reserved
        _reserved_7: u10,
        // RXUCGPIM
        RXUCGPIM: u1,
        // Reserved
        _reserved_18: u8,
        // RXLPIUSCIM
        RXLPIUSCIM: u1,
        // RXLPITRCIM
        RXLPITRCIM: u1,
        // Reserved
        _reserved_28: u4,
    },
    // MMC Tx interrupt mask register
    MMC_TX_INTERRUPT_MASK: packed struct(u32) {
        // Reserved
        _reserved_0: u14,
        // TXSCOLGPIM
        TXSCOLGPIM: u1,
        // TXMCOLGPIM
        TXMCOLGPIM: u1,
        // Reserved
        _reserved_16: u5,
        // TXGPKTIM
        TXGPKTIM: u1,
        // Reserved
        _reserved_22: u4,
        // TXLPIUSCIM
        TXLPIUSCIM: u1,
        // TXLPITRCIM
        TXLPITRCIM: u1,
        // Reserved
        _reserved_28: u4,
    },
    // Tx single collision good packets register
    TX_SINGLE_COLLISION_GOOD_PACKETS: packed struct(u32) {
        // TXSNGLCOLG
        TXSNGLCOLG: u32,
    },
    // Tx multiple collision good packets register
    TX_MULTIPLE_COLLISION_GOOD_PACKETS: packed struct(u32) {
        // TXMULTCOLG
        TXMULTCOLG: u32,
    },
    // Tx packet count good register
    TX_PACKET_COUNT_GOOD: packed struct(u32) {
        // TXPKTG
        TXPKTG: u32,
    },
    // Rx CRC error packets register
    RX_CRC_ERROR_PACKETS: packed struct(u32) {
        // RXCRCERR
        RXCRCERR: u32,
    },
    // Rx alignment error packets register
    RX_ALIGNMENT_ERROR_PACKETS: packed struct(u32) {
        // RXALGNERR
        RXALGNERR: u32,
    },
    // Rx unicast packets good register
    RX_UNICAST_PACKETS_GOOD: packed struct(u32) {
        // RXUCASTG
        RXUCASTG: u32,
    },
    // Tx LPI microsecond timer register
    TX_LPI_USEC_CNTR: packed struct(u32) {
        // TXLPIUSC
        TXLPIUSC: u32,
    },
    // Tx LPI transition counter register
    TX_LPI_TRAN_CNTR: packed struct(u32) {
        // TXLPITRC
        TXLPITRC: u32,
    },
    // Rx LPI microsecond counter register
    RX_LPI_USEC_CNTR: packed struct(u32) {
        // RXLPIUSC
        RXLPIUSC: u32,
    },
    // Rx LPI transition counter register
    RX_LPI_TRAN_CNTR: packed struct(u32) {
        // RXLPITRC
        RXLPITRC: u32,
    },
    // L3 and L4 control 0 register
    MACL3L4C0R: packed struct(u32) {
        // L3PEN0
        L3PEN0: u1,
        // Reserved
        _reserved_1: u1,
        // L3SAM0
        L3SAM0: u1,
        // L3SAIM0
        L3SAIM0: u1,
        // L3DAM0
        L3DAM0: u1,
        // L3DAIM0
        L3DAIM0: u1,
        // L3HSBM0
        L3HSBM0: u5,
        // L3HDBM0
        L3HDBM0: u5,
        // L4PEN0
        L4PEN0: u1,
        // Reserved
        _reserved_17: u1,
        // L4SPM0
        L4SPM0: u1,
        // L4SPIM0
        L4SPIM0: u1,
        // L4DPM0
        L4DPM0: u1,
        // L4DPIM0
        L4DPIM0: u1,
        // Reserved
        _reserved_22: u10,
    },
    // Layer4 address filter 0 register
    MACL4A0R: packed struct(u32) {
        // L4SP0
        L4SP0: u16,
        // L4DP0
        L4DP0: u16,
    },
    // MACL3A00R
    MACL3A00R: packed struct(u32) {
        // L3A00
        L3A00: u32,
    },
    // Layer3 address 1 filter 0 register
    MACL3A10R: packed struct(u32) {
        // L3A10
        L3A10: u32,
    },
    // Layer3 Address 2 filter 0 register
    MACL3A20: packed struct(u32) {
        // L3A20
        L3A20: u32,
    },
    // Layer3 Address 3 filter 0 register
    MACL3A30: packed struct(u32) {
        // L3A30
        L3A30: u32,
    },
    // L3 and L4 control 1 register
    MACL3L4C1R: packed struct(u32) {
        // L3PEN1
        L3PEN1: u1,
        // Reserved
        _reserved_1: u1,
        // L3SAM1
        L3SAM1: u1,
        // L3SAIM1
        L3SAIM1: u1,
        // L3DAM1
        L3DAM1: u1,
        // L3DAIM1
        L3DAIM1: u1,
        // L3HSBM1
        L3HSBM1: u5,
        // L3HDBM1
        L3HDBM1: u5,
        // L4PEN1
        L4PEN1: u1,
        // Reserved
        _reserved_17: u1,
        // L4SPM1
        L4SPM1: u1,
        // L4SPIM1
        L4SPIM1: u1,
        // L4DPM1
        L4DPM1: u1,
        // L4DPIM1
        L4DPIM1: u1,
        // Reserved
        _reserved_22: u10,
    },
    // Layer 4 address filter 1 register
    MACL4A1R: packed struct(u32) {
        // L4SP1
        L4SP1: u16,
        // L4DP1
        L4DP1: u16,
    },
    // Layer3 address 0 filter 1 Register
    MACL3A01R: packed struct(u32) {
        // L3A01
        L3A01: u32,
    },
    // Layer3 address 1 filter 1 register
    MACL3A11R: packed struct(u32) {
        // L3A11
        L3A11: u32,
    },
    // Layer3 address 2 filter 1 Register
    MACL3A21R: packed struct(u32) {
        // L3A21
        L3A21: u32,
    },
    // Layer3 address 3 filter 1 register
    MACL3A31R: packed struct(u32) {
        // L3A31
        L3A31: u32,
    },
    // Timestamp control Register
    MACTSCR: packed struct(u32) {
        // TSENA
        TSENA: u1,
        // TSCFUPDT
        TSCFUPDT: u1,
        // TSINIT
        TSINIT: u1,
        // TSUPDT
        TSUPDT: u1,
        // Reserved
        _reserved_4: u1,
        // TSADDREG
        TSADDREG: u1,
        // Reserved
        _reserved_6: u2,
        // TSENALL
        TSENALL: u1,
        // TSCTRLSSR
        TSCTRLSSR: u1,
        // TSVER2ENA
        TSVER2ENA: u1,
        // TSIPENA
        TSIPENA: u1,
        // TSIPV6ENA
        TSIPV6ENA: u1,
        // TSIPV4ENA
        TSIPV4ENA: u1,
        // TSEVNTENA
        TSEVNTENA: u1,
        // TSMSTRENA
        TSMSTRENA: u1,
        // SNAPTYPSEL
        SNAPTYPSEL: u2,
        // TSENMACADDR
        TSENMACADDR: u1,
        // CSC
        CSC: u1,
        // Reserved
        _reserved_20: u4,
        // TXTSSTSM
        TXTSSTSM: u1,
        // Reserved
        _reserved_25: u7,
    },
    // Sub-second increment register
    MACSSIR: packed struct(u32) {
        // Reserved
        _reserved_0: u8,
        // SNSINC
        SNSINC: u8,
        // SSINC
        SSINC: u8,
        // Reserved
        _reserved_24: u8,
    },
    // System time seconds register
    MACSTSR: packed struct(u32) {
        // TSS
        TSS: u32,
    },
    // System time nanoseconds register
    MACSTNR: packed struct(u32) {
        // TSSS
        TSSS: u31,
        // Reserved
        _reserved_31: u1,
    },
    // System time seconds update register
    MACSTSUR: packed struct(u32) {
        // TSS
        TSS: u32,
    },
    // System time nanoseconds update register
    MACSTNUR: packed struct(u32) {
        // TSSS
        TSSS: u31,
        // ADDSUB
        ADDSUB: u1,
    },
    // Timestamp addend register
    MACTSAR: packed struct(u32) {
        // TSAR
        TSAR: u32,
    },
    // Timestamp status register
    MACTSSR: packed struct(u32) {
        // TSSOVF
        TSSOVF: u1,
        // TSTARGT0
        TSTARGT0: u1,
        // AUXTSTRIG
        AUXTSTRIG: u1,
        // TSTRGTERR0
        TSTRGTERR0: u1,
        // Reserved
        _reserved_4: u11,
        // TXTSSIS
        TXTSSIS: u1,
        // ATSSTN
        ATSSTN: u4,
        // Reserved
        _reserved_20: u4,
        // ATSSTM
        ATSSTM: u1,
        // ATSNS
        ATSNS: u5,
        // Reserved
        _reserved_30: u2,
    },
    // Tx timestamp status nanoseconds register
    MACTxTSSNR: packed struct(u32) {
        // TXTSSLO
        TXTSSLO: u31,
        // TXTSSMIS
        TXTSSMIS: u1,
    },
    // Tx timestamp status seconds register
    MACTxTSSSR: packed struct(u32) {
        // TXTSSHI
        TXTSSHI: u32,
    },
    // Auxiliary control register
    MACACR: packed struct(u32) {
        // ATSFC
        ATSFC: u1,
        // Reserved
        _reserved_1: u3,
        // ATSEN0
        ATSEN0: u1,
        // ATSEN1
        ATSEN1: u1,
        // ATSEN2
        ATSEN2: u1,
        // ATSEN3
        ATSEN3: u1,
        // Reserved
        _reserved_8: u24,
    },
    // Auxiliary timestamp nanoseconds register
    MACATSNR: packed struct(u32) {
        // AUXTSLO
        AUXTSLO: u31,
        // Reserved
        _reserved_31: u1,
    },
    // Auxiliary timestamp seconds register
    MACATSSR: packed struct(u32) {
        // AUXTSHI
        AUXTSHI: u32,
    },
    // Timestamp Ingress asymmetric correction register
    MACTSIACR: packed struct(u32) {
        // OSTIAC
        OSTIAC: u32,
    },
    // Timestamp Egress asymmetric correction register
    MACTSEACR: packed struct(u32) {
        // OSTEAC
        OSTEAC: u32,
    },
    // Timestamp Ingress correction nanosecond register
    MACTSICNR: packed struct(u32) {
        // TSIC
        TSIC: u32,
    },
    // Timestamp Egress correction nanosecond register
    MACTSECNR: packed struct(u32) {
        // TSEC
        TSEC: u32,
    },
    // PPS control register
    MACPPSCR: packed struct(u32) {
        // PPSCTRL
        PPSCTRL: u4,
        // PPSEN0
        PPSEN0: u1,
        // TRGTMODSEL0
        TRGTMODSEL0: u2,
        // Reserved
        _reserved_7: u25,
    },
    // PPS target time seconds register
    MACPPSTTSR: packed struct(u32) {
        // TSTRH0
        TSTRH0: u31,
        // Reserved
        _reserved_31: u1,
    },
    // PPS target time nanoseconds register
    MACPPSTTNR: packed struct(u32) {
        // TTSL0
        TTSL0: u31,
        // TRGTBUSY0
        TRGTBUSY0: u1,
    },
    // PPS interval register
    MACPPSIR: packed struct(u32) {
        // PPSINT0
        PPSINT0: u32,
    },
    // PPS width register
    MACPPSWR: packed struct(u32) {
        // PPSWIDTH0
        PPSWIDTH0: u32,
    },
    // PTP Offload control register
    MACPOCR: packed struct(u32) {
        // PTOEN
        PTOEN: u1,
        // ASYNCEN
        ASYNCEN: u1,
        // APDREQEN
        APDREQEN: u1,
        // Reserved
        _reserved_3: u1,
        // ASYNCTRIG
        ASYNCTRIG: u1,
        // APDREQTRIG
        APDREQTRIG: u1,
        // DRRDIS
        DRRDIS: u1,
        // Reserved
        _reserved_7: u1,
        // DN
        DN: u8,
        // Reserved
        _reserved_16: u16,
    },
    // PTP Source Port Identity 0 Register
    MACSPI0R: packed struct(u32) {
        // SPI0
        SPI0: u32,
    },
    // PTP Source port identity 1 register
    MACSPI1R: packed struct(u32) {
        // SPI1
        SPI1: u32,
    },
    // PTP Source port identity 2 register
    MACSPI2R: packed struct(u32) {
        // SPI2
        SPI2: u16,
        // Reserved
        _reserved_16: u16,
    },
    // Log message interval register
    MACLMIR: packed struct(u32) {
        // LSI
        LSI: u8,
        // DRSYNCR
        DRSYNCR: u3,
        // Reserved
        _reserved_11: u13,
        // LMPDRI
        LMPDRI: u8,
    },
};

pub const Ethernet_MAC_BASE_ADDRESS: usize = 0x40028000;
pub const Ethernet_MAC_REGISTERS: *volatile Ethernet_MAC = @ptrFromInt(Ethernet_MAC_BASE_ADDRESS);
