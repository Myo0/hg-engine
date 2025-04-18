def filter_and_write_check_messages(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as infile:
        lines = infile.readlines()

    check_messages = [line.strip() for line in lines if "✓" in line]

    with open(output_file, 'w', encoding='utf-8') as outfile:
        for message in check_messages:
            outfile.write(message + "\n")

input_filename = 'encounterable mons.txt'
output_filename = 'isolated encounterable mons.txt'

filter_and_write_check_messages(input_filename, output_filename)
