class <%= class_name.pluralize %><%= @action.classify %>Schema
  Schema = Dry::Validation.Params(BaseSchema) do
    # TODO: fill in schema. Example rule:
    # required(:name).filled(:str?).value(min_size?: 2)
  end
end
