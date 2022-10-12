module Thesis
  class Engine < ::Rails::Engine
    # isolate_namespace Thesis # We're accessing the application controller, so we can't do this.
    initializer 'thesis.action_controller' do |app|
      require "app/controllers/controller_helpers"
      require "app/controllers/thesis_controller"

      ActiveSupport.on_load(:action_controller) do
        include ::Thesis::ControllerHelpers
        helper_method :current_page, :root_pages, :page_is_editable?, :thesis_editor
      end
    end
  end
end
