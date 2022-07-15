view: weather_history {
  sql_table_name: `weather_data.history_sync`
    ;;

  dimension: aqi_co {
    type: number
    sql: ${TABLE}.aqi_co ;;
  }

  dimension: aqi_no2 {
    type: number
    sql: ${TABLE}.aqi_no2 ;;
  }

  dimension: aqi_o3 {
    type: number
    sql: ${TABLE}.aqi_o3 ;;
  }

  dimension: aqi_pm10 {
    type: number
    sql: ${TABLE}.aqi_pm10 ;;
  }

  dimension: aqi_pm2_5 {
    type: number
    sql: ${TABLE}.aqi_pm2_5 ;;
  }

  dimension: aqi_so2 {
    type: number
    sql: ${TABLE}.aqi_so2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cloud {
    type: number
    sql: ${TABLE}.cloud ;;
  }

  dimension: condition_text {
    type: string
    sql: ${TABLE}.condition_text ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: feelslike_c {
    type: number
    sql: ${TABLE}.feelslike_c ;;
  }

  dimension: gust_mph {
    type: number
    sql: ${TABLE}.gust_mph ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.humidity ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension_group: localtime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.localtime ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: location {
    type: location
    sql_latitude:${latitude} ;;
    sql_longitude:${longitude} ;;
  }
  dimension: precip_mm {
    type: number
    sql: ${TABLE}.precip_mm ;;
  }

  dimension: pressure_mb {
    type: number
    sql: ${TABLE}.pressure_mb ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: temp_c {
    type: number
    sql: ${TABLE}.temp_c ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: uv {
    type: number
    sql: ${TABLE}.uv ;;
  }

  dimension: vis_km {
    type: number
    sql: ${TABLE}.vis_km ;;
  }

  dimension: wind_degree {
    type: number
    sql: ${TABLE}.wind_degree ;;
  }

  dimension: wind_dir {
    type: string
    sql: ${TABLE}.wind_dir ;;
  }

  dimension: wind_mph {
    type: number
    sql: ${TABLE}.wind_mph ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
