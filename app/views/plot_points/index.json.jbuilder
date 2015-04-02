json.array!(@plot_points) do |plot_point|
  json.extract! plot_point, :id, :title, :description, :story_id
  json.url plot_point_url(plot_point, format: :json)
end
