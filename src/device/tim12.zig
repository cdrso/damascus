
pub const TIM12 = struct {
};

pub const TIM12_BASE_ADDRESS: usize = 0x40001800;
pub const TIM12_REGISTERS: *volatile TIM12 = @ptrFromInt(TIM12_BASE_ADDRESS);
