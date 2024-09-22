
pub const TIM13 = struct {
};

pub const TIM13_BASE_ADDRESS: usize = 0x40001C00;
pub const TIM13_REGISTERS: *volatile TIM13 = @ptrFromInt(TIM13_BASE_ADDRESS);
