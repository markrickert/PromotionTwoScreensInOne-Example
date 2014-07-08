class HomeScreen < PM::Screen

  title "States"

  def on_load
    @map = MapScreen.new
    @table = StatesScreen.new(container: self)
  end

  def will_appear
    @view_setup ||= self.set_up_view
  end

  def set_up_view
    add @map.view, {
      frame: CGRectMake(0, 0, view.frame.size.width, view.frame.size.height / 2)
    }

    add @table.view, {
      frame: CGRectMake(0, view.frame.size.height / 2, view.frame.size.width, view.frame.size.height / 2)
    }

    true
  end

  def tapped_state(args = {})
    @map.go_to_state(args[:name])
  end

end
