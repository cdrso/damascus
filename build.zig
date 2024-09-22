const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = std.Target.Query{
        .cpu_arch = .thumb,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.cortex_m7 },
        .os_tag = .freestanding,
        .abi = .eabi,
    };

    const optimize = b.standardOptimizeOption(.{});

    // Create the executable
    const exe = b.addExecutable(.{
        .name = "firmware.elf",
        .root_source_file = b.path("src/boot/boot.zig"),
        .target = b.resolveTargetQuery(target),
        .optimize = optimize,
    });

    // CMSIS module
    const device_module = b.addModule("device", .{
        .root_source_file = b.path("src/device/stm32h753.zig"),
    });

    // Add CMSIS module
    exe.root_module.addImport("device", device_module);

    // main() is an exported symbol, not an import
    const application = b.addObject(.{
        .name = "app.o",
        .root_source_file = b.path("src/app/main.zig"),
        .target = b.resolveTargetQuery(target),
        .optimize = optimize,
    });

    // Add application program
    exe.addObject(application);

    // Add vector table
    exe.addAssemblyFile(b.path("src/boot/vector_table.s"));

    // Set the entry point
    exe.entry = .{ .symbol_name = "Reset_Handler" };

    // Set the linker script
    exe.setLinkerScriptPath(b.path("linker/linker.ld"));

    // Install artifacts
    b.installArtifact(exe);
}
