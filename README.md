# auptitcafe-data
Data historisées

# 🦆 Play with `SQL` in `duckdb`

## Current menu

```sql
install httpfs;
select *
from 'https://raw.githubusercontent.com/adriens/auptitcafe-data/main/data/current_menus_headers.csv';
```

### `bash`

```shell
duckdb << EOF
install httpfs;
select * from 'https://raw.githubusercontent.com/adriens/auptitcafe-data/main/data/current_menus_headers.csv';
EOF

```
