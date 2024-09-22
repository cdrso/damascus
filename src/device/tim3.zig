
pub const TIM3 = struct {
};

pub const TIM3_BASE_ADDRESS: usize = 0x40000400;
pub const TIM3_REGISTERS: *volatile TIM3 = @ptrFromInt(TIM3_BASE_ADDRESS);
