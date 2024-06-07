# Stockholm Ransomware

Stockholm is a simple ransomware simulation script designed for educational purposes. This script can encrypt and decrypt files within a specified directory, rename the files during encryption, and reverse the process during decryption.

## Features

- Encrypt files with specified extensions in the `infection` directory.
- Decrypt previously encrypted files.
- Rename files during the encryption process.
- Reverse rename files during the decryption process.
- Suppress output for silent operation.
- Display the encryption key used for decryption.

## Usage (Encrypting Files)

To encrypt files, simply run the script without any arguments. The script will generate an encryption key, encrypt the files in the infection directory, and rename them with a .ft extension.

- `./stockholm`

## Decrypting Files

To decrypt files, run the script with the --reverse or -r option followed by the encryption key. This will decrypt the files and remove the .ft extension.

- `python stockholm.py --reverse or -r <encryption_key>`

## Silent Mode

To run the script without any output, use the --silent or -s option.

- `sh python stockholm.py --silent or -s`
- `sh python stockholm.py --reverse or -r <encryption_key> --silent or -s`

## Display Version

To display the version of the program, use the --version or -v option.

- `python stockholm.py --version or -v`

## Disclaimer

This script is intended for educational purposes only. Use it responsibly and do not use it to harm or damage any systems or data. The author is not responsible for any misuse of this script.
