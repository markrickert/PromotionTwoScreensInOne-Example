class MapScreen < PM::MapScreen
  start_position latitude: 39, longitude: -98, radius: 2500

  def annotation_data
    []
  end

  def go_to_state(state)
    look_up_address address: "#{state}, USA" do |points, error|
      unless error
        state = points.first
        if state
          ap state.region.center
          ap state.region.radius
          my_region = MKCoordinateRegionMakeWithDistance(state.region.center, state.region.radius*2, state.region.radius*2)
          set_region my_region, true
        end
      end
    end
  end

end
