class MapScreen < PM::MapScreen
  start_position latitude: 39, longitude: -98, radius: 2500

  def annotation_data
    []
  end

  def go_to_state(state)
    look_up_address address: "#{state}, USA" do |points, error|
      my_region = MKCoordinateRegionMakeWithDistance(points.first.region.center, points.first.region.radius, points.first.region.radius)
      set_region my_region, true
    end
  end

end
