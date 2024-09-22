// Flash
pub const Flash = struct {
    // Access control register
    ACR: packed struct(u32) {
        // Read latency
        LATENCY: u4,
        // Flash signal delay
        WRHIGHFREQ: u2,
        // Reserved
        _reserved_6: u26,
    },
    // FLASH key register for bank 1
    KEYR1: packed struct(u32) {
        // Bank 1 access configuration unlock key
        KEY1R: u32,
    },
    // FLASH option key register
    OPTKEYR: packed struct(u32) {
        // Unlock key option bytes
        OPTKEYR: u32,
    },
    // FLASH control register for bank 1
    CR1: packed struct(u32) {
        // Bank 1 configuration lock bit
        LOCK1: u1,
        // Bank 1 program enable bit
        PG1: u1,
        // Bank 1 sector erase request
        SER1: u1,
        // Bank 1 erase request
        BER1: u1,
        // Bank 1 program size
        PSIZE1: u2,
        // Bank 1 write forcing control bit
        FW1: u1,
        // Bank 1 bank or sector erase start control bit
        START1: u1,
        // Bank 1 sector erase selection number
        SNB1: u3,
        // Reserved
        _reserved_11: u4,
        // Bank 1 CRC control bit
        CRC_EN: u1,
        // Bank 1 end-of-program interrupt control bit
        EOPIE1: u1,
        // Bank 1 write protection error interrupt enable bit
        WRPERRIE1: u1,
        // Bank 1 programming sequence error interrupt enable bit
        PGSERRIE1: u1,
        // Bank 1 strobe error interrupt enable bit
        STRBERRIE1: u1,
        // Reserved
        _reserved_20: u1,
        // Bank 1 inconsistency error interrupt enable bit
        INCERRIE1: u1,
        // Bank 1 write/erase error interrupt enable bit
        OPERRIE1: u1,
        // Bank 1 read protection error interrupt enable bit
        RDPERRIE1: u1,
        // Bank 1 secure error interrupt enable bit
        RDSERRIE1: u1,
        // Bank 1 ECC single correction error interrupt enable bit
        SNECCERR1: u1,
        // Bank 1 ECC double detection error interrupt enable bit
        DBECCERRIE1: u1,
        // Bank 1 end of CRC calculation interrupt enable bit
        CRCENDIE1: u1,
        // Bank 1 CRC read error interrupt enable bit
        // When CRCRDERRIE1 bit is set to 1, an interrupt is generated when a protected area (PCROP or secure-only) has been detected during the last CRC computation on bank 1. CRCRDERRIE1 can be programmed only when LOCK1 is cleared to 0.
        CRCRDERRIE1: u1,
        // Reserved
        _reserved_29: u3,
    },
    // FLASH status register for bank 1
    SR1: packed struct(u32) {
        // Bank 1 ongoing program flag
        BSY1: u1,
        // Bank 1 write buffer not empty flag
        WBNE1: u1,
        // Bank 1 wait queue flag
        QW1: u1,
        // Bank 1 CRC busy flag
        CRC_BUSY1: u1,
        // Reserved
        _reserved_4: u12,
        // Bank 1 end-of-program flag
        EOP1: u1,
        // Bank 1 write protection error flag
        WRPERR1: u1,
        // Bank 1 programming sequence error flag
        PGSERR1: u1,
        // Bank 1 strobe error flag
        STRBERR1: u1,
        // Reserved
        _reserved_20: u1,
        // Bank 1 inconsistency error flag
        INCERR1: u1,
        // Bank 1 write/erase error flag
        OPERR1: u1,
        // Bank 1 read protection error flag
        RDPERR1: u1,
        // Bank 1 secure error flag
        RDSERR1: u1,
        // Bank 1 single correction error flag
        SNECCERR: u1,
        // Bank 1 ECC double detection error flag
        DBECCERR1: u1,
        // Bank 1 CRC-complete flag
        CRCEND1: u1,
        // Bank 1 CRC read error flag
        // CRCRDERR1 flag is raised when a word is found read protected during a CRC operation on bank 1. An interrupt is generated if CRCRDIE1 and CRCEND1 are set to 1. Writing 1 to CLR_CRCRDERR1 bit in FLASH_CCR1 register clears CRCRDERR1.
        // Note: This flag is valid only when CRCEND1 bit is set to 1
        CRCRDERR1: u1,
        // Reserved
        _reserved_29: u3,
    },
    // FLASH clear control register for bank 1
    CCR1: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Bank 1 EOP1 flag clear bit
        CLR_EOP1: u1,
        // Bank 1 WRPERR1 flag clear bit
        CLR_WRPERR1: u1,
        // Bank 1 PGSERR1 flag clear bi
        CLR_PGSERR1: u1,
        // Bank 1 STRBERR1 flag clear bit
        CLR_STRBERR1: u1,
        // Reserved
        _reserved_20: u1,
        // Bank 1 INCERR1 flag clear bit
        CLR_INCERR1: u1,
        // Bank 1 OPERR1 flag clear bit
        CLR_OPERR1: u1,
        // Bank 1 RDPERR1 flag clear bit
        CLR_RDPERR1: u1,
        // Bank 1 RDSERR1 flag clear bit
        CLR_RDSERR1: u1,
        // Bank 1 SNECCERR1 flag clear bit
        CLR_SNECCERR1: u1,
        // Bank 1 DBECCERR1 flag clear bit
        CLR_DBECCERR1: u1,
        // Bank 1 CRCEND1 flag clear bit
        CLR_CRCEND1: u1,
        // Bank 1 CRCRDERR1 flag clear bit
        // Setting this bit to 1 resets to 0 CRCRDERR1 flag in FLASH_SR1 register.
        CLR_CRCRDERR1: u1,
        // Reserved
        _reserved_29: u3,
    },
    // FLASH option control register
    OPTCR: packed struct(u32) {
        // FLASH_OPTCR lock option configuration bit
        OPTLOCK: u1,
        // Option byte start change option configuration bit
        OPTSTART: u1,
        // Reserved
        _reserved_2: u2,
        // Flash mass erase enable bit
        MER: u1,
        // Reserved
        _reserved_5: u25,
        // Option byte change error interrupt enable bit
        OPTCHANGEERRIE: u1,
        // Bank swapping configuration bit
        SWAP_BANK: u1,
    },
    // FLASH option status register
    OPTSR_CUR: packed struct(u32) {
        // Option byte change ongoing flag
        OPT_BUSY: u1,
        // Reserved
        _reserved_1: u1,
        // Brownout level option status bit
        BOR_LEV: u2,
        // IWDG1 control option status bit
        IWDG1_SW: u1,
        // Reserved
        _reserved_5: u1,
        // D1 DStop entry reset option status bit
        NRST_STOP_D1: u1,
        // D1 DStandby entry reset option status bit
        NRST_STBY_D1: u1,
        // Readout protection level option status byte
        RDP: u8,
        // Reserved
        _reserved_16: u1,
        // IWDG Stop mode freeze option status bit
        IWDG_FZ_STOP: u1,
        // IWDG Standby mode freeze option status bit
        IWDG_FZ_SDBY: u1,
        // DTCM RAM size option status
        ST_RAM_SIZE: u2,
        // Security enable option status bit
        SECURITY: u1,
        // Reserved
        _reserved_22: u7,
        // I/O high-speed at low-voltage status bit (PRODUCT_BELOW_25V)
        IO_HSLV: u1,
        // Option byte change error flag
        OPTCHANGEERR: u1,
        // Bank swapping option status bit
        SWAP_BANK_OPT: u1,
    },
    // FLASH option status register
    OPTSR_PRG: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // BOR reset level option configuration bits
        BOR_LEV: u2,
        // IWDG1 option configuration bit
        IWDG1_SW: u1,
        // Reserved
        _reserved_5: u1,
        // Option byte erase after D1 DStop option configuration bit
        NRST_STOP_D1: u1,
        // Option byte erase after D1 DStandby option configuration bit
        NRST_STBY_D1: u1,
        // Readout protection level option configuration byte
        RDP: u8,
        // Reserved
        _reserved_16: u1,
        // IWDG Stop mode freeze option configuration bit
        IWDG_FZ_STOP: u1,
        // IWDG Standby mode freeze option configuration bit
        IWDG_FZ_SDBY: u1,
        // DTCM size select option configuration bits
        ST_RAM_SIZE: u2,
        // Security option configuration bit
        SECURITY: u1,
        // Reserved
        _reserved_22: u7,
        // I/O high-speed at low-voltage (PRODUCT_BELOW_25V)
        IO_HSLV: u1,
        // Reserved
        _reserved_30: u1,
        // Bank swapping option configuration bit
        SWAP_BANK_OPT: u1,
    },
    // FLASH option clear control register
    OPTCCR: packed struct(u32) {
        // Reserved
        _reserved_0: u30,
        // OPTCHANGEERR reset bit
        CLR_OPTCHANGEERR: u1,
        // Reserved
        _reserved_31: u1,
    },
    // FLASH protection address for bank 1
    PRAR_CUR1: packed struct(u32) {
        // Bank 1 lowest PCROP protected address
        PROT_AREA_START1: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 1 highest PCROP protected address
        PROT_AREA_END1: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 1 PCROP protected erase enable option status bit
        DMEP1: u1,
    },
    // FLASH protection address for bank 1
    PRAR_PRG1: packed struct(u32) {
        // Bank 1 lowest PCROP protected address configuration
        PROT_AREA_START1: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 1 highest PCROP protected address configuration
        PROT_AREA_END1: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 1 PCROP protected erase enable option configuration bit
        DMEP1: u1,
    },
    // FLASH secure address for bank 1
    SCAR_CUR1: packed struct(u32) {
        // Bank 1 lowest secure protected address
        SEC_AREA_START1: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 1 highest secure protected address
        SEC_AREA_END1: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 1 secure protected erase enable option status bit
        DMES1: u1,
    },
    // FLASH secure address for bank 1
    SCAR_PRG1: packed struct(u32) {
        // Bank 1 lowest secure protected address configuration
        SEC_AREA_START1: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 1 highest secure protected address configuration
        SEC_AREA_END1: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 1 secure protected erase enable option configuration bit
        DMES1: u1,
    },
    // FLASH write sector protection for bank 1
    WPSN_CUR1R: packed struct(u32) {
        // Bank 1 sector write protection option status byte
        WRPSn1: u8,
        // Reserved
        _reserved_8: u24,
    },
    // FLASH write sector protection for bank 1
    WPSN_PRG1R: packed struct(u32) {
        // Bank 1 sector write protection configuration byte
        WRPSn1: u8,
        // Reserved
        _reserved_8: u24,
    },
    // FLASH register with boot address
    BOOT_CURR: packed struct(u32) {
        // Boot address 0
        BOOT_ADD0: u16,
        // Boot address 1
        BOOT_ADD1: u16,
    },
    // FLASH register with boot address
    BOOT_PRGR: packed struct(u32) {
        // Boot address 0
        BOOT_ADD0: u16,
        // Boot address 1
        BOOT_ADD1: u16,
    },
    // FLASH CRC control register for bank 1
    CRCCR1: packed struct(u32) {
        // Bank 1 CRC sector number
        CRC_SECT: u3,
        // Reserved
        _reserved_3: u4,
        // Bank 1 CRC select bit
        ALL_BANK: u1,
        // Bank 1 CRC sector mode select bit
        CRC_BY_SECT: u1,
        // Bank 1 CRC sector select bit
        ADD_SECT: u1,
        // Bank 1 CRC sector list clear bit
        CLEAN_SECT: u1,
        // Reserved
        _reserved_11: u5,
        // Bank 1 CRC start bit
        START_CRC: u1,
        // Bank 1 CRC clear bit
        CLEAN_CRC: u1,
        // Reserved
        _reserved_18: u2,
        // Bank 1 CRC burst size
        CRC_BURST: u2,
        // Reserved
        _reserved_22: u10,
    },
    // FLASH CRC start address register for bank 1
    CRCSADD1R: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // CRC start address on bank 1
        CRC_START_ADDR: u18,
        // Reserved
        _reserved_20: u12,
    },
    // FLASH CRC end address register for bank 1
    CRCEADD1R: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // CRC end address on bank 1
        CRC_END_ADDR: u18,
        // Reserved
        _reserved_20: u12,
    },
    // FLASH CRC data register
    CRCDATAR: packed struct(u32) {
        // CRC result
        CRC_DATA: u32,
    },
    // FLASH ECC fail address for bank 1
    ECC_FA1R: packed struct(u32) {
        // Bank 1 ECC error address
        FAIL_ECC_ADDR1: u15,
        // Reserved
        _reserved_15: u17,
    },
    // Access control register
    ACR_: packed struct(u32) {
        // Read latency
        LATENCY: u4,
        // Flash signal delay
        WRHIGHFREQ: u2,
        // Reserved
        _reserved_6: u26,
    },
    // FLASH key register for bank 2
    KEYR2: packed struct(u32) {
        // Bank 2 access configuration unlock key
        KEYR2: u32,
    },
    // FLASH option key register
    OPTKEYR_: packed struct(u32) {
        // Unlock key option bytes
        OPTKEYR: u32,
    },
    // FLASH control register for bank 2
    CR2: packed struct(u32) {
        // Bank 2 configuration lock bit
        LOCK2: u1,
        // Bank 2 program enable bit
        PG2: u1,
        // Bank 2 sector erase request
        SER2: u1,
        // Bank 2 erase request
        BER2: u1,
        // Bank 2 program size
        PSIZE2: u2,
        // Bank 2 write forcing control bit
        FW2: u1,
        // Bank 2 bank or sector erase start control bit
        START2: u1,
        // Bank 2 sector erase selection number
        SNB2: u3,
        // Reserved
        _reserved_11: u3,
        // Bank 2 special sector selection bit
        SPSS2: u1,
        // Bank 2 CRC control bit
        CRC_EN: u1,
        // Bank 2 end-of-program interrupt control bit
        EOPIE2: u1,
        // Bank 2 write protection error interrupt enable bit
        WRPERRIE2: u1,
        // Bank 2 programming sequence error interrupt enable bit
        PGSERRIE2: u1,
        // Bank 2 strobe error interrupt enable bit
        STRBERRIE2: u1,
        // Reserved
        _reserved_20: u1,
        // Bank 2 inconsistency error interrupt enable bit
        INCERRIE2: u1,
        // Bank 2 write/erase error interrupt enable bit
        OPERRIE2: u1,
        // Bank 2 read protection error interrupt enable bit
        RDPERRIE2: u1,
        // Bank 2 secure error interrupt enable bit
        RDSERRIE2: u1,
        // Bank 2 ECC single correction error interrupt enable bit
        SNECCERRIE2: u1,
        // Bank 2 ECC double detection error interrupt enable bit
        DBECCERRIE2: u1,
        // Bank 2 end of CRC calculation interrupt enable bit
        CRCENDIE2: u1,
        // Bank 2 CRC read error interrupt enable bit
        CRCRDERRIE2: u1,
        // Reserved
        _reserved_29: u3,
    },
    // FLASH status register for bank 2
    SR2: packed struct(u32) {
        // Bank 2 ongoing program flag
        BSY2: u1,
        // Bank 2 write buffer not empty flag
        WBNE2: u1,
        // Bank 2 wait queue flag
        QW2: u1,
        // Bank 2 CRC busy flag
        CRC_BUSY2: u1,
        // Reserved
        _reserved_4: u12,
        // Bank 2 end-of-program flag
        EOP2: u1,
        // Bank 2 write protection error flag
        WRPERR2: u1,
        // Bank 2 programming sequence error flag
        PGSERR2: u1,
        // Bank 2 strobe error flag
        STRBERR2: u1,
        // Reserved
        _reserved_20: u1,
        // Bank 2 inconsistency error flag
        INCERR2: u1,
        // Bank 2 write/erase error flag
        OPERR2: u1,
        // Bank 2 read protection error flag
        RDPERR2: u1,
        // Bank 2 secure error flag
        RDSERR2: u1,
        // Bank 2 single correction error flag
        SNECCERR2: u1,
        // Bank 2 ECC double detection error flag
        DBECCERR2: u1,
        // Bank 2 CRC-complete flag
        CRCEND2: u1,
        // Reserved
        _reserved_28: u4,
    },
    // FLASH clear control register for bank 2
    CCR2: packed struct(u32) {
        // Reserved
        _reserved_0: u16,
        // Bank 1 EOP1 flag clear bit
        CLR_EOP2: u1,
        // Bank 2 WRPERR1 flag clear bit
        CLR_WRPERR2: u1,
        // Bank 2 PGSERR1 flag clear bi
        CLR_PGSERR2: u1,
        // Bank 2 STRBERR1 flag clear bit
        CLR_STRBERR2: u1,
        // Reserved
        _reserved_20: u1,
        // Bank 2 INCERR1 flag clear bit
        CLR_INCERR2: u1,
        // Bank 2 OPERR1 flag clear bit
        CLR_OPERR2: u1,
        // Bank 2 RDPERR1 flag clear bit
        CLR_RDPERR2: u1,
        // Bank 1 RDSERR1 flag clear bit
        CLR_RDSERR1: u1,
        // Bank 2 SNECCERR1 flag clear bit
        CLR_SNECCERR2: u1,
        // Bank 1 DBECCERR1 flag clear bit
        CLR_DBECCERR1: u1,
        // Bank 2 CRCEND1 flag clear bit
        CLR_CRCEND2: u1,
        // Reserved
        _reserved_28: u4,
    },
    // FLASH option control register
    OPTCR_: packed struct(u32) {
        // FLASH_OPTCR lock option configuration bit
        OPTLOCK: u1,
        // Option byte start change option configuration bit
        OPTSTART: u1,
        // Reserved
        _reserved_2: u2,
        // Flash mass erase enable bit
        MER: u1,
        // Reserved
        _reserved_5: u25,
        // Option byte change error interrupt enable bit
        OPTCHANGEERRIE: u1,
        // Bank swapping configuration bit
        SWAP_BANK: u1,
    },
    // FLASH option status register
    OPTSR_CUR_: packed struct(u32) {
        // Option byte change ongoing flag
        OPT_BUSY: u1,
        // Reserved
        _reserved_1: u1,
        // Brownout level option status bit
        BOR_LEV: u2,
        // IWDG1 control option status bit
        IWDG1_SW: u1,
        // Reserved
        _reserved_5: u1,
        // D1 DStop entry reset option status bit
        NRST_STOP_D1: u1,
        // D1 DStandby entry reset option status bit
        NRST_STBY_D1: u1,
        // Readout protection level option status byte
        RDP: u8,
        // Reserved
        _reserved_16: u1,
        // IWDG Stop mode freeze option status bit
        IWDG_FZ_STOP: u1,
        // IWDG Standby mode freeze option status bit
        IWDG_FZ_SDBY: u1,
        // DTCM RAM size option status
        ST_RAM_SIZE: u2,
        // Security enable option status bit
        SECURITY: u1,
        // Reserved
        _reserved_22: u7,
        // I/O high-speed at low-voltage status bit (PRODUCT_BELOW_25V)
        IO_HSLV: u1,
        // Option byte change error flag
        OPTCHANGEERR: u1,
        // Bank swapping option status bit
        SWAP_BANK_OPT: u1,
    },
    // FLASH option status register
    OPTSR_PRG_: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // BOR reset level option configuration bits
        BOR_LEV: u2,
        // IWDG1 option configuration bit
        IWDG1_SW: u1,
        // Reserved
        _reserved_5: u1,
        // Option byte erase after D1 DStop option configuration bit
        nRST_STOP: u1,
        // Option byte erase after D1 DStandby option configuration bit
        nRST_STDY: u1,
        // Readout protection level option configuration byte
        RDP: u8,
        // Reserved
        _reserved_16: u1,
        // IWDG Stop mode freeze option configuration bit
        FZ_IWDG_STOP: u1,
        // IWDG Standby mode freeze option configuration bit
        FZ_IWDG_SDBY: u1,
        // DTCM size select option configuration bits
        ST_RAM_SIZE: u2,
        // Security option configuration bit
        SECURITY: u1,
        // Reserved
        _reserved_22: u7,
        // I/O high-speed at low-voltage (PRODUCT_BELOW_25V)
        IO_HSLV: u1,
        // Reserved
        _reserved_30: u1,
        // Bank swapping option configuration bit
        SWAP_BANK_OPT: u1,
    },
    // FLASH option clear control register
    OPTCCR_: packed struct(u32) {
        // Reserved
        _reserved_0: u30,
        // OPTCHANGEERR reset bit
        CLR_OPTCHANGEERR: u1,
        // Reserved
        _reserved_31: u1,
    },
    // FLASH protection address for bank 1
    PRAR_CUR2: packed struct(u32) {
        // Bank 2 lowest PCROP protected address
        PROT_AREA_START2: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 2 highest PCROP protected address
        PROT_AREA_END2: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 2 PCROP protected erase enable option status bit
        DMEP2: u1,
    },
    // FLASH protection address for bank 2
    PRAR_PRG2: packed struct(u32) {
        // Bank 2 lowest PCROP protected address configuration
        PROT_AREA_START2: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 2 highest PCROP protected address configuration
        PROT_AREA_END2: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 2 PCROP protected erase enable option configuration bit
        DMEP2: u1,
    },
    // FLASH secure address for bank 2
    SCAR_CUR2: packed struct(u32) {
        // Bank 2 lowest secure protected address
        SEC_AREA_START2: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 2 highest secure protected address
        SEC_AREA_END2: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 2 secure protected erase enable option status bit
        DMES2: u1,
    },
    // FLASH secure address for bank 2
    SCAR_PRG2: packed struct(u32) {
        // Bank 2 lowest secure protected address configuration
        SEC_AREA_START2: u12,
        // Reserved
        _reserved_12: u4,
        // Bank 2 highest secure protected address configuration
        SEC_AREA_END2: u12,
        // Reserved
        _reserved_28: u3,
        // Bank 2 secure protected erase enable option configuration bit
        DMES2: u1,
    },
    // FLASH write sector protection for bank 2
    WPSN_CUR2R: packed struct(u32) {
        // Bank 2 sector write protection option status byte
        WRPSn2: u8,
        // Reserved
        _reserved_8: u24,
    },
    // FLASH write sector protection for bank 2
    WPSN_PRG2R: packed struct(u32) {
        // Bank 2 sector write protection configuration byte
        WRPSn2: u8,
        // Reserved
        _reserved_8: u24,
    },
    // FLASH register with boot address
    BOOT_CURR_: packed struct(u32) {
        // Boot address 0
        BOOT_ADD0: u16,
        // Boot address 1
        BOOT_ADD1: u16,
    },
    // FLASH register with boot address
    BOOT_PRGR_: packed struct(u32) {
        // Boot address 0
        BOOT_ADD0: u16,
        // Boot address 1
        BOOT_ADD1: u16,
    },
    // FLASH CRC control register for bank 1
    CRCCR2: packed struct(u32) {
        // Bank 2 CRC sector number
        CRC_SECT: u3,
        // Reserved
        _reserved_3: u4,
        // Bank 2 CRC select bit
        ALL_BANK: u1,
        // Bank 2 CRC sector mode select bit
        CRC_BY_SECT: u1,
        // Bank 2 CRC sector select bit
        ADD_SECT: u1,
        // Bank 2 CRC sector list clear bit
        CLEAN_SECT: u1,
        // Reserved
        _reserved_11: u5,
        // Bank 2 CRC start bit
        START_CRC: u1,
        // Bank 2 CRC clear bit
        CLEAN_CRC: u1,
        // Reserved
        _reserved_18: u2,
        // Bank 2 CRC burst size
        CRC_BURST: u2,
        // Reserved
        _reserved_22: u10,
    },
    // FLASH CRC start address register for bank 2
    CRCSADD2R: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // CRC start address on bank 2
        CRC_START_ADDR: u18,
        // Reserved
        _reserved_20: u12,
    },
    // FLASH CRC end address register for bank 2
    CRCEADD2R: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // CRC end address on bank 2
        CRC_END_ADDR: u18,
        // Reserved
        _reserved_20: u12,
    },
    // FLASH CRC data register
    CRCDATAR_: packed struct(u32) {
        // CRC result
        CRC_DATA: u32,
    },
    // FLASH ECC fail address for bank 2
    ECC_FA2R: packed struct(u32) {
        // Bank 2 ECC error address
        FAIL_ECC_ADDR2: u15,
        // Reserved
        _reserved_15: u17,
    },
};

pub const Flash_BASE_ADDRESS: usize = 0x52002000;
pub const Flash_REGISTERS: *volatile Flash = @ptrFromInt(Flash_BASE_ADDRESS);
