
# Tools:
#
#     RSpec: a testing framework for Rails 3.x, 4.x and 5.0. — The framework to handle our testing activities
#     Database cleaner: to ensure a clean state for database during tests, and also to prevent unnecessarily cluttering the test database with dummy data each time a test is run
#     FactoryGirls: a fixtures replacement, which helps to build attributes for resources.
#     Faker: A library for generating fake data such as names, addresses, and phone numbers.




sct = Theater.new
sct.location = "201 Thomas St, Seattle, WA 98109"
sct.name = "Seattle Children's Theater"
sct.klass = "SeattleChildrensTheater"
sct.save
sct.updated_at = Time.now.utc - 90000
sct.save



sct_shows = [{:title=>"Roald Dahl’s Charlie and the Chocolate Factory",
  :start_date=>Wed, 31 Jul 2019,
  :end_date=>Sun, 11 Aug 2019,
  :description=>
   "Roald Dahl’s treasured tale is now Broadway’s Golden Ticket! It’s the perfect recipe for a delectable treat: songs from the original film, including “Pure Imagination,” “The Candy Man” and “I’ve Got a Golden Ticket,” alongside a toe-tapping and ear-tickling new score from the songwriters of Hairspray.Willy Wonka is opening his marvelous and mysterious chocolate factory…to a lucky few. That includes Charlie Bucket, whose bland life is about to sweeten with color and confection beyond his wildest dreams. He and four other golden ticket winners will embark on a mesmerizing joyride through a world of pure imagination. Now’s your chance to experience the wonders of Wonka like never before—get ready for Oompa-Loompas, incredible inventions, the great glass elevator and more, more, more at this everlasting showstopper!\"A big treat read to satisfy any sweet tooth looking for a golden ticket!\"        - Entertainment Weekly\"Satisfies any sweet tooth!\"        - Time Magazine\"The sweetest new show on Broadway reimagined for a new generation.\"        - ABC",
  :theater=>sct},
 {:title=>"Chicago",
  :start_date=>Thu, 19 Sep 2019,
  :end_date=>Sun, 22 Sep 2019,
  :description=>
   "Set in the legendary city during the roaring “jazz hot” 20s, Chicago tells the story of two rival vaudevillian murderesses locked up in Cook County Jail. Nightclub star Velma’s serving time for killing her husband and sister after finding the two in bed together. Driven chorus girl Roxie’s been tossed in the joint for bumping off the lover she’s been cheating on her husband with. Not one to rest on her laurels, Velma enlists the help of prison matron Mama Morton and slickster lawyer Billy Flynn, who turn Velma’s incarceration into a murder-of-the-week media frenzy, thus preparing the world for a splashy showbiz comeback. But Roxie’s got some of her own tricks up her sleeve…\"‘Chicago’ still glitters hypnotically.\"        - The New York Times",
  :theater=>sct},
 {:title=>"Miss Saigon",
  :start_date=>Tue, 29 Oct 2019,
  :end_date=>Sun, 03 Nov 2019,
  :description=>
   "Experience the acclaimed new production of the legendary musical Miss Saigon, from the creators of Les Misérables. This is the epic story of a young Vietnamese woman named Kim. In a bar run by a notorious character called The Engineer, Kim meets an American G.I. That encounter will change their lives forever. Featuring stunning spectacle, a sensational cast of 42, and a soaring score including Broadway hits like “Last Night of the World,” “The Movie in My Mind,” and “The Heat is On in Saigon,” this is a theatrical event you will never forget.\"A dynamite Broadway revival.\"        - The New Yorker\"A real big beast of a blockbuster.\"        - Time Out\"A stunning and jaw-dropping spectacle! This is what people mean when they talk about 'A Broadway Show.'\"        - Variety",
  :theater=>sct},
 {:title=>"The Hard Nut",
  :start_date=>Fri, 06 Dec 2019,
  :end_date=>Sun, 15 Dec 2019,
  :description=>
   "THE HARD NUT is a cascade of wit and wintry beauty. It’s a lavish, gender-bent love letter to the classic The Nutcracker. Based on E.T.A Hoffman’s The Nutcracker and the Mouse King, Mark Morris’ version takes it from the straight-laced 1890s to the swinging 70s, with raucous parties, dancing G.I. Joes, whimsical costumes, and a Waltz of the Snowflakes like no other. Based on the comic book art of Charles Burns and featuring Tchaikovsky’s complete original score, performed live by a 53-piece orchestra conducted by Colin Fowler , Morris’ lyrical, modern retelling playfully preserves the warm spirit of an essential holiday tradition.",
  :theater=>sct},
 {:title=>"Summer: The Donna Summer Musical",
  :start_date=>Tue, 31 Dec 2019,
  :end_date=>Sat, 05 Jan 2019,
  :description=>
   "Told through the dramatic lens of her final concert, Summer: The Donna Summer Musical presents the complexities and conflicts the famed songwriter and singer faced in her meteoric rise and descent. The show features a score with more than 20 of Summer’s classic hits including “Love to Love You, Baby,” “Bad Girls” and “Hot Stuff.”\"The audience reaches a fever pitch. If you're lookin' for hot stuff on Broadway, you've come to the right place.\"        - Entertainment Weekly\"The new must-see Broadway musical of the moment. Don't miss it!\"        - Vogue\"Pure bliss!\"        - The Hollywood Reporter",
  :theater=>sct},
 {:title=>"Fiddler on the Roof",
  :start_date=>Mon, 14 Jan 2019,
  :end_date=>Sat, 19 Jan 2019,
  :description=>
   "Tony®-winning director Bartlett Sher and the team behind South Pacific, The King and I and 2017 Tony-winning Best Play Oslo, bring a fresh and authentic vision to this beloved theatrical masterpiece from Tony winner Joseph Stein and Pulitzer Prize winners Jerry Bock and Sheldon Harnick.The original production won ten Tony Awards, including a special Tony for becoming the longest-running Broadway musical of all time. You’ll be there when the sun rises on this new production, with stunning movement and dance from acclaimed Israeli choreographer Hofesh Shechter, based on the original staging by Jerome Robbins. A wonderful cast and a lavish orchestra tell this heartwarming story of fathers and daughters, husbands and wives, and the timeless traditions that define faith and family.Featuring the Broadway classics “Tradition,” “If I Were a Rich Man,” “Sunrise, Sunset,” “Matchmaker, Matchmaker” and “To Life,” FIDDLER ON THE ROOF will introduce a new generation to this uplifting celebration that raises its cup to joy! To love! To life!\"Electrifying!\"        - The New York Times\"★ ★ ★ ★ ★ A Magnificent, Life-Affirming Production.\"        - Time Out New York\"A Remarkable Achievement. This is a triumph.\"        - Associated Press",
  :theater=>sct},
 {:title=>"Disney’s Frozen",
  :start_date=>Thu, 07 Feb 2019,
  :end_date=>Fri, 01 Mar 2019,
  :description=>
   "Frozen is the timeless tale of two sisters, pulled apart by a mysterious secret. As one young woman struggles to find her voice and harness her powers within, the other embarks on an epic adventure to bring her family together once and for all. Both are searching for love. They just don’t know where to find it.\"Joyous and triumphant! Wonderful! A really magical experience.\"        - WABC-TV\"It will give you chills! Amazing special effects, eye-popping costumes and incredible performances.\"        - Newsday",
  :theater=>sct},
 {:title=>"The Play That Goes Wrong",
  :start_date=>Sun, 21 Apr 2019,
  :end_date=>Fri, 26 Apr 2019,
  :description=>
   "What would happen if Sherlock Holmes and Monty Python had an illegitimate Broadway baby? You’d get The Play That Goes Wrong, Broadway and London’s award-winning smash comedy! Called “a gut-busting hit” (The New York Times) and “the funniest play Broadway has ever seen” (HuffPost), this classic murder mystery is chock-full of mishaps and madcap mania delivering “a riotous explosion of comedy” (Daily Beast) that is “tons of fun for all ages” (HuffPost)!\"A gut-busting hit!\"        - The New York Times\"The funniest play Broadway has ever seen!\"        - Huffington Post\"Hilarious! Nonstop pandemonium.\"        - Entertainment Weekly",
  :theater=>sct},
 {:title=>"The Book of Mormon",
  :start_date=>Sun, 19 May 2019,
  :end_date=>Fri, 31 May 2019,
  :description=>
   "The New York Times calls it “the best musical of the century.” The Washington Post says, “It is the kind of evening that restores your faith in musicals.” And Entertainment Weekly says, “Grade A: the funniest musical of all time.” Jimmy Fallon of The Tonight Show calls it “Genius. Brilliant. Phenomenal.” It’s The Book of Mormon, the nine-time Tony Award-winning Best Musical.This outrageous musical comedy follows the misadventures of a mismatched pair of missionaries, sent halfway across the world to spread the Good Word. Now with standing room only productions in London, on Broadway, and across North America, The Book of Mormon has truly become an international sensation. Contains explicit language.\"The best musical of this century.\"        - The New York Times\"The funniest musical of all time.\"        - Entertainment Weekly\"★★★★★ Musical comedy heaven!\"        - Time Out New York",
  :theater=>sct},
 {:title=>"Anastasia",
  :start_date=>Sun, 16 Jun 2019,
  :end_date=>Fri, 21 Jun 2019,
  :description=>
   "Inspired by the beloved films, the romantic and adventure-filled new musical Anastasia is on a journey across America at last!From the Tony Award-winning creators of the Broadway classic Ragtime, this dazzling show transports us from the twilight of the Russian Empire to the euphoria of Paris in the 1920s, as a brave young woman sets out to discover the mystery of her past. Pursued by a ruthless Soviet officer determined to silence her, Anya enlists the aid of a dashing conman and a lovable ex-aristocrat. Together, they embark on an epic adventure to help her find home, love, and family.Anastasia features a book by celebrated playwright Terrence McNally, a lush new score by Stephen Flaherty (music) and Lynn Ahrens (lyrics) with direction by Tony Award winner Darko Tresnjak.\"A monster hit!\"        - The New York Times\"Irresistible!\"        - Variety\"A serious hit!\"        - NBC-TV",
  :theater=>sct},
 {:title=>"Mean Girls",
  :start_date=>Sun, 04 Aug 2019,
  :end_date=>Fri, 09 Aug 2019,
  :description=>
   "Cady Heron may have grown up on an African savanna, but nothing prepared her for the wild and vicious ways of her strange new home: suburban Illinois. How will this naïve newbie rise to the top of the popularity pecking order? By taking on The Plastics, a trio of lionized frenemies led by the charming but ruthless Regina George. But, when Cady devises a plan to end Regina’s reign, she learns the hard way that you can’t cross a Queen Bee without getting stung.\"'Mean Girls' is not a regular musical. It's a cool musical. A dazzling, hilarious marvel!\"        - Entertainment Weekly\"Hilarious! A smart, splashy new musical with immense energy and a wicked sense of humor. It's witty, worldly and wise!\"        - New York Magazine",
  :theater=>sct}]
