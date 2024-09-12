extern const _flash_sdata: u8;
extern var _sdata: u8;
extern const _edata: u8;
extern var _sbss: u8;
extern const _ebss: u8;

extern fn main() void;

export fn Reset_Handler() noreturn {
    // Copy program data from flash to RAM
    const flash_data: [*]const u8 = @ptrCast(&_flash_sdata);
    const data: [*]u8 = @ptrCast(&_sdata);
    const data_size = @intFromPtr(&_edata) - @intFromPtr(&_sdata);
    @memcpy(data[0..data_size], flash_data[0..data_size]);

    // Clear bss
    const bss: [*]u8 = @ptrCast(&_sbss);
    const bss_size = @intFromPtr(&_ebss) - @intFromPtr(&_sbss);
    @memset(bss[0..bss_size], 0);

    main();

    // main should not return, in case it does capture in infinite loop
    while (true) {}

    unreachable;
}

export fn Default_Handler() void {
    while (true) {}
}
