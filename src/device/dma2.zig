
pub const DMA2 = struct {
};

pub const DMA2_BASE_ADDRESS: usize = 0x40020400;
pub const DMA2_REGISTERS: *volatile DMA2 = @ptrFromInt(DMA2_BASE_ADDRESS);
