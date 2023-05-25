
## Opprett 2 filer på (f.eks.) www.xyz.no:
## personer.xml
## personer.xsd
## XML-filen refererer til XML-skjemaet:
```
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
```

## Et element kan ha disse datatypene:
```
    string
    decimal
    integer
    boolean
    date
    time
```
## Restriksjon på enkle datatyper
## Lengde(antall tegn)
```
<xs:simpleType name="fornavn_t">
<xs:restriction base="xs:string">
<xs:maxLength value="20"/>
</xs:restriction>
</xs:simpleType>
```
## Intervall
```
<xs:simpleType name="pnr_t">
<xs:restriction base="xs:integer">
<xs:minInclusive value="1"/>
<xs:maxInclusive value="500"/>
</xs:restriction>
</xs:simpleType>
```
## Mønster
```
<xs:simpleType name="regnr_t">
<xs:restriction base="xs:string">
<xs:pattern value="[A-Z]{2}[0-9]{5}"/>
</xs:restriction>
</xs:simpleType>
```




