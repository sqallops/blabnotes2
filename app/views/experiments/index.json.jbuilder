json.array!(@experiments) do |experiment|
  json.extract! experiment, :id, :title, :procedure, :image_url, :date_started
  json.url experiment_url(experiment, format: :json)
end
