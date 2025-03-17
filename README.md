# otpcli

A simple command-line tool for generating Time-based One-Time Password (TOTP) codes.

## Overview

`otpcli` is a Node.js command-line utility that generates TOTP codes based on a provided secret key. It uses the [otplib](https://github.com/yeojz/otplib) library for generating secure, standards-compliant one-time passwords.

## Installation

```bash
npm install -g @allindevelopers/otpcli
```

## Usage

Generate a TOTP code by providing your secret key after running otpcli:

```bash
otpcli
```

The tool will output the current 6-digit TOTP code for the provided secret.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Acknowledgements

- [otplib](https://github.com/yeojz/otplib) - The library used for TOTP generation
