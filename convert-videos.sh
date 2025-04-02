#!/bin/bash

# Get the script's directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$SCRIPT_DIR" || exit 1

# Define output folder
OUTPUT_DIR="$SCRIPT_DIR/FF_output"
mkdir -p "$OUTPUT_DIR"

echo "Looking for MP4 files in: $SCRIPT_DIR"
echo "Output folder: $OUTPUT_DIR"

# Initialize counters
converted=0
skipped=0

# Process each MP4 file
for file in *.mp4; do
    # Skip if the file starts with FF_ (already converted)
    [[ "$file" == FF_* ]] && continue

    output="$OUTPUT_DIR/FF_$file"

    # Check if output file already exists and is valid
    if [[ -f "$output" ]]; then
        echo "✓ Already exists: $output"
        ((skipped++))
        continue
    fi

    echo "Converting: $file → $output"

    # Convert with error handling
    if ffmpeg -i "$file" -c:v libx264rgb -preset fast -crf 18 "$output" 2> /dev/null; then
        echo "✅ Success: $output"
        ((converted++))
    else
        echo "❌ Failed: $file"
        # Remove failed output file if created
        [[ -f "$output" ]] && rm "$output"
    fi
done

# Summary report
echo ""
echo "=== Conversion Summary ==="
echo "• Successfully converted: $converted file(s)"
echo "• Skipped (already exists): $skipped file(s)"
echo "• Output location: $OUTPUT_DIR"
