-- schema: xml
--Sette inn XML data i tabellen xml.fantasy
insert into
    xml.fantasy(data)
values
(
        '
	<data>
  <transaction>
    <kunde>
      <navn>Customer 1</navn>
      <saldo>100000</saldo>
      <adresse>Address 1</adresse>
    </kunde>
    <ordre>
      <ordre_id>1</ordre_id>
      <kunde_id>1</kunde_id>
      <ordre_dato>2023-05-26</ordre_dato>
      <produkt>
        <produkt_id>1</produkt_id>
        <produkt_navn>Product 1</produkt_navn>
        <produkt_pris>50000</produkt_pris>
      </produkt>
    </ordre>
  </transaction>
  <transaction>
    <kunde>
      <navn>Customer 2</navn>
      <saldo>150000</saldo>
      <adresse>Address 2</adresse>
    </kunde>
    <ordre>
      <ordre_id>2</ordre_id>
      <kunde_id>2</kunde_id>
      <ordre_dato>2023-05-25</ordre_dato>
      <produkt>
        <produkt_id>2</produkt_id>
        <produkt_navn>Product 2</produkt_navn>
        <produkt_pris>75000</produkt_pris>
      </produkt>
    </ordre>
  </transaction>
  <transaction>
    <kunde>
      <navn>Customer 3</navn>
      <saldo>200000</saldo>
      <adresse>Address 3</adresse>
    </kunde>
    <ordre>
      <ordre_id>3</ordre_id>
      <kunde_id>3</kunde_id>
      <ordre_dato>2023-05-24</ordre_dato>
      <produkt>
        <produkt_id>3</produkt_id>
        <produkt_navn>Product 3</produkt_navn>
        <produkt_pris>100000</produkt_pris>
      </produkt>
    </ordre>
  </transaction>
</data>
'
)

-- Oppgave 1:
-- Hent ut navnet på kunden fra alle transaksjonene.

    SELECT xpath('/data/transaction/kunde/navn/text()', data) AS kunde
    FROM xml.fantasy;

-- Oppgave 2:
-- Hent ut alle ordre-id-ene der saldoen til kunden er over 150 000.



-- Oppgave 3:
-- Hent ut produktid, produktnavn og produktsaldo for alle produktene i transaksjonene der produktprisen er over 75 000.

-- Oppgave 4:
-- Hent ut kundenavn og saldo for alle kunder der adressen inneholder bokstaven 's'.

-- Oppgave 5:
-- Hent ut navnet på kunden og ordredatoen for transaksjonene som har en ordre_id høyere enn 1.

-- Oppgave 6:
-- Hent ut antallet transaksjoner per kunde.

-- Oppgave 7:
-- Hent ut gjennomsnittlig saldo for alle kunder.

-- Oppgave 8:
-- Hent ut produktprisene for alle produktene i transaksjonene.

-- Oppgave 9:
-- Hent ut den høyeste produktprisen blant alle produktene.

-- Oppgave 10:
-- Hent ut alle transaksjonene som ble gjennomført på eller etter 25. mai 2023.
