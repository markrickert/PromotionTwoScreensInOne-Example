class StatesScreen < PM::TableScreen
  searchable placeholder: "Search states"
  attr_accessor :container

  def table_data
    [{
      title: "",
      cells: State.all.map { |state| { title: state.name, action: :tapped_state } }
    }]
  end

  def tapped_state(args={})
    container.tapped_state(args)
  end
end
