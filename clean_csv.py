import csv
import re

def clean_content(content):
    # Remove all WordPress comment blocks (including self-closing ones)
    content = re.sub(r'<!-- wp:[^>]*?(/)?-->', '', content)
    content = re.sub(r'<!-- /wp:[^>]* -->', '', content)
    
    # Remove literal \n sequences in the text
    content = re.sub(r'\\n+', '', content)
    
    # Remove attributes from HTML tags but preserve and transform src attribute
    def preserve_src(match):
        tag = match.group(1)
        attrs = match.group(0)  # The whole match including all attributes
        
        # Try to find src attribute
        src_match = re.search(r'src=\\?"?[\'"]?([^"\'>]+)[\'"]?\\?"?', attrs)
        if src_match:
            src_url = src_match.group(1)
            
            # Transform URL to simplified format
            if '/wp-content/uploads/' in src_url:
                # Extract the uploads part from the URL
                pattern = r'.+/wp-content/uploads/(.+)'
                path_match = re.search(pattern, src_url)
                if path_match:
                    new_src = f'/uploads/{path_match.group(1)}'
                else:
                    new_src = src_url
            else:
                new_src = src_url
                
            return f'<{tag} src="{new_src}">'
        else:
            return f'<{tag}>'
    
    content = re.sub(r'<(\w+)[^>]*>', preserve_src, content)
    
    return content

def clean_csv(input_filepath, output_filepath):
    with open(input_filepath, mode='r', encoding='utf-8') as infile, \
         open(output_filepath, mode='w', encoding='utf-8', newline='') as outfile:
        
        reader = csv.reader(infile)
        writer = csv.writer(outfile)
        
        # Write header
        header = next(reader)
        writer.writerow(header)
        
        # Process each row
        for row in reader:
            # Clean content in all columns
            for i in range(len(row)):
                if isinstance(row[i], str):  # Ensure the column contains a string
                    row[i] = clean_content(row[i])
            writer.writerow(row)

if __name__ == "__main__":
    input_filepath = 'wp_posts_recovered.csv'
    output_filepath = 'wp_posts_cleaned.csv'
    clean_csv(input_filepath, output_filepath)
