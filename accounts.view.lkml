view: accounts {
  sql_table_name: rfr_public.accounts ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: constant_contact_access_token {
    type: string
    sql: ${TABLE}.constant_contact_access_token ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: plivo_auth_id {
    type: string
    sql: ${TABLE}.plivo_auth_id ;;
  }

  dimension: plivo_auth_token {
    type: string
    sql: ${TABLE}.plivo_auth_token ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, guests.count, restaurants.count]
  }
}
