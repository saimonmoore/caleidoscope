# Run the Shoes app
Shoes.setup do
  gem 'midiator >= 0.2.0'
end

require 'midiator'
 

module Utils
  include MIDIator::Notes

  INSTRUMENTS = {
    :piano1 => [1, 'Piano 1'],
    :piano2 => [2, 'Piano 2'],
    :piano3 => [3, 'Piano 3'],
    :honky_tonk => [4, 'Honky-tonk 1'],
    :epiano1 => [5, 'Electronic Piano 1'],
    :epiano1 => [6, 'Electronic Piano 2'],
    :harpsichord => [7, 'Harpsichord'],
    :clav => [8, 'Clav.'],
    :celesta => [9, 'Celesta'],
    :glockenspiel => [10, 'Glockenspiel'],
    :music_box => [11, 'Music Box'],
    :vibraphone => [12, 'Vibraphone'],
    :marimba => [13, 'Marimba'],
    :xylophone => [14, 'Xylophone'],
    :tubular_bell => [15, 'Tubular Bell'],
    :santur => [16, 'Santur'],
    :organ1 => [17, 'Organ 1'],
    :organ2 => [18, 'Organ 2'],
    :organ3 => [19, 'Organ 3'],
    :church_organ1 => [20, 'Church Organ 1'],
    :reed_organ => [21, 'Reed Organ'],
    :accordion_fr => [22, 'French Accordion'],
    :harmonica => [23, 'Harmonica'],
    :bandoneon => [24, 'Bandoneon'],
    :nylon_string_guitar => [25, 'Nylon String Guitar'],
    :steel_string_guitar => [26, 'Steel String Guitar'],
    :jazz_guitar => [27, 'Jazz Guitar'],
    :clean_guitar => [28, 'Clean Guitar'],
    :muted_guitar => [29, 'Muted Guitar'],
    :overdrive_guitar => [30, 'Overdive Guitar'],
    :distortion_guitar => [31, 'Distortion Guitar'],
    :great_harmonics => [32, 'Great Harmonics'],
    :acoustic_bass => [33, 'Acoustic Bass'],
    :fingered_bass => [34, 'Fingered Bass'],
    :picked_bass => [35, 'Picked Bass'],
    :fretless_bass => [36, 'Fretless Bass'],
    :slap_bass1 => [37, 'Slap Bass 1'],
    :slap_bass2 => [38, 'Slap Bass 2'],
    :synth_bass1 => [39, 'Synth Bass 1'],
    :synth_bass2 => [40, 'Synth Bass 2'],
    :violin => [41, 'Violin'],
    :viola => [42, 'Viola'],
    :cello => [43, 'Cello'],
    :contrabass => [44, 'Contrabass'],
    :tremolostr => [45, 'Tremolo Str'],
    :pizzicatostr => [46, 'Pizzicato Str'],
    :harp => [47, 'Harp'],
    :timpani => [48, 'Timpani'],
    :strings => [49, 'Strings'],
    :slow_strings => [50, 'Slow Strings'],
    :syn_strings1 => [51, 'Syn Strings 1'],
    :syn_strings2 => [52, 'Syn Strings 2'],
    :choir_aahs => [53, 'Choir Aahs'],
    :voice_oohs => [54, 'Voice Oohs'],
    :syn_vox => [55, 'Syn Vox'],
    :orchestra_hit => [56, 'Orchestra Hit'],
    :trumpet => [57, 'Trumpet'],
    :trombone => [58, 'Trombone'],
    :tuba => [59, 'Tuba'],
    :muted_trumpet => [60, 'Muted Trumpet'],
    :french_horns => [61, 'French Horns'],
    :brass_1 => [62, 'Brass 1'],
    :synth_brass_1 => [63, 'Synth Brass 1'],
    :synth_brass_2 => [64, 'Synth Brass 2'],
    :alto_sax => [66, 'Alto Sax'],
    :tenor_sax => [67, 'Tenor Sax'],
    :baritone_sax => [68, 'Baritone Sax'],
    :oboe => [69, 'Oboe'],
    :english_horn => [70, 'Oboe'],
    :bassoon => [71, 'Bassoon'],
    :clarinet => [72, 'Clarinet'],
    :picollo => [73, 'Piccolo'],
    :flute => [74, 'Flute'],
    :recorder => [75, 'Recorder'],
    :pan_flute => [76, 'Pan Flute'],
    :bottle_blow => [77, 'Bottle Blow'],
    :shakuhachi => [78, 'Shakuhachi'],
    :whistle => [79, 'Whistle'],
    :ocarina => [80, 'Ocarina'],
    :square_wave => [81, 'Square Wave'],
    :saw_wave => [82, 'Saw Wave'],
    :syn_calliope => [83, 'Syn Calliope'],
    :chiffer_lead => [84, 'Chiffer Lead'],
    :charang => [85, 'Charang'],
    :solo_vox => [86, 'Solo Vox'],
    :saw_wave5 => [87, '5th Saw Wave'],
    :bass_n_lead => [88, 'Bass & Lead'],
    :fantasia => [89, 'Fantasia'],
    :warm_pad => [90, 'Warm Pad'],
    :polysynth => [91, 'Polysynth'],
    :space_voice => [92, 'Space Voice'],
    :bowed_glass => [93, 'Bowed Glass'],
    :metal_pad => [94, 'Metal Pad'],
    :halo_pad => [95, 'Halo Pad'],
    :sweep_pad => [96, 'Sweep Pad'],
    :ice_rain => [97, 'Ice Rain'],
    :sound_track => [98, 'Soundtrack'],
    :crystal => [99, 'Crystal'],
    :crystal => [99, 'Crystal'],
    :atmosphere => [100, 'Atmosphere'],
    :brightness => [101, 'Brightness'],
    :goblin => [102, 'Goblin'],
    :echo_drops => [103, 'Echo Drops'],
    :echo_bell => [104, 'Echo Bell'],
    :sitar => [105, 'Sitar'],
    :banjo => [106, 'Banjo'],
    :shamisen => [107, 'Shamisen'],
    :koto => [108, 'Koto'],
    :kalimba => [109, 'Kalimba'],
    :bagpipe => [110, 'Bagpipe'],
    :fiddle => [111, 'Fiddle'],
    :shanai => [112, 'Shanai'],
    :tinkle_bell => [113, 'Tinkle Bell'],
    :agogo => [114, 'Agogo'],
    :steel_drums => [115, 'Steel Drums'],
    :woodblock => [116, 'Woodblock'],
    :taiko => [117, 'Taiko'],
    :melo_tom1 => [118, 'Melo. Tom 1'],
    :synth_drum1 => [119, 'Synth Drum'],
    :reverse_cymbal => [120, 'Reverse Cymbal'],
    :guitar_fret_noise => [121, 'Guitar Fret Noise'],
    :breath_noise => [122, 'Breath Noise'],
    :seashore => [123, 'Seashore'],
    :bird => [124, 'Bird'],
    :telephone1 => [125, 'Telephone 1'],
    :helicopter => [126, 'Helicopter'],
    :applause => [127, 'Applause'],
    :gun_shot => [128, 'Gun Shot']
  }
  
  NOTES = {
    :q => C4,
    :w => Cs4,
    :e => D4,
    :r => Eb4,
    :t => F4,
    :y => Fs4,
    :u => G4,
    :i => Gs4,
    :o => A4,
    :p => Bb4,
    
    :a => B4,
    :s => C5,
    :d => Cs5,
    :e => D5,
    :f => Eb5,
    :g => E5,
    :h => F5,
    :j => Fs5,
    :k => G5,
    :l => Gs5,
    
    :z => A5,
    :x => Bb5,
    :c => B5,
    :v => C6,
    :b => Cs6,
    :n => D6,
    :m => Eb6
  }
    
  def key_to_note(key)
    NOTES[key.intern]
  end
  
  def select_instrument(midi, instrument)
    @instrument = instrument    
    midi.program_change(0, INSTRUMENTS[@instrument][0])
  end
  
  def select_instrument_message
    "Choose an instrument (#{@instrument}):"
  end
  
  def recognize_history
    case @keypress_history.join('')
      when /saimon/, /about/
        alert("Done by Sofia's father...November 2008")
        @keypress_history.clear
    end
  end
  
  def shoes_colours
    (Shoes::COLORS.keys*"\n").split("\n").sort
  end
  
  def random_colour
    eval(shoes_colours[rand(shoes_colours.length)])
  end
  
  def random_shape
    colour = random_colour
    stroke(colour)
    fill(colour)
    eval "draw_random_#{%w(rect oval star)[rand(3)]}"
  end
  
  def draw_random_oval
    @oval = oval :top => rand(200), :left => (51 + rand(300)), :radius => (10 + rand(80))
    animate_shape(@oval)
  end
  
  def draw_random_rect
    @rect = rect :top => rand(200), :left => (51 + rand(300)), :curve => (1..5).rand, :width => (10 + rand(80)),  :height => (10 + rand(80))
    animate_shape(@rect)
  end
  
  def draw_random_star
    outer = 50 + rand(50.0)
    inner = (10.0..50.0).rand
    @star = star rand(200), (51 + rand(300)), (5 + rand(10)), outer, inner
    animate_shape(@star)
  end  
  
  def animate_shape(some_shape)
    Thread.new {
      start = Time.now
      @animation = animate(5) do |i|
        if Time.now < (start + 3)
          set_time_between_frames(0.0)
          some_shape.move((0..400).rand, (0..400).rand)
        else
          set_time_between_frames(@time_between_frames + 1.0 / @speed)
          some_shape.move((0..400).rand, (0..400).rand)
          fade(some_shape, @animation, (1 - fade_interpolant))
        end
      end
    }.join
  end
  
  def fade(some_shape, animation, opacity=1.0)
    r,g,b = some_shape.style[:fill].red, some_shape.style[:fill].green, some_shape.style[:fill].blue
    stroke(rgb(r,g,b, 0.45 * opacity))
    fill(rgb(r,g,b, 0.45 * opacity))
    if opacity <= 0
      animation.remove
      some_shape.remove
    end
  end  
  
  def set_time_between_frames(time)
    @time_between_frames = [time, @fade_period].min
    # scale the low-to-high half of a cosine curve and fit that between 0 and 1.
    # factoring this into critter opacity makes for a smooth fade between two generations.
    @fade_interpolant = (1 - Math.cos(@time_between_frames * Math::PI / @fade_period)) / 2
  end 
  
  def fade_interpolant
    @fade_interpolant
  end  
   
  
end

Shoes.app :width => 808, :height => 646, :resizable => false do
  extend Utils
    
  @keypress_history = []
  
  # Setup midi driver
  @midi = MIDIator::Interface.new
  @midi.autodetect_driver
  select_instrument(@midi, :piano1)
  # @midi.instruct_user!
  
  @speed = 25
  @time_between_frames = 0.0 #0.0 to 1.0 linearly, loop each frame
  @fade_period = 0.40 #fade during the first __% of the time between frames
  @fade_interpolant = 0.0 #0.0 to 1.0 on an s-curve
  
  background black
  
  stack(:top => 0, :left => 0, :attach => Window) {
    flow(:height => 50) {
      background azure
      @instrument_field = para(select_instrument_message)
      list_box :items => Utils::INSTRUMENTS.keys.map {|instrument| instrument.to_s } do |list|
        select_instrument(@midi, list.text.intern)  
        @instrument_field.text = select_instrument_message
      end        
    }

    flow {
      background black

      keypress do |k|
        case k
          when String
            @midi.play key_to_note(k)
            @keypress_history << k
            random_shape
            recognize_history
        end
      end
    }    
  }


end
