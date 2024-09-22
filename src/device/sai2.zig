
pub const SAI2 = struct {
};

pub const SAI2_BASE_ADDRESS: usize = 0x40015C00;
pub const SAI2_REGISTERS: *volatile SAI2 = @ptrFromInt(SAI2_BASE_ADDRESS);
