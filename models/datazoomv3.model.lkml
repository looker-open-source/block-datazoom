connection: "jwplayer"

# include all the views
include: "/views/**/*.view"

datagroup: datazoomv3_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: datazoomv3_default_datagroup

explore: sinclair_debug {}

# explore: dz_staging {}

# explore: jwgold {}

