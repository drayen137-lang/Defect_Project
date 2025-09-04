# Architecture

- **Source**: Form/Sheet → CSV (for demo)
- **ETL**: SSIS (original) + Python demo (here)
- **DWH**: Star schema per Kimball
- **Viz**: Looker Studio

## ETL Flow (original vs demo)
- Original: SSIS Control Flow (Extract from Google Sheets → Clean/Transform → Load to Azure SQL)
- Demo: `sheets_to_sql.py` reads CSV → builds DimDate → loads FaitDefaults in SQLite

Add SSIS screenshots (redacted) in `docs/images/`.
