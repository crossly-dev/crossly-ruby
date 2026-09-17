# Crossly::GetAnalyticDashboardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revenue** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **profit** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **sold_items_count** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **cancelled_count** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **cancel_rate** | [**GetAnalyticDashboardResponseCancelRate**](GetAnalyticDashboardResponseCancelRate.md) |  |  |
| **refunded_amount** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **refunded_count** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **listed_items_count** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **avg_sale_price** | [**GetAnalyticDashboardResponseRevenue**](GetAnalyticDashboardResponseRevenue.md) |  |  |
| **sell_through_rate** | **Float** |  | [optional] |
| **sell_through** | [**GetAnalyticDashboardResponseSellThrough**](GetAnalyticDashboardResponseSellThrough.md) |  |  |
| **avg_days_to_sell** | **Float** |  | [optional] |
| **sales_by_platform** | [**Array&lt;GetAnalyticDashboardResponseSalesByPlatform&gt;**](GetAnalyticDashboardResponseSalesByPlatform.md) |  |  |
| **avg_sale_price_by_platform** | [**Array&lt;GetAnalyticDashboardResponseAvgSalePriceByPlatform&gt;**](GetAnalyticDashboardResponseAvgSalePriceByPlatform.md) |  |  |
| **revenue_by_day** | [**Array&lt;GetAnalyticDashboardResponseRevenueByDay&gt;**](GetAnalyticDashboardResponseRevenueByDay.md) |  |  |
| **top_categories** | [**Array&lt;GetAnalyticDashboardResponseTopCategories&gt;**](GetAnalyticDashboardResponseTopCategories.md) |  |  |
| **top_subcategories** | [**Array&lt;GetAnalyticDashboardResponseTopCategories&gt;**](GetAnalyticDashboardResponseTopCategories.md) |  |  |
| **top_brands** | [**Array&lt;GetAnalyticDashboardResponseTopCategories&gt;**](GetAnalyticDashboardResponseTopCategories.md) |  |  |
| **top5_items_by_revenue** | [**Array&lt;GetAnalyticDashboardResponseTop5ItemsByRevenue&gt;**](GetAnalyticDashboardResponseTop5ItemsByRevenue.md) |  |  |
| **recent_sales** | [**Array&lt;GetAnalyticDashboardResponseRecentSales&gt;**](GetAnalyticDashboardResponseRecentSales.md) |  |  |
| **available_labels** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetAnalyticDashboardResponse.new(
  revenue: null,
  profit: null,
  sold_items_count: null,
  cancelled_count: null,
  cancel_rate: null,
  refunded_amount: null,
  refunded_count: null,
  listed_items_count: null,
  avg_sale_price: null,
  sell_through_rate: null,
  sell_through: null,
  avg_days_to_sell: null,
  sales_by_platform: null,
  avg_sale_price_by_platform: null,
  revenue_by_day: null,
  top_categories: null,
  top_subcategories: null,
  top_brands: null,
  top5_items_by_revenue: null,
  recent_sales: null,
  available_labels: null
)
```

