:again
::   -y  allows overwrite of existing file
:: *.zip unzips all files with extention .zip 
:: -p your password 1 or 2 
:: after password you can provide with *pdf or *xml to extract only your desired file type
C:\"Program Files"\7-Zip\7z.exe e -y C:\Users\SK-PC-103\[YOUR FOLDER]\*.zip -oC:\[Destination] -tzip -pPASS1 *pdf
if errorlevel 1 goto try_again
echo. got it!
goto xit

:try_again
echo. sorry! Try again ...
C:\"Program Files"\7-Zip\7z.exe e -y C:\[YOUR FOLDER]\*.zip -oC:\[Destination] -tzip -pPASS2 *pdf
goto xit

:xit
C:\"Program Files"\7-Zip\7z.exe e -y C:\[YOUR FOLDER]\*.zip -oC:\[Destination] -tzip -pPASS1 *xml
if errorlevel 1 goto try_again2
echo. got it!
goto final

:try_again2
echo. sorry! Try again...
C:\"Program Files"\7-Zip\7z.exe e -y C:\[YOUR FOLDER]\*.zip -oC:\[Destination] -tzip -pPASS2 *xml
goto final

:final
:: with move you can store original files elsewhere on drive
move C:\[YOUR FOLDER]\*.zip C:\[Destination]
::your code or you can repeat loop with 3rd password and then if errorlevel 1 goto...
 
