#Casting XML Strings to Objects
[xml]$xmlObj_books = Get-Content -Path .\books.xml

#List all books
$xmlObj_books.catalog.book

# List Book with ID bk111
$ID_result = $xmlObj_books.catalog.book | where id -EQ "bk111"

# Fetch only author information from book with ID bk111
$ID_result.author

# Fetch all Book titles
$xmlObj_books.catalog.book | Select-Object title



# Parsing Powershell XML Elements with Select-Xml
# Get all book name titles
Select-Xml -Path books.xml -XPath '/catalog/book/title' | ForEach-Object { $_.Node.InnerXML }
