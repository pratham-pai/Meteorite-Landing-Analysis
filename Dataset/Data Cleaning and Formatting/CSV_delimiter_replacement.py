import csv

# Define input and output file paths
input_file = "C:\\Users\\prath\\Desktop\\Projects\\Meteorite-Landings\\CSV\\Meteorite_Landings_input.csv"
output_file = "C:\\Users\\prath\\Desktop\\Projects\\Meteorite-Landings\\CSV\\output.csv"

# Define the field delimiter for input and output CSV files
input_delimiter = ','
output_delimiter = ';'

# Open input and output CSV files
with open(input_file, 'r', newline='', encoding='utf-8') as infile, \
     open(output_file, 'w', newline='', encoding='utf-8') as outfile:

    # Read the content of the input file
    content = infile.read()

    # Infer the dialect of the CSV file
    dialect = csv.Sniffer().sniff(content)

    # Reset the file pointer to the beginning of the file
    infile.seek(0)

    # Create CSV reader and writer objects
    reader = csv.reader(infile, dialect)
    writer = csv.writer(outfile, delimiter=output_delimiter)

    # Iterate through each row in the input CSV file
    for row in reader:
        # Write the modified row to the output CSV file
        writer.writerow(row)

print("Field separators changed successfully.")
