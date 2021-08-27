connection: "jwplayer"

# include all the views
include: "/views/**/*.view"

datagroup: datazoomv3_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: datazoomv3_default_datagroup

explore: sinclair_debug {}

explore: viewing_users {

  join: sinclair_debug {

    type: left_outer

    sql_on: ${viewing_users.user_id} = ${sinclair_debug.device_id} ;;

    relationship: many_to_one

  }

}

explore: final_flux{}


explore: affinity {
  label: "Affinity Analysis"

  always_filter: {
    filters: {
      field: affinity.content_b
      value: "-NULL"
    }
  }
}
