
pub const TIM7 = struct {
};

pub const TIM7_BASE_ADDRESS: usize = 0x40001400;
pub const TIM7_REGISTERS: *volatile TIM7 = @ptrFromInt(TIM7_BASE_ADDRESS);
