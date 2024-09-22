
pub const TIM5 = struct {
};

pub const TIM5_BASE_ADDRESS: usize = 0x40000C00;
pub const TIM5_REGISTERS: *volatile TIM5 = @ptrFromInt(TIM5_BASE_ADDRESS);
