// Operational amplifiers
pub const OPAMP = struct {
    // OPAMP1 control/status register
    OPAMP1_CSR: packed struct(u32) {
        // Operational amplifier Enable
        OPAEN: u1,
        // Force internal reference on VP (reserved for test
        FORCE_VP: u1,
        // Operational amplifier PGA mode
        VP_SEL: u2,
        // Reserved
        _reserved_4: u1,
        // Inverting input selection
        VM_SEL: u2,
        // Reserved
        _reserved_7: u1,
        // Operational amplifier high-speed mode
        OPAHSM: u1,
        // Reserved
        _reserved_9: u2,
        // Calibration mode enabled
        CALON: u1,
        // Calibration selection
        CALSEL: u2,
        // allows to switch from AOP offset trimmed values to AOP offset
        PGA_GAIN: u4,
        // User trimming enable
        USERTRIM: u1,
        // Reserved
        _reserved_19: u10,
        // OPAMP calibration reference voltage output control (reserved for test)
        TSTREF: u1,
        // Operational amplifier calibration output
        CALOUT: u1,
        // Reserved
        _reserved_31: u1,
    },
    // OPAMP1 offset trimming register in normal mode
    OPAMP1_OTR: packed struct(u32) {
        // Trim for NMOS differential pairs
        TRIMOFFSETN: u5,
        // Reserved
        _reserved_5: u3,
        // Trim for PMOS differential pairs
        TRIMOFFSETP: u5,
        // Reserved
        _reserved_13: u19,
    },
    // OPAMP1 offset trimming register in low-power mode
    OPAMP1_HSOTR: packed struct(u32) {
        // Trim for NMOS differential pairs
        TRIMLPOFFSETN: u5,
        // Reserved
        _reserved_5: u3,
        // Trim for PMOS differential pairs
        TRIMLPOFFSETP: u5,
        // Reserved
        _reserved_13: u19,
    },
    // OPAMP2 control/status register
    OPAMP2_CSR: packed struct(u32) {
        // Operational amplifier Enable
        OPAEN: u1,
        // Force internal reference on VP (reserved for test)
        FORCE_VP: u1,
        // Reserved
        _reserved_2: u3,
        // Inverting input selection
        VM_SEL: u2,
        // Reserved
        _reserved_7: u1,
        // Operational amplifier high-speed mode
        OPAHSM: u1,
        // Reserved
        _reserved_9: u2,
        // Calibration mode enabled
        CALON: u1,
        // Calibration selection
        CALSEL: u2,
        // Operational amplifier Programmable amplifier gain value
        PGA_GAIN: u4,
        // User trimming enable
        USERTRIM: u1,
        // Reserved
        _reserved_19: u10,
        // OPAMP calibration reference voltage output control (reserved for test)
        TSTREF: u1,
        // Operational amplifier calibration output
        CALOUT: u1,
        // Reserved
        _reserved_31: u1,
    },
    // OPAMP2 offset trimming register in normal mode
    OPAMP2_OTR: packed struct(u32) {
        // Trim for NMOS differential pairs
        TRIMOFFSETN: u5,
        // Reserved
        _reserved_5: u3,
        // Trim for PMOS differential pairs
        TRIMOFFSETP: u5,
        // Reserved
        _reserved_13: u19,
    },
    // OPAMP2 offset trimming register in low-power mode
    OPAMP2_HSOTR: packed struct(u32) {
        // Trim for NMOS differential pairs
        TRIMLPOFFSETN: u5,
        // Reserved
        _reserved_5: u3,
        // Trim for PMOS differential pairs
        TRIMLPOFFSETP: u5,
        // Reserved
        _reserved_13: u19,
    },
};

pub const OPAMP_BASE_ADDRESS: usize = 0x40009000;
pub const OPAMP_REGISTERS: *volatile OPAMP = @ptrFromInt(OPAMP_BASE_ADDRESS);
