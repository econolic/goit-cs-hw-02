#!/bin/bash

# Website availability checker script
# Checks websites and logs results to website_status.log

# Array of websites to check
websites=(
    "https://google.com"
    "https://facebook.com" 
    "https://twitter.com"
)

# Log file name
log_file="website_status.log"

# Clear previous log
> "$log_file"

# Add timestamp
echo "Website Status Check - $(date)" > "$log_file"

# Loop through each website in the array
for website in "${websites[@]}"; do
    # Use curl to check website availability
    # -L: follow redirects (handles redirection)
    # -s: silent mode
    # -w: write HTTP status code
    # -o: discard response body
    # --connect-timeout: connection timeout
    http_code=$(curl -L -s -w "%{http_code}" -o /dev/null --connect-timeout 10 "$website")
    
    # Check if HTTP status code is 200 (success)
    if [ "$http_code" = "200" ]; then
        echo "<$website> is UP" >> "$log_file"
    else
        echo "<$website> is DOWN" >> "$log_file"
    fi
done

# Display completion message
echo "Results have been written to $log_file"
