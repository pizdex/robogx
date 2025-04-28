import re

def convert_map_to_ghidra(input_file, output_file):
    symbol_pattern = re.compile(r'^\s+(0x[0-9a-fA-F]+)\s+([^\s]+)\s*=\s*\.')
    func_pattern = re.compile(r'^\s+(0x[0-9a-fA-F]+)\s+([^\s]+)\s*$')
    
    with open(input_file, 'r', encoding='utf-8') as infile, \
         open(output_file, 'w', encoding='utf-8') as outfile:
        
        for line in infile:
            symbol_match = symbol_pattern.match(line)
            func_match = func_pattern.match(line)
            
            if symbol_match:
                address, symbol = symbol_match.groups()
                outfile.write(f"{symbol} {address}\n")
            elif func_match:
                address, symbol = func_match.groups()
                if not symbol.startswith('0x'):
                    outfile.write(f"{symbol} {address}\n")

if __name__ == "__main__":
    input_map = "robogx.map"
    output_sym = "robogx.sym"
    
    convert_map_to_ghidra(input_map, output_sym)
    print(f"Converted {input_map} to Ghidra .sym format in {output_sym}")