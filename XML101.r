#STEP 1 Preparing data
# Load the package required to read XML files.
library("XML")

# Also load the other required package.
library("methods")

# Set workind directory
setwd("C:/Users/tmeraxa/Desktop/Desktop/XML Tutorial")
dir()

# Give the input file name to the function.
result <- xmlParse(file = "xML101.xml")

# Print the result.
print(result)


#STEP 2 Get Number of Nodes Present in XML File
# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)


# STEP 3 Details of the First Node
# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Print the result.
print(rootnode[1])


# STEP 4
# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Get the first element of the first node.
print(rootnode[[1]][[1]])

# Get the fifth element of the first node.
print(rootnode[[1]][[5]])

# Get the second element of the third node.
print(rootnode[[3]][[2]])


# STEP 5 XML to Data Frame
# Convert the input xml file to a data frame.
xmldataframe <- xmlToDataFrame("XML101.xml")
print(xmldataframe)
