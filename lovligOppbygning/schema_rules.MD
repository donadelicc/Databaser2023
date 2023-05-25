
##
Opprett 2 filer på (f.eks.) www.xyz.no:
personer.xml
personer.xsd
XML-filen refererer til XML-skjemaet:

<?xml version="1.0" encoding="utf-8"?>
<personer
xmlns="http://home.hvl.no"
xmlns:xsi=
"http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation=
"http://home.hvl.no/personer.xsd">
<person>…</person>
<person>…</person>
</personer>
##