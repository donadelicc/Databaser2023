-- schema: xml

--Sette inn XML daten fra predotor_preben.xml

insert into xml.characters (data)
values (

    '<?xml version="1.0" encoding="UTF-8"?>
    <characters>
        <character
            name="Predotor Preben"
            class="Warrior"
            level="99"
            health="100"
            strength="100"
        >
        </character>
    </characters>'
);

insert into xml.worlds (data)
values (

    '<?xml version="1.0" encoding="UTF-8"?>
    <worlds>
        <world
            name="The moon"
            description="It is a big rock in space"
        >
        </world>
    </worlds>'
);

insert into xml.weapons (data)
values (

    '<?xml version="1.0" encoding="UTF-8"?>
    <weapons>
        <weapon
            name="Wooden sword"
            description="A sword made of wood"
            damage="10"
            type="Melee"
        >
        </weapon>
    </weapons>'
);

insert into xml.abilities (data)
values (

    '<?xml version="1.0" encoding="UTF-8"?>
    <abilities
        rizz="Legendary"
        intelligence="Newtonian"
    >
    </abilities>'
);



