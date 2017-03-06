# RANDOM CODE GENERATOR
Creates a list of random, unique, 9-digit codes.

# README
This script will generate a single-column CSV file containing a unique,
9-digit alpha-numeric code in each cell. Easily confused characters
(the numers "0" and "1" and the letters "i", "j", "l", and "o") are avoided.
All alphabetic characters are lower-case. The user can set the path to the
folder where the CSV will be stored, can determine the number of codes to be
produced, and can name the CSV. There will be at least one alphabetic and at
least one numeric character in each code.

# CAUTION
Depending on your system, you may notice that somewhere between 100,000 and
1,000,000 iterations produces a substantial jump in the time required to run
this script. The time required to run a full 1,048,576 iterations (the maximum
number of rows in an Excel spreadsheet) is still only a few minutes.

# SYSTEM INFORMATION
R version 3.3.2 (2016-10-31) -- "Sincere Pumpkin Patch"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

# > Sys.info()
sysname           release           version          nodename           machine
"Windows"        ">= 8 x64"      "build 9200" "XXXXXXXXXXXXX"          "x86-64"
login              user    effective_user
"XXXX"            "XXXX"            "XXXX"
