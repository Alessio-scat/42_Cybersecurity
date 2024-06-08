# Stockholm Ransomware

Stockholm is a simple ransomware simulation script designed for educational purposes. This script can encrypt and decrypt files within a specified directory, rename the files during encryption, and reverse the process during decryption.

## Features

- **Encrypt and rename files** with specified extensions in the `infection` directory.
- **Decrypt previously encrypted files** and reverse renaming.
- **Suppress output** for silent operation.
- **Display the program version**.

## Makefile Usage

The provided Makefile simplifies running the Stockholm script with various options.

### Commands

- **Encrypt files**: `make` or `make encrypt`
- **Encrypt files silently**: `make silent`
- **Decrypt files**: `make decrypt`
- **Decrypt files silently**: `make decrypt-silent`
- **Display version**: `make version`
- **Help**: `make help`

## Direct Script Usage

- **Encrypt files**: `./stockholm`
- **Decrypt files**: `python stockholm.py --reverse <encryption_key>`
- **Silent mode**: 
  - Encrypt silently: `python stockholm.py --silent`
  - Decrypt silently: `python stockholm.py --reverse <encryption_key> --silent`
- **Display version**: `python stockholm.py --version`

## Disclaimer

This script is intended for **educational purposes only**. Use it responsibly and do not use it to harm or damage any systems or data. The author is not responsible for any misuse of this script.
