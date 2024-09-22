
pub const SAI1 = struct {
};

pub const SAI1_BASE_ADDRESS: usize = 0x40015800;
pub const SAI1_REGISTERS: *volatile SAI1 = @ptrFromInt(SAI1_BASE_ADDRESS);
