-- schema: json
-- insert data
INSERT INTO
    json.fantasy (data)
VALUES
    (
        '{
    "kunde": {
      "navn": "Customer 1",
      "saldo": 100000,
      "adresse": "Address 1"
    },
    "ordre": {
      "ordre_id": 1,
      "kunde_id": 1,
      "ordre_dato": "2023-05-26",
      "produkt": [
        {
          "produkt_id": 1,
          "produkt_navn": "Product 1",
          "produkt_pris": 50000
        }
      ]
    }
  }'
    ),
    (
        '{
    "kunde": {
      "navn": "Customer 2",
      "saldo": 150000,
      "adresse": "Address 2"
    },
    "ordre": {
      "ordre_id": 2,
      "kunde_id": 2,
      "ordre_dato": "2023-05-25",
      "produkt": [
        {
          "produkt_id": 2,
          "produkt_navn": "Product 2",
          "produkt_pris": 75000
        }
      ]
    }
  }'
    ),
    (
        '{
    "kunde": {
      "navn": "Customer 3",
      "saldo": 200000,
      "adresse": "Address 3"
    },
    "ordre": {
      "ordre_id": 3,
      "kunde_id": 3,
      "ordre_dato": "2023-05-24",
      "produkt": [
        {
          "produkt_id": 3,
          "produkt_navn": "Product 3",
          "produkt_pris": 100000
        }
      ]
    }
  }'
    );

-- create scema

create table json.schema
(
    id serial primary key,
    schema jsonb
);

-- Insert schema

insert into json.schema(schema)
values(
	
	'{
    "$Schema": "http://json-schema.org/draft-07/schema#",
    "type": "object",
    "properties": {
        "kunde": {
            "type": "object",
            "properties": {
                "navn": {
                    "type": "string",
                    "maxLength": 50
                },
                "adresse": {
                    "type": "string"
                },
                "saldo": {
                    "type": "integer",
                    "pattern": "^[0-9]*$"
                }
            },
            "required": ["navn", "saldo", "adresse"]
        },
        "ordre": {
                "type": "object",
                "properties" : {
                    "ordre_id": {
                        "type": "integer"
                        },
                    "kunde_id": {
                        "type": "integer"
                        },
                    "ordre_dato": {
                        "type": "string",
                        "format": "date"
                        },
                    "produkt": {
                        "type": "array",
                        "items": {
                            "produkt_id": {
                                "type": "integer"
                                },
                            "produkt_navn": {
                                "type": "string"
                                },
                            "produkt_pris": {
                                "type": "integer"
                            }
                        }
                    }
                }
            }
        }
    }'
	
)


---Oppgaver
-- Oppgave 1:
-- Hent ut navnet på kunden fra tabellen.

    select data -> 'kunde' ->> 'navn' as TheFirstCustomer from json.fantasy 
    where fantasyid = 2; 

-- Oppgave 2:
-- Hent ut ordrenummeret for ordrene der saldoen til kunden er over 150 000.

    select data -> 'ordre' -> 'ordre_id' as richboy from json.fantasy
    where data -> 'kunde' -> 'saldo' > '150000'; 

-- Oppgave 3:
-- Hent ut alle produktene fra ordrene der produktprisen er over 75 000.

    SELECT value ->>'produkt_navn' AS product_name
    FROM json.fantasy,
        jsonb_array_elements(data->'ordre'->'produkt') AS value
    WHERE value -> 'produkt_pris' > '75000';

-- Oppgave 4:
-- Hent ut kundenavn og saldo for alle kunder der adressen inneholder bokstaven 's'.

    select data -> 'kunde' -> 'navn' as Sene, data -> 'kunde' -> 'saldo' as Senesser
    from json.fantasy
    where data -> 'kunde' ->> 'adresse' like '%s%'

-- Oppgave 5:
-- Hent ut navnet på kunden og ordredatoen for ordrene som har en ordre_id høyere enn 1.

-- Oppgave 6:
-- Hent ut antallet ordre per kunde_id.

-- Oppgave 7:
-- Hent ut gjennomsnittlig saldo for alle kunder.

-- Oppgave 8:
-- Hent ut produktprisene for alle produktene i tabellen.

-- Oppgave 9:
-- Hent ut den høyeste produktprisen blant alle produktene.

-- Oppgave 10:
-- Hent ut alle ordrene som ble plassert på eller etter 25. mai 2023.
