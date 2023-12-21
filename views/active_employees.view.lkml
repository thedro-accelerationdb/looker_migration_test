view: active_employees {
  sql_table_name: "DERIVED_POPS_PUBLIC"."ACTIVE_EMPLOYEES" ;;

  dimension: employee_type {
    type: string
    sql: ${TABLE}."EMPLOYEE_TYPE" ;;
  }
  dimension_group: kpi_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."KPI_DT" ;;
  }
  dimension: kpi_type {
    type: string
    sql: ${TABLE}."KPI_TYPE" ;;
  }
  dimension: kpi_val {
    type: number
    sql: ${TABLE}."KPI_VAL" ;;
  }
  measure: count {
    type: count
  }
}
