module Hirb::Views::ORM
  def data_mapper__resource_view(obj)
    {:fields=>obj.class.properties.map {|e| e.name }}
  end

  def sequel__model_view(obj)
    {:fields=>obj.class.columns}
  end
end

Hirb::HelperView.add :views=>Hirb::Views::ORM, :helper=>:auto_table