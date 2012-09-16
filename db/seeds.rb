lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed lorem in mauris condimentum eleifend. Proin vitae enim vel orci semper auctor sed sit amet ipsum. Maecenas sapien lacus, vestibulum quis egestas eget, molestie tristique turpis. Quisque sodales imperdiet enim ac tempus. Donec venenatis sodales tortor, sed bibendum arcu scelerisque in. Duis vulputate feugiat ullamcorper. Quisque molestie libero et mauris rutrum scelerisque. Donec scelerisque tincidunt ullamcorper. Nam cursus tincidunt nisi quis gravida. Donec aliquam lacus ac enim ultricies non pulvinar massa luctus. Sed imperdiet ante quis tortor porttitor quis rutrum tellus pretium. Aenean euismod imperdiet aliquet. Phasellus at neque a eros bibendum viverra quis vel orci. Maecenas et augue erat, sit amet porttitor nibh."

### Users and settings ###
User.create! name: "Yard Admin", email: "admin@example.com", password: "changeme"
Settings.create

### Genres ###
{
  Rock: ["Hard rock", "Alt rock", "Britpop"],
  Electronic: ["Synthpop", "Dubstep", "Electro"],
  Jazz: ["Bebop", "Swing", "Jazz fusion"]
}.each_pair do |genre, subgenres|
  g = Genre.create(name: genre)
  subgenres.each { |sub| Genre.create(name: sub, parent_id: g.id) }
end

### Artists ###
antani = Artist.create(name: "The Antanis", country: "Italy", biography: lorem, homepage_url: "http://antani.co.uk/")
iggy = Artist.create(name: "Iggy Pop", country: "United States", biography: lorem, homepage_url: "http://www.iggypop.com/")
silvia = Artist.create(name: "Greedy Silvia And The Kinky", country: "United Kingdom")

### Release Types ###
lp = ReleaseType.create name: "LPs"
ep = ReleaseType.create name: "EPs"
single = ReleaseType.create name: "Singles"
compilation = ReleaseType.create name: "Compilations"

### Releases ###
r1 = Release.create(name: "Antani & Friends")
r1.artists = Artist.all
r1.release_type = compilation
r1.genre = Genre.find_by_name "Hard rock"
r1.tracklist = <<HTML
<ol>
<li>Crank Up The Instinct</li>
<li>Heat Taunts You</li>
<li>Hospitality Undiscovered</li>
<li>Shock Is All There Is</li>
<li>Techniques Are No Excuse</li>
<li>Impossible Courtship</li>
<li>Greased Fear</li>
<li>Window Of Brilliance</li>
<li>Explosive Humility</li>
<li>64 Thousand Dollar Spotlight</li>
</ol>
HTML
r1.published = true
a1 = Railsyard::Gallery::Image.create
a1.imageable_relation = "artwork"
a1.imageable = r1
a1.image = File.read(File.expand_path(File.join __FILE__, "../../files/img16.jpg"))
a1.save!
r1.save!

r2 = Release.create(name: "Destructive Parade")
r2.artists << silvia
r2.release_type = lp
r2.genre = Genre.find_by_name "Synthpop"
r2.tracklist = <<HTML
<ol>
<li>Holy Smiles</li>
<li>Broken Grace</li>
<li>All I Have Is My Scheme</li>
<li>Limited Contempt</li>
<li>Horny Communication</li>
<li>Contempt Can't Stop Me</li>
<li>Affections On A Rope</li>
<li>Total Plans</li>
<li>Speed Will Find A Way</li>
<li>Destructive Parade</li>
</ol>
HTML
r2.published = true
a2 = Railsyard::Gallery::Image.create
a2.imageable_relation = "artwork"
a2.imageable = r2
a2.image = File.read(File.expand_path(File.join __FILE__, "../../files/img25.jpg"))
a2.save!
r2.save!
