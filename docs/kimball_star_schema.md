# Kimball Star Schema (Simplified)

**Fact**: `FaitDefaults`  
Measures: `Quantite`, `QuantiteMauvaise` (derive DefectRate = QuantiteMauvaise / Quantite)

**Dimensions**:
- `DimDate`: date/time attributes
- `DimLigne`: production line attributes
- `DimPoste`: workstation attributes
- `DimDefaultType`: defect taxonomy
- `DimReporter`: who reported

You can expand severity, shift, cost, MTTR/MTBF proxies, etc.
