class Admix::CategoriesDatagrid
  
  include Datagrid

  extend AdmixHelper

  scope do
    Category
  end

  column :name, :header => input_label(:categories, :name)

  include Admix::TableActions
end