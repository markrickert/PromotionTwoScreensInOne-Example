class StatesScreen < PM::TableScreen
  attr_accessor :container

  def table_data
    [{
      title: "",
      cells: State.all.map { |state| { title: state.name, action: :tapped_state, arguments:{name: state.name} } },
    }]
  end

  def tapped_state(args={})
    container.tapped_state(args)
  end
end
