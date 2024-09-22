import xml.etree.ElementTree as ET
import os

def parse_svd(svd_file):
    tree = ET.parse(svd_file)
    root = tree.getroot()

    device_name = root.find("name").text
    device_version = root.find("version").text
    device_description = root.find("description").text

    peripherals = []
    for peripheral in root.findall(".//peripheral"):
        name = peripheral.find("name").text
        description = peripheral.find("description").text if peripheral.find("description") is not None else ""
        base_address = peripheral.find("baseAddress").text

        registers = []
        for register in peripheral.findall(".//register"):
            reg_name = register.find("name").text
            reg_description = register.find("description").text if register.find("description") is not None else ""
            reg_offset = register.find("addressOffset").text
            reg_size = register.find("size").text if register.find("size") is not None else "32"
            reg_access = register.find("access").text if register.find("access") is not None else "read-write"
            reg_reset_value = register.find("resetValue").text if register.find("resetValue") is not None else "0x00000000"

            fields = []
            for field in register.findall(".//field"):
                field_name = field.find("name").text
                field_description = field.find("description").text if field.find("description") is not None else ""
                field_offset = int(field.find("bitOffset").text)
                field_width = int(field.find("bitWidth").text)

                fields.append({
                    "name": field_name,
                    "description": field_description,
                    "offset": field_offset,
                    "width": field_width
                })

            # Sort fields by bit offset
            fields.sort(key=lambda x: x["offset"])

            registers.append({
                "name": reg_name,
                "description": reg_description,
                "offset": reg_offset,
                "size": reg_size,
                "access": reg_access,
                "resetValue": reg_reset_value,
                "fields": fields
            })

        peripherals.append({
            "name": name,
            "description": description,
            "baseAddress": base_address,
            "registers": registers
        })

    return device_name, device_version, device_description, peripherals

def format_comment(comment, indent):
    if comment:
        lines = [line.strip() for line in comment.split('\n') if line.strip()]
        if len(lines) == 1 or (len(lines) == 2 and len(lines[0]) + len(lines[1]) < 80):
            return f"{indent}// {' '.join(lines)}"
        else:
            return '\n'.join(f"{indent}// {line}" for line in lines)
    return ""

def generate_peripheral(peripheral):
    zig_code = format_comment(peripheral['description'], "") + "\n"
    zig_code += f"pub const {peripheral['name']} = struct {{\n"

    for register in peripheral['registers']:
        zig_code += format_comment(register['description'], "    ") + "\n"
        register_size = int(register['size'], 0)
        zig_code += f"    {register['name']}: packed struct(u{register_size}) {{\n"

        current_offset = 0
        for field in register['fields']:
            if field['offset'] > current_offset:
                padding_bits = field['offset'] - current_offset
                zig_code += f"        // Reserved\n"
                zig_code += f"        _reserved_{current_offset}: u{padding_bits},\n"

            zig_code += format_comment(field['description'], "        ") + "\n"
            zig_code += f"        {field['name']}: u{field['width']},\n"

            current_offset = field['offset'] + field['width']

        if current_offset < register_size:
            padding_bits = register_size - current_offset
            zig_code += f"        // Reserved\n"
            zig_code += f"        _reserved_{current_offset}: u{padding_bits},\n"

        zig_code += f"    }},\n"

    zig_code += f"}};\n\n"
    zig_code += f"pub const {peripheral['name']}_BASE_ADDRESS: usize = 0x{peripheral['baseAddress'][2:]};\n"
    zig_code += f"pub const {peripheral['name']}_REGISTERS: *volatile {peripheral['name']} = @ptrFromInt({peripheral['name']}_BASE_ADDRESS);\n"

    return zig_code

def generate_files(device_name, device_version, device_description, peripherals, output_dir):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Generate main file
    main_file = os.path.join(output_dir, "stm32h753.zig")
    with open(main_file, 'w') as f:
        f.write(f"// Device: {device_name}\n")
        f.write(f"// Version: {device_version}\n")
        f.write(f"// Description: {device_description}\n\n")

        for peripheral in peripherals:
            f.write(f"pub const {peripheral['name']} = @import(\"{peripheral['name'].lower()}.zig\");\n")

    # Generate peripheral files
    for peripheral in peripherals:
        filename = f"{peripheral['name'].lower()}.zig"
        filepath = os.path.join(output_dir, filename)

        with open(filepath, 'w') as f:
            f.write(generate_peripheral(peripheral))


svd_file = "./STM32H753.svd"
# Generate files in src/device
output_dir = "../"

device_name, device_version, device_description, peripherals = parse_svd(svd_file)
generate_files(device_name, device_version, device_description, peripherals, output_dir)

print(f"zig device files have been generated succesfully.")
