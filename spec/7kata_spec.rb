require 'rspec'
require "./lib/7kata/add_length"
require "./lib/7kata/vowel_2_index"
require "./lib/7kata/encode"
require "./lib/7kata/isogram"

RSpec.describe AddLength do
  it 'returns an array/list with the length of each word added to each element' do
    expect(AddLength.add_length('apple ban')).to eq(["apple 5", "ban 3"])
    expect(AddLength.add_length('you will win')).to eq(["you 3", "will 4", "win 3"])
    expect(AddLength.add_length('you')).to eq(["you 3"])
    expect(AddLength.add_length('y')).to eq(["y 1"])
  end

  it "takes in a string and replaces all the vowels with their index positions" do
    expect(Vowel2Index.vowel_2_index('this is my string')).to eq('th3s 6s my str15ng')
    expect(Vowel2Index.vowel_2_index('Codewars is the best site in the world')).to eq('C2d4w6rs 10s th15 b18st s23t25 27n th32 w35rld')
    expect(Vowel2Index.vowel_2_index('Tomorrow is going to be raining')).to eq('T2m4rr7w 10s g1415ng t20 b23 r2627n29ng')
    expect(Vowel2Index.vowel_2_index('')).to eq('')
    expect(Vowel2Index.vowel_2_index("90's cornhole Austin, pickled butcher yr messenger bag gastropub next level leggings listicle meditation try-hard Vice. Taxidermy gastropub gentrify, meh fap organic ennui fingerstache pickled vegan. Seitan sustainable PBR&B cornhole VHS. Jean shorts actually bitters ugh blog Intelligentsia. Artisan Kickstarter DIY, fixie cliche salvia lo-fi four loko. PBR&B Odd Future ugh fingerstache cray Wes Anderson chia typewriter iPhone bespoke four loko, Intelligentsia photo booth direct trade. Aesthetic Tumblr Portland XOXO squid, synth viral listicle skateboard four dollar toast cornhole Blue Bottle semiotics.")).to eq("90's c7rnh11l13 1516st19n, p24ckl28d b32tch36r yr m43ss46ng49r b53g g57str61p63b n67xt l72v74l l78gg81ngs l87st90cl93 m96d98t100t102103n try-h111rd V116c118. T122x124d126rmy g132str136p138b g142ntr146fy, m152h f156p 159rg162n164c 167nn170171 f174ng177rst181ch184 p187ckl191d v195g197n. S202203t205n s209st212213n215bl218 PBR&B c227rnh231l233 VHS. J241242n sh247rts 252ct255256lly b262tt265rs 269gh bl275g 278nt281ll284g286nts290291. 294rt297s299n K303ckst308rt311r D315Y, f320x322323 cl327ch330 s333lv336337 l340-f343 f346347r l351k353. PBR&B 362dd F367t369r371 373gh f378ng381rst385ch388 cr392y W396s 399nd402rs405n ch410411 typ416wr419t421r 424Ph427n429 b432sp435k437 f440441r l445k447, 450nt453ll456g458nts462463 ph467t469 b472473th d478r480ct tr486d488. 491492sth496t498c T502mblr P509rtl513nd X518X520 sq524525d, synth v536r538l l542st545cl548 sk552t554b556557rd f562563r d567ll570r t574575st c580rnh584l586 Bl590591 B594ttl598 s601m603604t606cs.")
  end

  it "takes in a string and replaces all the letter with their positions in the english alphabet" do
    expect(Encode.encode('abc')).to eq('123')
    expect(Encode.encode('ABCD')).to eq('1234')
    expect(Encode.encode('ZzzzZ')).to eq('2626262626')
    expect(Encode.encode('abc-#@5')).to eq('123-#@5')
    expect(Encode.encode('this is a long string!! Please [encode] @C0RrEctly')).to eq('208919 919 1 1215147 1920189147!! 161251195 [51431545] @30181853201225')
  end

  it "can find isograms" do
    expect(Isogram.is_isogram("Dermatoglyphics")).to eq(true)
    expect(Isogram.is_isogram("isogram")).to eq(true)
    expect(Isogram.is_isogram("aba")).to eq(false)
    expect(Isogram.is_isogram("moOse")).to eq(false)
    expect(Isogram.is_isogram("isIsogram")).to eq(false)
    expect(Isogram.is_isogram("")).to eq(true)
  end
end
