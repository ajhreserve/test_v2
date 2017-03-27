view: reservations {
  sql_table_name: rfr_public.reservations ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: amount_spent {
    type: number
    sql: ${TABLE}.amount_spent ;;
  }

  dimension_group: checked_out {
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
    sql: ${TABLE}.checked_out_at ;;
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

  dimension_group: date {
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
    sql: ${TABLE}.date_time ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: employee_initials {
    type: string
    sql: ${TABLE}.employee_initials ;;
  }

  dimension: enforce_policy {
    type: string
    sql: ${TABLE}.enforce_policy ;;
  }

  dimension: est_length_of_stay {
    type: number
    sql: ${TABLE}.est_length_of_stay ;;
  }

  dimension: guest_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.guest_id ;;
  }

  dimension: length_of_stay {
    type: number
    sql: ${TABLE}.length_of_stay ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}.metadata ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: number_of_people {
    type: number
    sql: ${TABLE}.number_of_people ;;
  }

  dimension: penalty {
    type: string
    sql: ${TABLE}.penalty ;;
  }

  dimension: restaurant_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.restaurant_id ;;
  }

  dimension_group: seated {
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
    sql: ${TABLE}.seated_at ;;
  }

  dimension: server_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.server_id ;;
  }

  dimension: server_name {
    type: string
    sql: ${TABLE}.server_name ;;
  }

  dimension: slot_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.slot_id ;;
  }

  dimension: slot_template_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.slot_template_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      server_name,
      guests.id,
      guests.last_name,
      guests.first_name,
      servers.id,
      servers.name,
      slot_templates.id,
      slots.id,
      restaurants.name,
      restaurants.opentable_restaurant_id,
      user.firstname,
      user.lastname,
      user.id,
      reservations_tables.count,
      waitlists.count
    ]
  }
}
