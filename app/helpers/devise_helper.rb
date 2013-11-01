module DeviseHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mapping[:user]
  end

  #Sobreescribe para hacer el formato mas amigable
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg).join }
    alert_class = 'alert-error'

    #vacia los mensajes de errores que no pertenecen al recurso actual
    resource.errors.clear

    #remueve la opcion de boton cerrar por ahora - se produce un conflicto de CSS con facebook
    html = <<-HTML
<div class="alert fade in #{alert_class}">
<ul>#{messages}</ul>
</div>
HTML
    html.html_safe

  end
end