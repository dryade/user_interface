module FlashHelper

  def flash_tag(flash)
    flash.collect do |level, message|
      content_tag(:div, sanitize(message), :class => level)
    end.join("\n").html_safe
  end

end
