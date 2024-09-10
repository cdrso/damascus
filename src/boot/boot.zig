extern const _data_loadaddr: u8;
extern const _sdata: u8;
extern const _edata: u8;
extern const _sbss: u8;
extern const _ebss: u8;

extern fn main() void;

export fn Reset_Handler() noreturn {
    // Copy data from flash to RAM
    const data_loadaddr: [*]const u8 = @ptrCast(&_data_loadaddr);
    const data: [*]u8 = @ptrCast(@constCast(&_sdata));
    const data_size = @intFromPtr(&_edata) - @intFromPtr(&_sdata);
    for (data_loadaddr[0..data_size], 0..) |d, i| data[i] = d;

    // Clear the bss
    const bss: [*]u8 = @ptrCast(@constCast(&_sbss));
    const bss_size = @intFromPtr(&_ebss) - @intFromPtr(&_sbss);
    for (bss[0..bss_size]) |*b| b.* = 0;

    main();

    while (true) {}

    unreachable;
}

export fn Default_Handler() void {
    while (true) {}
}
