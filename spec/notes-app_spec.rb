require '../lib/notes-app.rb'

describe 'Notes_app' do
  it "Allows user to add title" do
    expect(add_note("x")).to eq("x")
  end
  it "Allows user to add more notes" do
    expect(add_note("y")).to eq("y")
  end
  it "Shows user list of titles" do
    expect(show_notes).to eq("x")
  end
  it "Display title and body" do
    expect(display_note).to eq(["x", "y"])
  end

  context "notes list" do
    let(:note1) { "x" }

    let(:expected_output) { "x" }

    it "returns x" do
      add_note("x")
      expect { display_note }.to output(expected_output).to_stdout
    end
  end
end
