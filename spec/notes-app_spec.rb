require '../lib/notes-app.rb'

describe 'Notes_app' do
  it "Allows user to add title" do
    expect(add_note("x")).to eq("x")
  end
  it "Shows user list of titles" do
    expect(show_notes).to eq("x")
  end
  it "Display title and body" do
    expect(display_note("x","y")).to eq("x","y")
  end
end
