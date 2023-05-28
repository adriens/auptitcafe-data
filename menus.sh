#!/usr/bin/env python3

import duckdb
con = duckdb.connect(database=':memory:')

# Make some imports
from auptitcafe.menus import Menus


# Create the main utility instance
menu_instance = Menus()

# Dump menus as a csv file
menus = 'menus.csv'
menu_instance.to_csv(menus)

con.execute("""create or replace table menus(
    menu_date timestamp default current_timestamp,
    titre_plat varchar not null,
    prix integer not null,
    category varchar not null check (category in ('PLAT','DESSERT')),
    recette varchar not null,
    image_url varchar-- some times the image it not provided ;-p
);""")

con.execute("""insert into menus
    SELECT current_timestamp,
        titre_plat,
        prix,
        category,
        recette,
        image_url
        from 'menus.csv';""")

import os
os.system('mkdir -p data')

con.execute("""COPY menus TO 'current_menus.csv';""")
con.execute("""COPY menus TO 'data/current_menus_headers.csv' (HEADER, DELIMITER ',');""")


os.system('cat data/current_menus.csv >> data/menus.csv')
