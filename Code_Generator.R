###############################################################################
# User-Defined Variables

# Set your working directory
FILE.PATH <- "~"

# How many unique 9-digit codes should the script produce?
COUNT <- 1048576  # Excel spreadsheets are limited to 1,048,576 rows.

# Give the output file a name
FILE.NAME <- "Nine-digit Code List"

###############################################################################
# Initializations
FINAL.COUNT <- COUNT
COUNT <- COUNT * 1.01  # gives a bit of buffer for the unique() function.
code.list <- rep(NA,COUNT)
setwd(FILE.PATH)
string.source.alnum <- c("2","3","4","5","6","7","8","9","a","b","c","d","e",
                         "f","g","h","k","m","n","p","q","r","s","t","u","v",
                         "w","x","y","z")
string.source.alpha <- c("a","b","c","d","e","f","g","h","k","m","n","p","q",
                         "r","s","t","u","v","w","x","y","z")
string.source.num <- c("2","3","4","5","6","7","8","9")

###############################################################################
# The function produces the list of 9-digit codes.
string_fun <- function() {
  paste0(
    string.source.alpha[sample(x = 1:22, size = 1, replace = FALSE)],
    string.source.num[sample(x = 1:8, size = 1, replace = FALSE)],
    paste0(string.source.alnum[sample(x = 1:30, size = 7, replace = FALSE)],
           collapse = ""),
    collapse = "")
}

###############################################################################
# Build the code list
code.list <- unique(sapply(1:COUNT, function(i) string_fun()))
code.list <- code.list[1:FINAL.COUNT]

###############################################################################
# Save the code list
write.table(x = code.list,
            file = paste0(FILE.NAME, ".csv"),
            sep = ",",
            row.names = FALSE,
            col.names = FALSE)

###############################################################################
# Clean up the work space
rm(list = c("code.list","COUNT","FILE.NAME","FILE.PATH","FINAL.COUNT",
            "string.source.alnum","string.source.alpha","string.source.num",
            "string_fun"))
