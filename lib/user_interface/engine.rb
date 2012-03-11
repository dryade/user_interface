module UserInterface
  class Engine < Rails::Engine

    initializer 'user_interface.app_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        require 'user_interface/language_support'
        include UserInterface::LanguageSupport
      end
    end

  end
end
