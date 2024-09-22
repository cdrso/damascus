
pub const I2C2 = struct {
};

pub const I2C2_BASE_ADDRESS: usize = 0x40005800;
pub const I2C2_REGISTERS: *volatile I2C2 = @ptrFromInt(I2C2_BASE_ADDRESS);
