class <%= class_name %>Presenter < BasePresenter
  def initialize(<%= singular_name %>)
    @<%= singular_name %> = <%= singular_name %>
  end

  def basic
    <%= singular_name %> = {}
    <%= singular_name %>[:id] = @<%= singular_name %>.id
    # TODO: fill in presenter
    <%= singular_name %>[:created_at] = @<%= singular_name %>.created_at
    <%= singular_name %>[:updated_at] = @<%= singular_name %>.updated_at
    <%= singular_name %>
  end
end
