class ApiControllerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :actions, type: :array, default: []

  def generate_api_controller
    template "controller.rb", "app/controllers/api/v1/#{plural_name}_controller.rb"
    actions.each do |action|
      @action = action
      template "schema.rb", "app/schemas/#{plural_name}/#{plural_name}_#{action}_schema.rb"
      template "use_case.rb", "app/use_cases/#{plural_name}/#{action}.rb"
    end
    template "presenter.rb", "app/presenters/#{singular_name}_presenter.rb"
    template "array_presenter.rb", "app/presenters/#{plural_name}_presenter.rb"
    template "spec.rb", "spec/requests/#{plural_name}_spec.rb"
  end
end
