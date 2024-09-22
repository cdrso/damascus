
pub const I2C4 = struct {
};

pub const I2C4_BASE_ADDRESS: usize = 0x58001C00;
pub const I2C4_REGISTERS: *volatile I2C4 = @ptrFromInt(I2C4_BASE_ADDRESS);
