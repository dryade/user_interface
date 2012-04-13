module UserInterface
  class Engine < Rails::Engine

    initializer 'user_interface.app_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        require 'user_interface/language_support'
        include UserInterface::LanguageSupport
      end

      config.to_prepare do
        # To use our devise views instead of original ones
        ApplicationController.prepend_view_path File.expand_path("../../../app/views", __FILE__)
        ActionMailer::Base.prepend_view_path File.expand_path("../../../app/views", __FILE__)
      end
    end

  end
end
