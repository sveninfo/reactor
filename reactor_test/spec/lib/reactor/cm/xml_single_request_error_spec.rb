require 'spec_helper'

describe "Error messages" do
  let(:obj) { Obj.find_by_path('/invalid_object_for_release') }

  it "does not contain <phrase>" do
    expect { obj.release! }.to raise_error { |error|
      error.message.should_not match(/<phrase>/)
    }
  end
end
