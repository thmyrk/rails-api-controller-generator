require "rails_helper"

RSpec.describe "<%= class_name.pluralize %> API" do
  let(:parsed_response) do
    JSON.parse(response.body)
  end

  RSpec.shared_examples "<%= plural_name %> invalid parameter format" do |parameter_name, incorrect_value|
    let(:request_params) { super().merge({ parameter_name => incorrect_value }) }
    it do
      subject
      expect(response).to have_http_status(400)
    end
    it { expect { subject }.to change { <%= class_name %>.count }.by(0) }
    it do
      subject
      expect(parsed_response).to include("errors")
    end
  end
<% for action in actions %>
  context "GET #<%= action %>" do
    let(:name) { "Breakfast" }
    let(:request_params) do
      {
        name: name
      }
    end
    subject { get "/api/v1/<%= plural_name %>", params: request_params }

    describe "param validation" do
      # TODO: fill in param validation, examples:
      # it_behaves_like "<%= plural_name %> invalid parameter format", :name, ""
      # it_behaves_like "<%= plural_name %> invalid parameter format", :name, nil
    end

    describe "response" do
      before { subject }
      it { expect(response).to have_http_status(200) }
      it { expect(parsed_response).to be_empty }
    end

    it do
      subject
      expect(response).to have_http_status(200)
    end
    it { expect { subject }.to change { <%= class_name %>.count }.by(1) }
  end
<% end %>
end
