# CrosslyBuyer::CreateMagicScanSynthesizeResponsePayloadSectionApplicability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vehicle_compat** | **Boolean** | eBay Motors / Parts vehicle-fitment (compatibilityList). |  |
| **epr** | **Boolean** | EU/UK Extended Producer Responsibility (packaging/e-waste schemes). |  |
| **energy_label** | **Boolean** | EU energy-efficiency label (fridges, TVs, lighting, appliances). |  |
| **hazmat** | **Boolean** | Hazmat classification (battery/aerosol/flammable/liquid/chemical). |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateMagicScanSynthesizeResponsePayloadSectionApplicability.new(
  vehicle_compat: null,
  epr: null,
  energy_label: null,
  hazmat: null
)
```

