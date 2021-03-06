view: fb_ad_metrics_base_template {
  extension: required
  extends: [ad_metrics_base]

  dimension: frequency {
    hidden: yes
    type: number
    value_format_name: decimal_1
  }

  measure: weighted_average_frequency {
    label: "Average Frequency"
    description: "Average Frequency."
    type: number
    sql: SUM(${frequency}*${impressions}) / NULLIF(${total_impressions},0) ;;
#     expression: sum(${frequency}*${impressions}) / NULLIF(${total_impressions},0) ;;
    value_format_name: decimal_1
  }

  measure: total_conversionvalue {
    hidden: yes
  }

  measure: average_value_per_click {
  hidden:  yes
  }

  measure: average_value_per_cost {
  hidden: yes
  }

  measure: average_value_per_impression {
  hidden: yes
  }

  measure: average_cost_per_value {
    hidden:  yes
  }

  measure: average_value_per_conversion {
    hidden:  yes
  }
}
