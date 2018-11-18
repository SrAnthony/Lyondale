module PropertiesHelper
  def category_color(property)
    case property.category
    when 'casa'
      return 'blue'
    when 'apartamento'
      return 'yellow'
    when 'terreno'
      return 'red'
    end
  end
end
