
pub const TIM14 = struct {
};

pub const TIM14_BASE_ADDRESS: usize = 0x40002000;
pub const TIM14_REGISTERS: *volatile TIM14 = @ptrFromInt(TIM14_BASE_ADDRESS);
