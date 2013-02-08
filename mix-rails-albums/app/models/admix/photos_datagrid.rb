class Admix::PhotosDatagrid

  include Datagrid

  scope do
    Photo
  end

  filter :name, :string
  filter :date, :date

  column :name 
  column :date
  
end