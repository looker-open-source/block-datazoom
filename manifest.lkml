project_name: "datazoomv3"

################ Constants ################

## !! Change these values to match your environment

constant: CONNECTION_NAME {
  value: "jwplayer"
  export: override_required
}

constant: BIGQUERY_PROJECT_NAME {
  value: "jwplayerproject"
  export: override_required
}

constant: BIGQUERY_DATASET_NAME {
  value: "datazoom_demo"
  export: override_required
}

constant: DATAZOOM_RAW_TABLE_NAME {
  value: "datazoom_video_telemetry_demo_data"
  export: override_optional
}

# Don't modify this value unless instructed to do so by your DataZoom or Looker Rep
constant: LOOKER_MODEL_NAME {
  value: "datazoomv3"
  export: override_optional
}
