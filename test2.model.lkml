connection: "pops_snowflake_hr_high_sensitivity"

view: test {
  derived_table: {
    sql: select 1 as id ;;
  }
  dimension: id {}
}
explore: test {}
