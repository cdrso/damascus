
pub const ADC12_Common = struct {
};

pub const ADC12_Common_BASE_ADDRESS: usize = 0x40022300;
pub const ADC12_Common_REGISTERS: *volatile ADC12_Common = @ptrFromInt(ADC12_Common_BASE_ADDRESS);
