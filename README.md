# The Nurse
## A WAF Bypass SQLMap Tamper Assistant.


This is a Bash script that helps with bypassing Web Application Firewalls (WAFs) using SQLMap tamper options. It provides a list of WAF vendors, prompts the user to select a vendor, and then suggests a set of useful tamper options for SQLMap that have been found to be effective against the selected vendor's WAF.

## Usage
To use the script, simply run it in a Bash terminal:

bash

./the-nurse.sh

-The script will present a list of WAF vendors and prompt you to select a vendor. Once you have selected a vendor, the script will suggest a set of useful tamper options for SQLMap that can help bypass that vendor's WAF.

-The script will output the SQLMap command with the selected options, which you can then copy and paste into your terminal to execute the injection.

## Dependencies

This script requires the following dependencies:

Bash (version 4 or later)
SQLMap (version 1.0 or later)

Make sure that these dependencies are installed and available in your $PATH before running the script.

## Disclaimer

This script is for educational purposes only. It is intended to help security researchers and penetration testers understand the limitations of WAFs and to help them test the effectiveness of their bypass techniques. Do not use this script for any illegal activities. The author of this script is not responsible for any damage or harm caused by its use.
