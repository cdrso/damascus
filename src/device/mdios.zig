// Management data input/output slave
pub const MDIOS = struct {
    // MDIOS configuration register
    CR: packed struct(u32) {
        // Peripheral enable
        EN: u1,
        // Register write interrupt enable
        WRIE: u1,
        // Register Read Interrupt Enable
        RDIE: u1,
        // Error interrupt enable
        EIE: u1,
        // Reserved
        _reserved_4: u3,
        // Disable Preamble Check
        DPC: u1,
        // Slaves's address
        PORT_ADDRESS: u5,
        // Reserved
        _reserved_13: u19,
    },
    // MDIOS write flag register
    WRFR: packed struct(u32) {
        // Write flags for MDIO registers 0 to 31
        WRF: u32,
    },
    // MDIOS clear write flag register
    CWRFR: packed struct(u32) {
        // Clear the write flag
        CWRF: u32,
    },
    // MDIOS read flag register
    RDFR: packed struct(u32) {
        // Read flags for MDIO registers 0 to 31
        RDF: u32,
    },
    // MDIOS clear read flag register
    CRDFR: packed struct(u32) {
        // Clear the read flag
        CRDF: u32,
    },
    // MDIOS status register
    SR: packed struct(u32) {
        // Preamble error flag
        PERF: u1,
        // Start error flag
        SERF: u1,
        // Turnaround error flag
        TERF: u1,
        // Reserved
        _reserved_3: u29,
    },
    // MDIOS clear flag register
    CLRFR: packed struct(u32) {
        // Clear the preamble error flag
        CPERF: u1,
        // Clear the start error flag
        CSERF: u1,
        // Clear the turnaround error flag
        CTERF: u1,
        // Reserved
        _reserved_3: u29,
    },
    // MDIOS input data register 0
    DINR0: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN0: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 1
    DINR1: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN1: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 2
    DINR2: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN2: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 3
    DINR3: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN3: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 4
    DINR4: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN4: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 5
    DINR5: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN5: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 6
    DINR6: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN6: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 7
    DINR7: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN7: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 8
    DINR8: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN8: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 9
    DINR9: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN9: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 10
    DINR10: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN10: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 11
    DINR11: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN11: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 12
    DINR12: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN12: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 13
    DINR13: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN13: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 14
    DINR14: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN14: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 15
    DINR15: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN15: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 16
    DINR16: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN16: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 17
    DINR17: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN17: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 18
    DINR18: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN18: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 19
    DINR19: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN19: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 20
    DINR20: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN20: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 21
    DINR21: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN21: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 22
    DINR22: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN22: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 23
    DINR23: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN23: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 24
    DINR24: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN24: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 25
    DINR25: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN25: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 26
    DINR26: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN26: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 27
    DINR27: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN27: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 28
    DINR28: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN28: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 29
    DINR29: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN29: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 30
    DINR30: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN30: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS input data register 31
    DINR31: packed struct(u32) {
        // Input data received from MDIO Master during write frames
        DIN31: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 0
    DOUTR0: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT0: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 1
    DOUTR1: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT1: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 2
    DOUTR2: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT2: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 3
    DOUTR3: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT3: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 4
    DOUTR4: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT4: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 5
    DOUTR5: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT5: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 6
    DOUTR6: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT6: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 7
    DOUTR7: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT7: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 8
    DOUTR8: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT8: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 9
    DOUTR9: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT9: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 10
    DOUTR10: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT10: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 11
    DOUTR11: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT11: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 12
    DOUTR12: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT12: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 13
    DOUTR13: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT13: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 14
    DOUTR14: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT14: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 15
    DOUTR15: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT15: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 16
    DOUTR16: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT16: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 17
    DOUTR17: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT17: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 18
    DOUTR18: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT18: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 19
    DOUTR19: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT19: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 20
    DOUTR20: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT20: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 21
    DOUTR21: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT21: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 22
    DOUTR22: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT22: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 23
    DOUTR23: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT23: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 24
    DOUTR24: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT24: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 25
    DOUTR25: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT25: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 26
    DOUTR26: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT26: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 27
    DOUTR27: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT27: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 28
    DOUTR28: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT28: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 29
    DOUTR29: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT29: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 30
    DOUTR30: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT30: u16,
        // Reserved
        _reserved_16: u16,
    },
    // MDIOS output data register 31
    DOUTR31: packed struct(u32) {
        // Output data sent to MDIO Master during read frames
        DOUT31: u16,
        // Reserved
        _reserved_16: u16,
    },
};

pub const MDIOS_BASE_ADDRESS: usize = 0x40009400;
pub const MDIOS_REGISTERS: *volatile MDIOS = @ptrFromInt(MDIOS_BASE_ADDRESS);
