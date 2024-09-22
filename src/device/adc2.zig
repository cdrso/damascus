
pub const ADC2 = struct {
};

pub const ADC2_BASE_ADDRESS: usize = 0x40022100;
pub const ADC2_REGISTERS: *volatile ADC2 = @ptrFromInt(ADC2_BASE_ADDRESS);
