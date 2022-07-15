connection: "sandbox-hrialan-weather-etl"

# include all the views
include: "/views/**/*.view"

datagroup: sandbox_hrialan_weather_etl_default_datagroup {
  sql_trigger: SELECT MAX(localtime) FROM history_sync;;
  max_cache_age: "4 hour"
}

persist_with: sandbox_hrialan_weather_etl_default_datagroup

explore: history_sync {
  always_filter: {
    filters: [city: "Saint-Malo"]
  }
}
