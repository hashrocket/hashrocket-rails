module UiHelper
  def wireframe_path(wireframe_name, controller_name)
    "/#{[controller_name, wireframe_name].join('/')}"
  end
end
