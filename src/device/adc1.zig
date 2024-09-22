
pub const ADC1 = struct {
};

pub const ADC1_BASE_ADDRESS: usize = 0x40022000;
pub const ADC1_REGISTERS: *volatile ADC1 = @ptrFromInt(ADC1_BASE_ADDRESS);
