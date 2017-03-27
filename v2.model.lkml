
# PRELIMINARIES #

connection: "bi_redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

persist_for: "1 hour"


explore: reservations {
  label: "V2 reservations"
}
