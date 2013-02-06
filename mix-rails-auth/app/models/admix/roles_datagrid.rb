class Admix::RolesDatagrid

  include Datagrid
  extend AdmixHelper

  scope do
    Role
  end

  column :name, header: input_label(:role, :name)

  include Admix::TableActions

end
