# How to print from OSX in the Printer located in Harris 211 - HP LaserJet M402dn

1) Open the terminal and download the  [PPD (PostScript Printer Description)](https://en.wikipedia.org/wiki/PostScript_Printer_Description) file from the BioComplex repository by typing: 
`curl https://github.com/BioComplex/Tutorials/raw/master/LabPrinting/HP%20LaserJet%20400%20M401.gz --output  HPLaserJet400M401.gz`

2) Move the PPD file to the directory where OSX stores PPDs `sudo mv HPLaserJet400M401.gz /Library/Printers/PPDs/Contents/Resources/`

3) Go to Systems Preference > Printers & Scanners and click on the + sign to add a new printer

<a href="https://ibb.co/nL0747"><img src="https://preview.ibb.co/jzO5rn/mac_printer2.jpg" alt="mac_printer2" border="0"></a>

4) If you have the icon "Advanced" skip to next step. Otherwise, right click under the search bar, click on "Advanced" and drag it to the correct Place

<a href="https://ibb.co/b81dcS"><img src="https://preview.ibb.co/nKJPHS/mac_printer1.png" alt="mac_printer1" border="0"></a>

5) Click on Advanced and in Type select "Windows printer via spoolss". 

6) In URL type: `smb://gates2.cs.fit.edu/Phd%20Lab%20BW%20Printer`. This is just a URI encoded for smb://gates2.cs.fit.edu/Phd Lab BW Printer (yes, some expert added spaces to the name of a network shared resource)

7) In "Use", click on "Select Software"

<a href="https://imgbb.com/"><img src="https://image.ibb.co/mQ0krn/Screen_Shot_2018_04_20_at_6_40_09_PM.png" alt="Screen_Shot_2018_04_20_at_6_40_09_PM" border="0"></a>

8) Type 400 in the search box, and select "HP LaserJet 400 M401" from the list
<a href="https://imgbb.com/"><img src="https://image.ibb.co/cA3wWn/Screen_Shot_2018_04_20_at_6_39_39_PM.png" alt="Screen_Shot_2018_04_20_at_6_39_39_PM" border="0"></a>

9) At the end, you should have something like this. 
<a href="https://imgbb.com/"><img src="https://image.ibb.co/hpRN47/Screen_Shot_2018_04_20_at_6_39_56_PM.png" alt="Screen_Shot_2018_04_20_at_6_39_56_PM" border="0"></a><br>
Click on Add, and wait for the process to finish.

10) When you first try to print, you are going to be asked for authentication details.
