
pub const SAI3 = struct {
};

pub const SAI3_BASE_ADDRESS: usize = 0x40016000;
pub const SAI3_REGISTERS: *volatile SAI3 = @ptrFromInt(SAI3_BASE_ADDRESS);
