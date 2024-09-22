
pub const I2C3 = struct {
};

pub const I2C3_BASE_ADDRESS: usize = 0x40005C00;
pub const I2C3_REGISTERS: *volatile I2C3 = @ptrFromInt(I2C3_BASE_ADDRESS);
