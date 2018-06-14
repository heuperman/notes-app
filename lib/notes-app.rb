# NotesApp for storing user notes
class NotesApp
  def initialize
    @notes = []
  end

  def take_note(title, body)
    @notes << { title: title, body: body }
  end

  def list
    @notes.each_with_index do |note, i|
      puts "#{i + 1}. #{note[:title]}"
    end
  end

  def show(number)
    puts @notes[number - 1][:title]
    puts @notes[number - 1][:body]
  end
end
