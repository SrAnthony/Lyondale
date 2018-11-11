module ApplicationHelper
  # Define a classe usada nas abas do header
  def menu_nav_link_class(name)
    "nav-button #{'active' if controller_name == name}"
  end
end
