class TagsPresenter < BasePresenter
  def initialize(tags)
    @tags = tags
  end

  def build_many(*representations, **keyword_representations)
    @tags.map do |tag|
      TagPresenter.new(tag).build(*representations, keyword_representations)
    end
  end
end
