require "byebug"
require "fakefs"

RSpec.describe Rails::Api::Controller::Generator, type: :generator do
  subject do
    # FakeFS do
      Rails::Generators.invoke("api_controller", %w[test create update])
    # end
  end

  it "has a version number" do
    expect(Rails::Api::Controller::Generator::VERSION).not_to be nil
  end

  it "runs rake task successfully" do
    expect { subject }.not_to raise_error
  end

  it "generates array_presenter file" do
    expect { subject }.not_to raise_error
  end
end
