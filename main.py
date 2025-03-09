import re
import csv
import os
import subprocess

def extract_wp_posts_to_csv(sql_file_path, output_csv_path):
    """
    Extract wp_posts data from SQL file and write to CSV
    
    Args:
        sql_file_path: Path to the SQL dump file
        output_csv_path: Path to save the output CSV file
    """
    # Read the SQL file
    print(f"Reading SQL file: {sql_file_path}")
    with open(sql_file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find the wp_posts INSERT block
    pattern = r"INSERT INTO `wp_posts` VALUES\s*\n(.*?);\s*\n"
    match = re.search(pattern, content, re.DOTALL)
    
    if not match:
        print("ERROR: Could not find wp_posts INSERT block in the SQL file")
        return
    
    # Extract the values block
    values_block = match.group(1)
    
    # Split the rows using regex pattern for SQL row format
    # This pattern looks for '),(' which separates rows in SQL INSERT statements
    rows_data = re.split(r'\),\s*\(', values_block)
    
    # Process the first row (remove leading parenthesis)
    if rows_data:
        rows_data[0] = rows_data[0].lstrip('(')
    
    # Process the last row (remove trailing parenthesis)
    if rows_data:
        rows_data[-1] = rows_data[-1].rstrip(')')
    
    parsed_rows = []
    for row in rows_data:
        # Parse the individual fields in the row
        fields = []
        inside_quotes = False
        current_field = ""
        
        for char in row:
            # Handle quote characters
            if char == "'" and (len(current_field) == 0 or current_field[-1] != '\\'):
                inside_quotes = not inside_quotes
                current_field += char
            # Handle field separators (commas)
            elif char == ',' and not inside_quotes:
                # Add the completed field to our list
                fields.append(current_field.strip("'"))
                current_field = ""
            else:
                current_field += char
        
        # Don't forget to add the last field
        if current_field:
            fields.append(current_field.strip("'"))
            
        parsed_rows.append(fields)
    
    # Determine column headers
    if not parsed_rows:
        print("ERROR: No rows found in the INSERT block")
        return
    
    num_columns = len(parsed_rows[0])
    headers = [f"column_{i+1}" for i in range(num_columns)]
    
    # Write to CSV
    print(f"Writing data to CSV: {output_csv_path}")
    with open(output_csv_path, 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(headers)
        writer.writerows(parsed_rows)
    
    print(f"Successfully extracted {len(parsed_rows)} rows to {output_csv_path}")

    # Run clean_csv.py
    print("Running clean_csv.py")
    subprocess.run(["python", "clean_csv.py"])

if __name__ == "__main__":
    # File paths
    sql_file_path = "database.sql"  # Assuming in the same directory
    output_csv_path = "wp_posts_recovered.csv"
    
    # Check if SQL file exists
    if not os.path.exists(sql_file_path):
        print(f"ERROR: SQL file '{sql_file_path}' not found")
    else:
        extract_wp_posts_to_csv(sql_file_path, output_csv_path)
