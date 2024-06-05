# Define the base path
$basePath = "C:\Users\erik_\Desktop\azure-terraform"
$sub1Path = Join-Path -Path $basePath -ChildPath "my_az_subscription_1\my_example_module"
$sub2Path = Join-Path -Path $basePath -ChildPath "my_az_subscription_2\my_example_module"

# Define the file list
$files = @("README.md", "main.tf", "variables.tf", "variables.tfvar", "outputs.tf")

# Create the directories
New-Item -Path $sub1Path -ItemType Directory -Force
New-Item -Path $sub2Path -ItemType Directory -Force

# Function to create files in a given directory
function Create-Files {
    param (
        [string]$directory,
        [array]$files
    )

    foreach ($file in $files) {
        $filePath = Join-Path -Path $directory -ChildPath $file
        New-Item -Path $filePath -ItemType File -Force
    }
}

# Create files in both subscription directories
Create-Files -directory $sub1Path -files $files
Create-Files -directory $sub2Path -files $files

Write-Host "Folder tree and files created successfully."
