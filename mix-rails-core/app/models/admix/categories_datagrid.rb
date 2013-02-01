class Admix::CategoriesDatagrid
  
  include Datagrid

  extend AdmixHelper

  scope do
    Category.all
  end

  column :name, :header => input_label(:categories, :name)
  column :_type, :header => input_label(:categories, :_type)

  include Admix::TableActions
end