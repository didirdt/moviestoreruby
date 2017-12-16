ActiveAdmin.register Movie do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :release_year, :price, :description, :imdb_id, :poster_url
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  column :title do |movie|
    link_to movie.title, movie_path(movie)
  end
 
  actions
end

form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :release_year
      f.input :price
      f.input :description
      f.input :imdb_id
      f.input :poster_url
    end
    f.button "Update"
  end
 
# Filter only by title
filter :title
end
