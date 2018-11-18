module ApplicationHelper
  # Define a classe usada nas abas do header
  def sidebar_active?(name)
    'active' if controller_name == name
  end

  # Transforma mensagens flash dos controladores em mensagens do toastr
  def toastr_flash
    flash_messages = []
    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error'   if type == 'alert'
      text = "<script>toastr.#{type}('#{message}');</script>"
      flash_messages << text.html_safe if message
    end
    flash_messages.join("\n").html_safe
  end
end
