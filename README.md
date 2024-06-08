# Cybersecurity Piscine Projects

This repository contains the following projects aimed at enhancing cybersecurity skills through various exercises.

## Table of Contents

1. [Iron Dome](#iron-dome)
2. [ft_onion](#ft_onion)
3. [Vaccine](#vaccine)
4. [Reverse me i’m famous!](#reverse-me-im-famous)
5. [Inquisitor](#inquisitor)
6. [Arachnida](#arachnida)
7. [ft_otp](#ft_otp)
8. [Stockholm](#stockholm)

## Iron Dome

### Summary
Create a tool to detect anomalous activity by monitoring different operating system parameters.

### Mandatory Part
1. Develop the program for Linux.
2. Program should run as a daemon and monitor a specified critical area.
3. Detect disk read abuse, intensive cryptographic activity, and changes in file entropy.
4. Log alerts to `/var/log/irondome/irondome.log`.
5. Implement a test suite to check required properties.

### Bonus Part
1. Create a backup folder in the user’s HOME directory and perform incremental backups.

## ft_onion

### Summary
Create a web page accessible from the Tor network by creating a hidden service.

### Mandatory Part
1. Run a web server that displays a static webpage (`index.html`) accessible through a .onion URL.
2. Configure Nginx for the web server.
3. Enable access via HTTP on port 80 and SSH on port 4242.

### Bonus Part
1. Enhance SSH security.
2. Develop an interactive application instead of a static webpage.

## Vaccine

### Summary
Create a tool to detect SQL injections by providing a URL.

### Mandatory Part
1. Develop a program called `vaccine` to perform SQL injections by testing URLs.
2. Identify vulnerable parameters and provide details about the SQL injection.
3. Manage GET and POST methods.
4. Implement at least two types of SQL injection methods and support at least two database engines.

### Bonus Part
1. Support additional database engines and SQL injection methods.
2. Allow editing of various request parameters.

## Reverse me i’m famous!

### Summary
Understand reverse engineering by analyzing and modifying binary programs.

### Mandatory Part
1. Analyze three provided binary programs and find passwords to validate them.
2. Write a C program that replicates the basic functionality of each binary.
3. Submit the passwords and C source code for each level.

### Bonus Part
1. Patch programs to accept any password and justify the method used.

## Inquisitor

### Summary
Perform ARP poisoning and demonstrate its effects.

### Mandatory Part
1. Develop a program called `inquisitor` for Linux to perform ARP poisoning.
2. Program must handle inputs and work with IPv4 addresses.
3. Prepare tests using the FTP protocol to demonstrate functionality.
4. Display exchanged file names during an FTP session.

### Bonus Part
1. Implement a verbose mode to show all FTP traffic, including login details.

## Arachnida

### Summary
Learn web scraping and metadata manipulation.

### Exercise 1 - Spider
1. Develop a program to download images from a website recursively.
2. Manage options for recursion depth and file save path.
3. Download specific image file extensions.

### Exercise 2 - Scorpion
1. Develop a program to parse and display metadata from image files.
2. Support the same file extensions as the Spider program.

### Bonus Part
1. Add functionality to modify or delete metadata.
2. Create a graphical interface for managing metadata.

## ft_otp

### Summary
Implement a Time-based One-Time Password (TOTP) system.

### Mandatory Part
1. Develop a program to store an initial password and generate TOTP based on RFC 6238.
2. Program should securely store the key and generate 6-digit passwords.
3. Implement options to generate and retrieve passwords.

### Bonus Part
1. Create a QR code for seed generation.
2. Develop a graphical interface for the TOTP system.

## Stockholm

### Summary
Develop a harmless malware to understand ransomware functionality.

### Mandatory Part
1. Develop a program called `stockholm` for Linux.
2. Implement options for help, version, reverse infection, and silent mode.
3. Encrypt files in a specified folder using a key and rename them with a `.ft` extension.
4. Implement reverse functionality to decrypt files.

## License

This project is for educational purposes only. The use of any code for malicious purposes is strictly prohibited.
