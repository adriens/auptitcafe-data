[![xc compatible](https://xcfile.dev/badge.svg)](https://xcfile.dev)


# auptitcafe-data
Data historisées

# 🦆 Play with `SQL` in `duckdb`

## Current menu

```sql
install httpfs;
select *
from 'https://raw.githubusercontent.com/adriens/auptitcafe-data/main/data/current_menus_headers.csv';

```

###  🐚 Shell (`bash`, `zsh`)

```shell
duckdb << EOF
install httpfs;
select * from 'https://raw.githubusercontent.com/adriens/auptitcafe-data/main/data/current_menus_headers.csv' ;
EOF

```

## Tasks

### current
Display the current menu data

```sh
duckdb << EOF
install httpfs;
select titre_plat as "Plat",
    prix as "Prix",
    category as "Category",
    recette as "Recette"
from 'https://raw.githubusercontent.com/adriens/auptitcafe-data/main/data/current_menus_headers.csv';
EOF
```

