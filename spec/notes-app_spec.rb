require '../lib/notes-app.rb'

describe Notes_app do
  it "Allows user to add title" do
    expect(add_note("x")).to eq(nil)
  end
end
