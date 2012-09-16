lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed lorem in mauris condimentum eleifend. Proin vitae enim vel orci semper auctor sed sit amet ipsum. Maecenas sapien lacus, vestibulum quis egestas eget, molestie tristique turpis. Quisque sodales imperdiet enim ac tempus. Donec venenatis sodales tortor, sed bibendum arcu scelerisque in. Duis vulputate feugiat ullamcorper. Quisque molestie libero et mauris rutrum scelerisque. Donec scelerisque tincidunt ullamcorper. Nam cursus tincidunt nisi quis gravida. Donec aliquam lacus ac enim ultricies non pulvinar massa luctus. Sed imperdiet ante quis tortor porttitor quis rutrum tellus pretium. Aenean euismod imperdiet aliquet. Phasellus at neque a eros bibendum viverra quis vel orci. Maecenas et augue erat, sit amet porttitor nibh."

### Users and settings ###
User.create! name: "Yard Admin", email: "admin@example.com", password: "changeme"
Settings.create( site_name: "Yard Records",
                 home_banner_text: '<h1><a href="/artists">THE ANTANIS</a></h1>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tellus orci, semper et ornare dictum, varius ut tellus. In consectetur, velit vel interdum fringilla, felis justo scelerisq urna, ut scelerisque enim elit id est. Sed felis libero, malesuada ut vestibulum aliquam, feugiat ut augue.Sed felis libero, malesuada ut vestibulum aliquam, feugiat ut.</p>
                                    <a href="/artists" class="banner-more"><span class="backcolr">Read More</span><span class="corner">&nbsp;</span></a>',
                 home_text: '<h1 class="heading colr">The best record label ever</h1>
                             <p>This is a made-up site to show the awesome features of the new Railsyard CMS. Log into the admin panel to unveil the power!</p>',
                 about_text: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Suspendisse ac eros nec sapien convallis vulputate rhoncus vel dui. Aliquam urna nunc, lacinia non aliquam in, lobortis at quam. Sed quis elit eu mauris egestas mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Suspendisse ac eros nec sapien convallis vulputate rhoncus vel dui. Aliquam urna nunc. Sed quis elit eu mauris egestas mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Suspendisse ac eros nec sapien convallis vulputate rhoncus vel dui. Aliquam urna nunc.</p>
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Suspendisse ac eros nec sapien convallis vulputate rhoncus vel dui. Aliquam urna nunc, lacinia non aliquam in, lobortis at quam. Sed quis elit eu mauris egestas mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Suspendisse ac eros nec sapien convallis vulputate rhoncus vel dui. Aliquam urna nunc. Sed quis elit eu mauris egestas mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Suspendisse ac eros nec sapien convallis vulputate rhoncus vel dui. Aliquam urna nunc.</p>',
                 contact_text: '<h3 class="colr">WE ARE ROCKING</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Suspendisse ac eros nec sapien convallis vulputate rhoncus vel dui. Aliquam urna nunc, lacinia non aliquam in, lobortis at quam. Sed quis elit eu mauris egestas mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum.</p>',
                 contact_address: 'Via Francesco Botticini 3 <br> 50143 - Firenze, Italy',
                 contact_phone: '+39 055 2345008',
                 contact_fax: '+39 055 2345008',
                 contact_email: 'info@cantierecreativo.net',
                 contact_latitude: 43.76980,
                 contact_longitude: 11.21545,
                 )

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
r1.release_date = Date.today
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
r2.release_date = Date.today
r2.published = true
a2 = Railsyard::Gallery::Image.create
a2.imageable_relation = "artwork"
a2.imageable = r2
a2.image = File.read(File.expand_path(File.join __FILE__, "../../files/img25.jpg"))
a2.save!
r2.save!
