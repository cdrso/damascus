
pub const TIM8 = struct {
};

pub const TIM8_BASE_ADDRESS: usize = 0x40010400;
pub const TIM8_REGISTERS: *volatile TIM8 = @ptrFromInt(TIM8_BASE_ADDRESS);
