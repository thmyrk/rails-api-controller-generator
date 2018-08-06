class <%= class_name.pluralize %>Presenter < BasePresenter
  def initialize(<%= plural_name %>)
    @<%= plural_name %> = <%= plural_name %>
  end

  def build_many(*representations, **keyword_representations)
    @<%= plural_name %>.map do |exercise|
      <%= class_name %>Presenter.new(exercise).build(*representations, keyword_representations)
    end
  end
end
