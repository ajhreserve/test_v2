view: restaurants {
  sql_table_name: rfr_public.restaurants ;;

  dimension: opentable_restaurant_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.opentable_restaurant_id ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: avero_check_open_preferred_padding_factor {
    type: number
    sql: ${TABLE}.avero_check_open_preferred_padding_factor ;;
  }

  dimension: avero_check_open_secondary_padding_factor {
    type: number
    sql: ${TABLE}.avero_check_open_secondary_padding_factor ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: constant_contact_access_token {
    type: string
    sql: ${TABLE}.constant_contact_access_token ;;
  }

  dimension: contact_info {
    type: string
    sql: ${TABLE}.contact_info ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }

  dimension: max_cover {
    type: number
    sql: ${TABLE}.max_cover ;;
  }

  dimension: min_cover {
    type: number
    sql: ${TABLE}.min_cover ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: plivo_number {
    type: string
    sql: ${TABLE}.plivo_number ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: quick_area_codes {
    type: string
    sql: ${TABLE}.quick_area_codes ;;
  }

  dimension: reservation_email_content {
    type: string
    sql: ${TABLE}.reservation_email_content ;;
  }

  dimension: reservation_email_subject_line {
    type: string
    sql: ${TABLE}.reservation_email_subject_line ;;
  }

  dimension: reservation_window {
    type: number
    sql: ${TABLE}.reservation_window ;;
  }

  dimension: reserve_enabled {
    type: string
    sql: ${TABLE}.reserve_enabled ;;
  }

  dimension: send_reservation_details_email {
    type: string
    sql: ${TABLE}.send_reservation_details_email ;;
  }

  dimension: sender_email {
    type: string
    sql: ${TABLE}.sender_email ;;
  }

  dimension: short_code {
    type: string
    sql: ${TABLE}.short_code ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: widget {
    type: string
    sql: ${TABLE}.widget ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      opentable_restaurant_id,
      name,
      accounts.id,
      accounts.name,
      attachments.count,
      avero_transactions.count,
      employees.count,
      guest_bookmarks.count,
      guest_bulk_import_logs.count,
      guest_imports.count,
      guest_restaurant_infos.count,
      message_templates.count,
      ot_api_imports.count,
      ot_customer_infos.count,
      ot_reservation_potential_avero_matches.count,
      ot_reservations.count,
      reservations.count,
      restaurant_memberships.count,
      rooms.count,
      servers.count,
      sheets.count,
      shifts.count,
      waitlists.count
    ]
  }
}
