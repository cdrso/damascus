
pub const TIM4 = struct {
};

pub const TIM4_BASE_ADDRESS: usize = 0x40000800;
pub const TIM4_REGISTERS: *volatile TIM4 = @ptrFromInt(TIM4_BASE_ADDRESS);
