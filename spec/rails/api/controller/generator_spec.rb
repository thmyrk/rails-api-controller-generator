RSpec.describe Rails::Api::Controller::Generator, type: :generator do
  it "has a version number" do
    expect(Rails::Api::Controller::Generator::VERSION).not_to be nil
  end
end
