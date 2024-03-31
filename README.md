[![xc compatible](https://xcfile.dev/badge.svg)](https://xcfile.dev)


# ❔ About

Historized data in `csv` format **so anyone can play with ease with the datas.**

# 🤖 Chat with menus

You can chat with menus on HuggingChat:

- [📝 Dedicated article](https://dev.to/adriens/huggingchat-assistant-ask-waiter-for-menu-advices-2kfc)
- [🤖 Au p'tit café HuggingChat Assistant](https://bit.ly/3SJcNsg)

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

