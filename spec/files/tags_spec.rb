require "rails_helper"

RSpec.describe "Tags API" do
  let(:parsed_response) do
    JSON.parse(response.body)
  end

  RSpec.shared_examples "tags invalid parameter format" do |parameter_name, incorrect_value|
    let(:request_params) { super().merge({ parameter_name => incorrect_value }) }
    it do
      subject
      expect(response).to have_http_status(400)
    end
    it { expect { subject }.to change { Tag.count }.by(0) }
    it do
      subject
      expect(parsed_response).to include("errors")
    end
  end

  context "GET #index" do
    let(:name) { "Breakfast" }
    let(:request_params) do
      {
        name: name
      }
    end
    subject { get "/api/v1/tags", params: request_params }

    describe "param validation" do
      # TODO: fill in param validation, examples:
      # it_behaves_like "tags invalid parameter format", :name, ""
      # it_behaves_like "tags invalid parameter format", :name, nil
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
    it { expect { subject }.to change { Tag.count }.by(1) }
  end

  context "GET #create" do
    let(:name) { "Breakfast" }
    let(:request_params) do
      {
        name: name
      }
    end
    subject { get "/api/v1/tags", params: request_params }

    describe "param validation" do
      # TODO: fill in param validation, examples:
      # it_behaves_like "tags invalid parameter format", :name, ""
      # it_behaves_like "tags invalid parameter format", :name, nil
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
    it { expect { subject }.to change { Tag.count }.by(1) }
  end

end
