#!/bin/bash

# Echo each step for clarity

echo "Step 1: Creating a 'data' folder if it doesn't exist..."
mkdir -p data
echo "Data folder created or already exists."

echo "Step 2: Navigating into the 'data' folder..."
cd data
echo "Currently in: $(pwd)"

# Updated ZIP_URL to a direct download link for the raw zip file
ZIP_URL="https://huggingface.co/datasets/Msun/modelnet40/resolve/main/modelnet40_ply_hdf5_2048.zip"
ZIP_FILE="modelnet40_ply_hdf5_2048.zip"

echo "Step 3: Downloading the zip file from ${ZIP_URL}..."
# Using curl for download, -L follows redirects, -o specifies output file name
curl -L "${ZIP_URL}" -o "${ZIP_FILE}"
if [ $? -eq 0 ]; then
    echo "Download complete: ${ZIP_FILE}"
else
    echo "Error: Download failed. Exiting."
    exit 1
fi

echo "Step 4: Extracting the zip file: ${ZIP_FILE}..."
# Using unzip to extract the contents
unzip "${ZIP_FILE}"
if [ $? -eq 0 ]; then
    echo "Extraction complete."
else
    echo "Error: Extraction failed. Exiting."
    exit 1
fi

echo "Step 5: Deleting the zip file: ${ZIP_FILE}..."
rm "${ZIP_FILE}"
if [ $? -eq 0 ]; then
    echo "Zip file deleted."
else
    echo "Error: Failed to delete zip file."
fi

echo "Script execution finished."
