view: venue {
  sql_table_name: reserve_public.venue ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: aspects {
    type: string
    sql: ${TABLE}.aspects ;;
  }

  dimension: bookingofferttl {
    type: number
    sql: ${TABLE}.bookingofferttl ;;
  }

  dimension: cancelenabled {
    type: yesno
    sql: ${TABLE}.cancelenabled ;;
  }

  dimension: conciergefeeenabled {
    type: yesno
    sql: ${TABLE}.conciergefeeenabled ;;
  }

  dimension: countrycode {
    type: string
    sql: ${TABLE}.countrycode ;;
  }

  dimension_group: createdat {
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
    sql: ${TABLE}.createdat ;;
  }

  dimension: creditcardrate {
    type: number
    sql: ${TABLE}.creditcardrate ;;
  }

  dimension: cuisine {
    type: string
    sql: ${TABLE}.cuisine ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: extendedaddress {
    type: string
    sql: ${TABLE}.extendedaddress ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}.hours ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: maxguests {
    type: number
    sql: ${TABLE}.maxguests ;;
  }

  dimension: merchantaccountid {
    type: string
    sql: ${TABLE}.merchantaccountid ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}.metadata ;;
  }

  dimension: metro {
    type: number
    sql: ${TABLE}.metro ;;
  }

  dimension: mobileapp {
    type: string
    sql: ${TABLE}.mobileapp ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: neighborhood {
    type: number
    sql: ${TABLE}.neighborhood ;;
  }

  dimension: overageenabled {
    type: yesno
    sql: ${TABLE}.overageenabled ;;
  }

  dimension: paymentenabled {
    type: yesno
    sql: ${TABLE}.paymentenabled ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.postalcode ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: streetaddress {
    type: string
    sql: ${TABLE}.streetaddress ;;
  }

  dimension: stripeaccountid {
    type: string
    sql: ${TABLE}.stripeaccountid ;;
  }

  dimension: stripecustomerid {
    type: string
    sql: ${TABLE}.stripecustomerid ;;
  }

  dimension: taxenabled {
    type: yesno
    sql: ${TABLE}.taxenabled ;;
  }

  dimension: taxid {
    type: string
    sql: ${TABLE}.taxid ;;
  }

  dimension: taxrate {
    type: number
    sql: ${TABLE}.taxrate ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: tipenabled {
    type: yesno
    sql: ${TABLE}.tipenabled ;;
  }

  dimension_group: updatedat {
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
    sql: ${TABLE}.updatedat ;;
  }

  dimension: venuepage {
    type: string
    sql: ${TABLE}.venuepage ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
