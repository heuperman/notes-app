require_relative '../lib/notes-app.rb'

app = Notes_app.new
app.take_note("title", "body")
app.take_note("second_title", "second_body")

describe Notes_app do
# User can add a note with a title and a body
  it "Lets user add a note" do
    expect(app).to respond_to(:take_note)
  end
# User can see a list of all note titles.
  it "Lets the user see a list of titles" do
    expect {app.list}.to output("1. title\n2. second_title\n").to_stdout
  end
# User can pick a note and see its title and body.
  it "Lets the user pick a note and see the title and body" do
    expect{ app.show(1) }.to output("title\nbody\n").to_stdout
    expect{ app.show(2) }.to output("second_title\nsecond_body\n").to_stdout
  end
end
