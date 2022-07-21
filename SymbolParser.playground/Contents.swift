//: A UIKit based Playground for presenting user interface
  
import SwiftUI

let toBeParsed = """
0.circle

0.circle.fill

0.square

0.square.fill

00.circle

00.circle.fill

00.square

00.square.fill

01.circle

01.circle.fill

01.square

01.square.fill

02.circle

02.circle.fill

02.square

02.square.fill

03.circle

03.circle.fill

03.square

03.square.fill

04.circle

04.circle.fill

04.square

04.square.fill

05.circle

05.circle.fill

05.square

05.square.fill

06.circle

06.circle.fill

06.square

06.square.fill

07.circle

07.circle.fill

07.square

07.square.fill

08.circle

08.circle.fill

08.square

08.square.fill

09.circle

09.circle.fill

09.square

09.square.fill

1.circle

1.circle.fill

1.magnifyingglass

1.square

1.square.fill

10.circle

10.circle.fill

10.square

10.square.fill

11.circle

11.circle.fill

11.square

11.square.fill

12.circle

12.circle.fill

12.square

12.square.fill

13.circle

13.circle.fill

13.square

13.square.fill

14.circle

14.circle.fill

14.square

14.square.fill

15.circle

15.circle.fill

15.square

15.square.fill

16.circle

16.circle.fill

16.square

16.square.fill

17.circle

17.circle.fill

17.square

17.square.fill

18.circle

18.circle.fill

18.square

18.square.fill

19.circle

19.circle.fill

19.square

19.square.fill

2.circle

2.circle.fill

2.square

2.square.fill

20.circle

20.circle.fill

20.square

20.square.fill

21.circle

21.circle.fill

21.square

21.square.fill

22.circle

22.circle.fill

22.square

22.square.fill

23.circle

23.circle.fill

23.square

23.square.fill

24.circle

24.circle.fill

24.square

24.square.fill

25.circle

25.circle.fill

25.square

25.square.fill

26.circle

26.circle.fill

26.square

26.square.fill

27.circle

27.circle.fill

27.square

27.square.fill

28.circle

28.circle.fill

28.square

28.square.fill

29.circle

29.circle.fill

29.square

29.square.fill

3.circle

3.circle.fill

3.square

3.square.fill

30.circle

30.circle.fill

30.square

30.square.fill

31.circle

31.circle.fill

31.square

31.square.fill

32.circle

32.circle.fill

32.square

32.square.fill

33.circle

33.circle.fill

33.square

33.square.fill

34.circle

34.circle.fill

34.square

34.square.fill

35.circle

35.circle.fill

35.square

35.square.fill

36.circle

36.circle.fill

36.square

36.square.fill

37.circle

37.circle.fill

37.square

37.square.fill

38.circle

38.circle.fill

38.square

38.square.fill

39.circle

39.circle.fill

39.square

39.square.fill

4.alt.circle

4.alt.circle.fill

4.alt.square

4.alt.square.fill

4.circle

4.circle.fill

4.square

4.square.fill

40.circle

40.circle.fill

40.square

40.square.fill

41.circle

41.circle.fill

41.square

41.square.fill

42.circle

42.circle.fill

42.square

42.square.fill

43.circle

43.circle.fill

43.square

43.square.fill

44.circle

44.circle.fill

44.square

44.square.fill

45.circle

45.circle.fill

45.square

45.square.fill

46.circle

46.circle.fill

46.square

46.square.fill

47.circle

47.circle.fill

47.square

47.square.fill

48.circle

48.circle.fill

48.square

48.square.fill

49.circle

49.circle.fill

49.square

49.square.fill

4k.tv

4k.tv.fill

5.circle

5.circle.fill

5.square

5.square.fill

50.circle

50.circle.fill

50.square

50.square.fill

6.alt.circle

6.alt.circle.fill

6.alt.square

6.alt.square.fill

6.circle

6.circle.fill

6.square

6.square.fill

7.circle

7.circle.fill

7.square

7.square.fill

8.circle

8.circle.fill

8.square

8.square.fill

9.alt.circle

9.alt.circle.fill

9.alt.square

9.alt.square.fill

9.circle

9.circle.fill

9.square

9.square.fill

a.circle

a.circle.fill

a.magnify

a.square

a.square.fill

abc

airplane

airplane.circle

airplane.circle.fill

airplayaudio

Usage restricted to AirPlay
airplayvideo

Usage restricted to AirPlay
airpod.left

airpod.right

airpodpro.left

airpodpro.right

airpods

Usage restricted to AirPods
airpodspro

Usage restricted to AirPods Pro
airport.express

Usage restricted to AirPort Express
airport.extreme

Usage restricted to AirPort Extreme
airport.extreme.tower

Usage restricted to AirPort Extreme
alarm

alarm.fill

alt

amplifier

ant

ant.circle

ant.circle.fill

ant.fill

antenna.radiowaves.left.and.right

app

app.badge

app.badge.fill

app.fill

app.gift

app.gift.fill

appclip

applelogo

Usage restricted to Sign in with Apple
applescript

Usage restricted to AppleScript language
applescript.fill

Usage restricted to AppleScript language
appletv

Usage restricted to Apple TV
appletv.fill

Usage restricted to Apple TV
applewatch

Usage restricted to Apple Watch
applewatch.radiowaves.left.and.right

Usage restricted to Apple Watch
applewatch.slash

Usage restricted to Apple Watch
applewatch.watchface

Usage restricted to Apple Watch
apps.ipad

apps.ipad.landscape

apps.iphone

apps.iphone.badge.plus

apps.iphone.landscape

aqi.high

aqi.low

aqi.medium

archivebox

archivebox.circle

archivebox.circle.fill

archivebox.fill

arkit

Usage restricted to ARKit
arrow.2.squarepath

arrow.3.trianglepath

arrow.backward

arrow.backward.circle

arrow.backward.circle.fill

arrow.backward.square

arrow.backward.square.fill

arrow.clockwise

arrow.clockwise.circle

arrow.clockwise.circle.fill

arrow.clockwise.heart

arrow.clockwise.heart.fill

arrow.clockwise.icloud

Usage restricted to iCloud service
arrow.clockwise.icloud.fill

Usage restricted to iCloud service
arrow.counterclockwise

arrow.counterclockwise.circle

arrow.counterclockwise.circle.fill

arrow.counterclockwise.icloud

Usage restricted to iCloud service
arrow.counterclockwise.icloud.fill

Usage restricted to iCloud service
arrow.down

arrow.down.app

arrow.down.app.fill

arrow.down.backward

arrow.down.backward.circle

arrow.down.backward.circle.fill

arrow.down.backward.square

arrow.down.backward.square.fill

arrow.down.circle

arrow.down.circle.fill

arrow.down.doc

arrow.down.doc.fill

arrow.down.forward

arrow.down.forward.and.arrow.up.backward

arrow.down.forward.and.arrow.up.backward.circle

arrow.down.forward.and.arrow.up.backward.circle.fill

arrow.down.forward.circle

arrow.down.forward.circle.fill

arrow.down.forward.square

arrow.down.forward.square.fill

arrow.down.heart

arrow.down.heart.fill

arrow.down.left

arrow.down.left.circle

arrow.down.left.circle.fill

arrow.down.left.square

arrow.down.left.square.fill

arrow.down.left.video

Usage restricted to FaceTime app
arrow.down.left.video.fill

Usage restricted to FaceTime app
arrow.down.right

arrow.down.right.and.arrow.up.left

arrow.down.right.and.arrow.up.left.circle

arrow.down.right.and.arrow.up.left.circle.fill

arrow.down.right.circle

arrow.down.right.circle.fill

arrow.down.right.square

arrow.down.right.square.fill

arrow.down.square

arrow.down.square.fill

arrow.down.to.line

arrow.down.to.line.alt

arrow.forward

arrow.forward.circle

arrow.forward.circle.fill

arrow.forward.square

arrow.forward.square.fill

arrow.left

arrow.left.and.right

arrow.left.and.right.circle

arrow.left.and.right.circle.fill

arrow.left.and.right.righttriangle.left.righttriangle.right

arrow.left.and.right.righttriangle.left.righttriangle.right.fill

arrow.left.and.right.square

arrow.left.and.right.square.fill

arrow.left.arrow.right

arrow.left.arrow.right.circle

arrow.left.arrow.right.circle.fill

arrow.left.arrow.right.square

arrow.left.arrow.right.square.fill

arrow.left.circle

arrow.left.circle.fill

arrow.left.square

arrow.left.square.fill

arrow.left.to.line

arrow.left.to.line.alt

arrow.rectanglepath

arrow.right

arrow.right.circle

arrow.right.circle.fill

arrow.right.doc.on.clipboard

arrow.right.square

arrow.right.square.fill

arrow.right.to.line

arrow.right.to.line.alt

arrow.triangle.2.circlepath

arrow.triangle.2.circlepath.camera

arrow.triangle.2.circlepath.camera.fill

arrow.triangle.2.circlepath.circle

arrow.triangle.2.circlepath.circle.fill

arrow.triangle.2.circlepath.doc.on.clipboard

arrow.triangle.branch

arrow.triangle.capsulepath

arrow.triangle.merge

arrow.triangle.pull

arrow.triangle.swap

arrow.triangle.turn.up.right.circle

arrow.triangle.turn.up.right.circle.fill

arrow.triangle.turn.up.right.diamond

arrow.triangle.turn.up.right.diamond.fill

arrow.turn.down.left

arrow.turn.down.right

arrow.turn.left.down

arrow.turn.left.up

arrow.turn.right.down

arrow.turn.right.up

arrow.turn.up.forward.iphone

arrow.turn.up.forward.iphone.fill

arrow.turn.up.left

arrow.turn.up.right

arrow.up

arrow.up.and.down

arrow.up.and.down.and.arrow.left.and.right

arrow.up.and.down.circle

arrow.up.and.down.circle.fill

arrow.up.and.down.righttriangle.up.fill.righttriangle.down.fill

arrow.up.and.down.righttriangle.up.righttriangle.down

arrow.up.and.down.square

arrow.up.and.down.square.fill

arrow.up.and.person.rectangle.portrait

arrow.up.and.person.rectangle.turn.left

arrow.up.and.person.rectangle.turn.right

arrow.up.arrow.down

arrow.up.arrow.down.circle

arrow.up.arrow.down.circle.fill

arrow.up.arrow.down.square

arrow.up.arrow.down.square.fill

arrow.up.backward

arrow.up.backward.and.arrow.down.forward

arrow.up.backward.and.arrow.down.forward.circle

arrow.up.backward.and.arrow.down.forward.circle.fill

arrow.up.backward.circle

arrow.up.backward.circle.fill

arrow.up.backward.square

arrow.up.backward.square.fill

arrow.up.bin

arrow.up.bin.fill

arrow.up.circle

arrow.up.circle.fill

arrow.up.doc

arrow.up.doc.fill

arrow.up.doc.on.clipboard

arrow.up.forward

arrow.up.forward.app

arrow.up.forward.app.fill

arrow.up.forward.circle

arrow.up.forward.circle.fill

arrow.up.forward.square

arrow.up.forward.square.fill

arrow.up.heart

arrow.up.heart.fill

arrow.up.left

arrow.up.left.and.arrow.down.right

arrow.up.left.and.arrow.down.right.circle

arrow.up.left.and.arrow.down.right.circle.fill

arrow.up.left.and.down.right.and.arrow.up.right.and.down.left

arrow.up.left.and.down.right.magnifyingglass

arrow.up.left.circle

arrow.up.left.circle.fill

arrow.up.left.square

arrow.up.left.square.fill

arrow.up.message

Usage restricted to Messages app
arrow.up.message.fill

Usage restricted to Messages app
arrow.up.right

arrow.up.right.and.arrow.down.left.rectangle

arrow.up.right.and.arrow.down.left.rectangle.fill

arrow.up.right.circle

arrow.up.right.circle.fill

arrow.up.right.square

arrow.up.right.square.fill

arrow.up.right.video

Usage restricted to FaceTime app
arrow.up.right.video.fill

Usage restricted to FaceTime app
arrow.up.square

arrow.up.square.fill

arrow.up.to.line

arrow.up.to.line.alt

arrow.uturn.backward

arrow.uturn.backward.circle

arrow.uturn.backward.circle.badge.ellipsis

arrow.uturn.backward.circle.fill

arrow.uturn.backward.square

arrow.uturn.backward.square.fill

arrow.uturn.down

arrow.uturn.down.circle

arrow.uturn.down.circle.fill

arrow.uturn.down.square

arrow.uturn.down.square.fill

arrow.uturn.forward

arrow.uturn.forward.circle

arrow.uturn.forward.circle.fill

arrow.uturn.forward.square

arrow.uturn.forward.square.fill

arrow.uturn.left

arrow.uturn.left.circle

arrow.uturn.left.circle.badge.ellipsis

arrow.uturn.left.circle.fill

arrow.uturn.left.square

arrow.uturn.left.square.fill

arrow.uturn.right

arrow.uturn.right.circle

arrow.uturn.right.circle.fill

arrow.uturn.right.square

arrow.uturn.right.square.fill

arrow.uturn.up

arrow.uturn.up.circle

arrow.uturn.up.circle.fill

arrow.uturn.up.square

arrow.uturn.up.square.fill

arrowshape.bounce.forward

arrowshape.bounce.forward.fill

arrowshape.bounce.right

arrowshape.bounce.right.fill

arrowshape.turn.up.backward

arrowshape.turn.up.backward.2

arrowshape.turn.up.backward.2.circle

arrowshape.turn.up.backward.2.circle.fill

arrowshape.turn.up.backward.2.fill

arrowshape.turn.up.backward.circle

arrowshape.turn.up.backward.circle.fill

arrowshape.turn.up.backward.fill

arrowshape.turn.up.forward

arrowshape.turn.up.forward.circle

arrowshape.turn.up.forward.circle.fill

arrowshape.turn.up.forward.fill

arrowshape.turn.up.left

arrowshape.turn.up.left.2

arrowshape.turn.up.left.2.circle

arrowshape.turn.up.left.2.circle.fill

arrowshape.turn.up.left.2.fill

arrowshape.turn.up.left.circle

arrowshape.turn.up.left.circle.fill

arrowshape.turn.up.left.fill

arrowshape.turn.up.right

arrowshape.turn.up.right.circle

arrowshape.turn.up.right.circle.fill

arrowshape.turn.up.right.fill

arrowshape.zigzag.forward

arrowshape.zigzag.forward.fill

arrowshape.zigzag.right

arrowshape.zigzag.right.fill

arrowtriangle.backward

arrowtriangle.backward.circle

arrowtriangle.backward.circle.fill

arrowtriangle.backward.fill

arrowtriangle.backward.square

arrowtriangle.backward.square.fill

arrowtriangle.down

arrowtriangle.down.circle

arrowtriangle.down.circle.fill

arrowtriangle.down.fill

arrowtriangle.down.square

arrowtriangle.down.square.fill

arrowtriangle.forward

arrowtriangle.forward.circle

arrowtriangle.forward.circle.fill

arrowtriangle.forward.fill

arrowtriangle.forward.square

arrowtriangle.forward.square.fill

arrowtriangle.left

arrowtriangle.left.and.line.vertical.and.arrowtriangle.right

arrowtriangle.left.circle

arrowtriangle.left.circle.fill

arrowtriangle.left.fill

arrowtriangle.left.fill.and.line.vertical.and.arrowtriangle.right.fill

arrowtriangle.left.square

arrowtriangle.left.square.fill

arrowtriangle.right

arrowtriangle.right.and.line.vertical.and.arrowtriangle.left

arrowtriangle.right.circle

arrowtriangle.right.circle.fill

arrowtriangle.right.fill

arrowtriangle.right.fill.and.line.vertical.and.arrowtriangle.left.fill

arrowtriangle.right.square

arrowtriangle.right.square.fill

arrowtriangle.up

arrowtriangle.up.circle

arrowtriangle.up.circle.fill

arrowtriangle.up.fill

arrowtriangle.up.square

arrowtriangle.up.square.fill

aspectratio

aspectratio.fill

asterisk.circle

asterisk.circle.fill

at

at.badge.minus

at.badge.plus

at.circle

at.circle.fill

atom

australsign.circle

australsign.circle.fill

australsign.square

australsign.square.fill

b.circle

b.circle.fill

b.square

b.square.fill

backward

backward.end

backward.end.alt

backward.end.alt.fill

backward.end.fill

backward.fill

backward.frame

backward.frame.fill

badge.plus.radiowaves.forward

badge.plus.radiowaves.right

bag

bag.badge.minus

bag.badge.plus

bag.circle

bag.circle.fill

bag.fill

bag.fill.badge.minus

bag.fill.badge.plus

bahtsign.circle

bahtsign.circle.fill

bahtsign.square

bahtsign.square.fill

bandage

bandage.fill

banknote

banknote.fill

barcode

barcode.viewfinder

barometer

battery.0

battery.100

battery.100.bolt

battery.25

bed.double

bed.double.fill

bell

bell.badge

bell.badge.fill

bell.circle

bell.circle.fill

bell.fill

bell.slash

bell.slash.circle

bell.slash.circle.fill

bell.slash.fill

bicycle

bicycle.circle

bicycle.circle.fill

binoculars

binoculars.fill

bitcoinsign.circle

bitcoinsign.circle.fill

bitcoinsign.square

bitcoinsign.square.fill

bold

bold.italic.underline

bold.underline

bolt

bolt.badge.a

bolt.badge.a.fill

bolt.car

bolt.car.fill

bolt.circle

bolt.circle.fill

bolt.fill

bolt.fill.batteryblock

bolt.fill.batteryblock.fill

bolt.heart

bolt.heart.fill

bolt.horizontal

bolt.horizontal.circle

bolt.horizontal.circle.fill

bolt.horizontal.fill

bolt.horizontal.icloud

Usage restricted to iCloud service
bolt.horizontal.icloud.fill

Usage restricted to iCloud service
bolt.slash

bolt.slash.circle

bolt.slash.circle.fill

bolt.slash.fill

bonjour

Usage restricted to Bonjour networking
book

book.circle

book.circle.fill

book.closed

book.closed.fill

book.fill

bookmark

bookmark.circle

bookmark.circle.fill

bookmark.fill

bookmark.slash

bookmark.slash.fill

books.vertical

books.vertical.fill

brazilianrealsign.circle

brazilianrealsign.circle.fill

brazilianrealsign.square

brazilianrealsign.square.fill

briefcase

briefcase.fill

bubble.left

bubble.left.and.bubble.right

bubble.left.and.bubble.right.fill

bubble.left.fill

bubble.middle.bottom

bubble.middle.bottom.fill

bubble.middle.top

bubble.middle.top.fill

bubble.right

bubble.right.fill

building

building.2

building.2.crop.circle

building.2.crop.circle.fill

building.2.fill

building.columns

building.columns.fill

building.fill

burn

burst

burst.fill

bus

bus.doubledecker

bus.doubledecker.fill

bus.fill

c.circle

c.circle.fill

c.square

c.square.fill

calendar

calendar.badge.clock

calendar.badge.exclamationmark

calendar.badge.minus

calendar.badge.plus

calendar.circle

calendar.circle.fill

camera

camera.aperture

camera.badge.ellipsis

camera.circle

camera.circle.fill

camera.fill

camera.fill.badge.ellipsis

camera.filters

camera.metering.center.weighted

camera.metering.center.weighted.average

camera.metering.matrix

camera.metering.multispot

camera.metering.none

camera.metering.partial

camera.metering.spot

camera.metering.unknown

camera.on.rectangle

camera.on.rectangle.fill

camera.viewfinder

candybarphone

capslock

capslock.fill

capsule

capsule.fill

capsule.portrait

capsule.portrait.fill

captions.bubble

captions.bubble.fill

car

car.2

car.2.fill

car.circle

car.circle.fill

car.fill

cart

cart.badge.minus

cart.badge.plus

cart.circle

cart.circle.fill

cart.fill

cart.fill.badge.minus

cart.fill.badge.plus

case

case.fill

cedisign.circle

cedisign.circle.fill

cedisign.square

cedisign.square.fill

centsign.circle

centsign.circle.fill

centsign.square

centsign.square.fill

character

character.book.closed

character.book.closed.fill

chart.bar

chart.bar.doc.horizontal

chart.bar.doc.horizontal.fill

chart.bar.fill

chart.bar.xaxis

chart.pie

chart.pie.fill

checkerboard.rectangle

checkmark

checkmark.circle

checkmark.circle.fill

checkmark.icloud

Usage restricted to iCloud service
checkmark.icloud.fill

Usage restricted to iCloud service
checkmark.rectangle

checkmark.rectangle.fill

checkmark.rectangle.portrait

checkmark.rectangle.portrait.fill

checkmark.seal

checkmark.seal.fill

checkmark.shield

checkmark.shield.fill

checkmark.square

checkmark.square.fill

chevron.backward

chevron.backward.2

chevron.backward.circle

chevron.backward.circle.fill

chevron.backward.square

chevron.backward.square.fill

chevron.compact.down

chevron.compact.left

chevron.compact.right

chevron.compact.up

chevron.down

chevron.down.circle

chevron.down.circle.fill

chevron.down.square

chevron.down.square.fill

chevron.forward

chevron.forward.2

chevron.forward.circle

chevron.forward.circle.fill

chevron.forward.square

chevron.forward.square.fill

chevron.left

chevron.left.2

chevron.left.circle

chevron.left.circle.fill

chevron.left.slash.chevron.right

chevron.left.square

chevron.left.square.fill

chevron.right

chevron.right.2

chevron.right.circle

chevron.right.circle.fill

chevron.right.square

chevron.right.square.fill

chevron.up

chevron.up.chevron.down

chevron.up.circle

chevron.up.circle.fill

chevron.up.square

chevron.up.square.fill

circle

circle.bottomhalf.fill

circle.circle

circle.circle.fill

circle.dashed

circle.dashed.inset.fill

circle.fill

circle.fill.square.fill

circle.grid.2x2

circle.grid.2x2.fill

circle.grid.3x3

circle.grid.3x3.fill

circle.grid.cross

circle.grid.cross.down.fill

circle.grid.cross.fill

circle.grid.cross.left.fill

circle.grid.cross.right.fill

circle.grid.cross.up.fill

circle.lefthalf.fill

circle.righthalf.fill

circle.square

circle.tophalf.fill

circlebadge

circlebadge.2

circlebadge.2.fill

circlebadge.fill

circles.hexagongrid

circles.hexagongrid.fill

circles.hexagonpath

circles.hexagonpath.fill

clear

clear.fill

clock

clock.arrow.2.circlepath

clock.arrow.circlepath

clock.fill

cloud

cloud.bolt

cloud.bolt.fill

cloud.bolt.rain

cloud.bolt.rain.fill

cloud.drizzle

cloud.drizzle.fill

cloud.fill

cloud.fog

cloud.fog.fill

cloud.hail

cloud.hail.fill

cloud.heavyrain

cloud.heavyrain.fill

cloud.moon

cloud.moon.bolt

cloud.moon.bolt.fill

cloud.moon.fill

cloud.moon.rain

cloud.moon.rain.fill

cloud.rain

cloud.rain.fill

cloud.sleet

cloud.sleet.fill

cloud.snow

cloud.snow.fill

cloud.sun

cloud.sun.bolt

cloud.sun.bolt.fill

cloud.sun.fill

cloud.sun.rain

cloud.sun.rain.fill

coloncurrencysign.circle

coloncurrencysign.circle.fill

coloncurrencysign.square

coloncurrencysign.square.fill

comb

comb.fill

command

command.circle

command.circle.fill

command.square

command.square.fill

cone

cone.fill

contextualmenu.and.cursorarrow

control

cpu

creditcard

creditcard.circle

creditcard.circle.fill

creditcard.fill

crop

crop.rotate

cross

cross.case

cross.case.fill

cross.circle

cross.circle.fill

cross.fill

crown

crown.fill

cruzeirosign.circle

cruzeirosign.circle.fill

cruzeirosign.square

cruzeirosign.square.fill

cube

cube.fill

cube.transparent

cube.transparent.fill

curlybraces

curlybraces.square

curlybraces.square.fill

cursorarrow

cursorarrow.and.square.on.square.dashed

cursorarrow.click

cursorarrow.click.2

cursorarrow.click.badge.clock

cursorarrow.motionlines

cursorarrow.motionlines.click

cursorarrow.rays

cursorarrow.square

cylinder

cylinder.fill

cylinder.split.1x2

cylinder.split.1x2.fill

d.circle

d.circle.fill

d.square

d.square.fill

decrease.indent

decrease.quotelevel

delete.left

delete.left.fill

delete.right

delete.right.fill

deskclock

deskclock.fill

desktopcomputer

dial.max

dial.max.fill

dial.min

dial.min.fill

diamond

diamond.fill

die.face.1

die.face.1.fill

die.face.2

die.face.2.fill

die.face.3

die.face.3.fill

die.face.4

die.face.4.fill

die.face.5

die.face.5.fill

die.face.6

die.face.6.fill

directcurrent

display

display.2

display.trianglebadge.exclamationmark

divide

divide.circle

divide.circle.fill

divide.square

divide.square.fill

doc

doc.append

doc.append.fill

doc.badge.ellipsis

doc.badge.gearshape

doc.badge.gearshape.fill

doc.badge.plus

doc.circle

doc.circle.fill

doc.fill

doc.fill.badge.ellipsis

doc.fill.badge.plus

doc.on.clipboard

doc.on.clipboard.fill

doc.on.doc

doc.on.doc.fill

doc.plaintext

doc.plaintext.fill

doc.richtext

doc.richtext.fill

doc.text

doc.text.below.ecg

doc.text.below.ecg.fill

doc.text.fill

doc.text.fill.viewfinder

doc.text.magnifyingglass

doc.text.viewfinder

doc.zipper

dock.arrow.down.rectangle

dock.arrow.up.rectangle

dock.rectangle

dollarsign.circle

dollarsign.circle.fill

dollarsign.square

dollarsign.square.fill

dongsign.circle

dongsign.circle.fill

dongsign.square

dongsign.square.fill

dot.arrowtriangles.up.right.down.left.circle

dot.circle.and.cursorarrow

dot.radiowaves.forward

dot.radiowaves.left.and.right

dot.radiowaves.right

dot.square

dot.square.fill

dot.squareshape

dot.squareshape.fill

dot.squareshape.split.2x2

dpad

dpad.down.fill

dpad.fill

dpad.left.fill

dpad.right.fill

dpad.up.fill

drop

drop.fill

drop.triangle

drop.triangle.fill

e.circle

e.circle.fill

e.square

e.square.fill

ear

ear.badge.checkmark

ear.fill

ear.trianglebadge.exclamationmark

earpods

Usage restricted to EarPods
eject

eject.circle

eject.circle.fill

eject.fill

ellipsis

ellipsis.bubble

ellipsis.bubble.fill

ellipsis.circle

ellipsis.circle.fill

ellipsis.rectangle

ellipsis.rectangle.fill

envelope

envelope.arrow.triangle.branch

envelope.arrow.triangle.branch.fill

envelope.badge

envelope.badge.fill

envelope.badge.shield.leadinghalf.fill

envelope.circle

envelope.circle.fill

envelope.fill

envelope.fill.badge.shield.trailinghalf.fill

envelope.open

envelope.open.fill

equal

equal.circle

equal.circle.fill

equal.square

equal.square.fill

escape

esim

esim.fill

eurosign.circle

eurosign.circle.fill

eurosign.square

eurosign.square.fill

exclamationmark

exclamationmark.2

exclamationmark.3

exclamationmark.applewatch

exclamationmark.arrow.circlepath

exclamationmark.arrow.triangle.2.circlepath

exclamationmark.bubble

exclamationmark.bubble.fill

exclamationmark.circle

exclamationmark.circle.fill

exclamationmark.icloud

Usage restricted to iCloud service
exclamationmark.icloud.fill

Usage restricted to iCloud service
exclamationmark.octagon

exclamationmark.octagon.fill

exclamationmark.shield

exclamationmark.shield.fill

exclamationmark.square

exclamationmark.square.fill

exclamationmark.triangle

exclamationmark.triangle.fill

externaldrive

externaldrive.badge.checkmark

externaldrive.badge.icloud

externaldrive.badge.minus

externaldrive.badge.person.crop

externaldrive.badge.plus

externaldrive.badge.timemachine

externaldrive.badge.wifi

externaldrive.badge.xmark

externaldrive.connected.to.line.below

externaldrive.connected.to.line.below.fill

externaldrive.fill

externaldrive.fill.badge.checkmark

externaldrive.fill.badge.icloud

externaldrive.fill.badge.minus

externaldrive.fill.badge.person.crop

externaldrive.fill.badge.plus

externaldrive.fill.badge.timemachine

externaldrive.fill.badge.wifi

externaldrive.fill.badge.xmark

eye

eye.circle

eye.circle.fill

eye.fill

eye.slash

eye.slash.fill

eyebrow

eyedropper

eyedropper.full

eyedropper.halffull

eyeglasses

eyes

eyes.inverse

f.circle

f.circle.fill

f.cursive

f.cursive.circle

f.cursive.circle.fill

f.square

f.square.fill

face.dashed

face.dashed.fill

face.smiling

face.smiling.fill

faceid

Usage restricted to Face ID
faxmachine

fiberchannel

figure.stand

figure.stand.line.dotted.figure.stand

figure.walk

figure.walk.circle

figure.walk.circle.fill

figure.walk.diamond

figure.walk.diamond.fill

figure.wave

figure.wave.circle

figure.wave.circle.fill

filemenu.and.cursorarrow

filemenu.and.selection

film

film.fill

flag

flag.badge.ellipsis

flag.badge.ellipsis.fill

flag.circle

flag.circle.fill

flag.fill

flag.slash

flag.slash.circle

flag.slash.circle.fill

flag.slash.fill

flame

flame.fill

flashlight.off.fill

flashlight.on.fill

flipphone

florinsign.circle

florinsign.circle.fill

florinsign.square

florinsign.square.fill

flowchart

flowchart.fill

fn

folder

folder.badge.gear

folder.badge.minus

folder.badge.person.crop

folder.badge.plus

folder.badge.questionmark

folder.circle

folder.circle.fill

folder.fill

folder.fill.badge.gear

folder.fill.badge.minus

folder.fill.badge.person.crop

folder.fill.badge.plus

folder.fill.badge.questionmark

forward

forward.end

forward.end.alt

forward.end.alt.fill

forward.end.fill

forward.fill

forward.frame

forward.frame.fill

francsign.circle

francsign.circle.fill

francsign.square

francsign.square.fill

function

fx

g.circle

g.circle.fill

g.square

g.square.fill

gamecontroller

gamecontroller.fill

gauge

gauge.badge.minus

gauge.badge.plus

gear

gearshape

gearshape.2

gearshape.2.fill

gearshape.fill

gift

gift.circle

gift.circle.fill

gift.fill

giftcard

giftcard.fill

globe

gobackward

gobackward.10

gobackward.15

gobackward.30

gobackward.45

gobackward.60

gobackward.75

gobackward.90

gobackward.minus

goforward

goforward.10

goforward.15

goforward.30

goforward.45

goforward.60

goforward.75

goforward.90

goforward.plus

graduationcap

graduationcap.fill

greaterthan

greaterthan.circle

greaterthan.circle.fill

greaterthan.square

greaterthan.square.fill

greetingcard

greetingcard.fill

grid

grid.circle

grid.circle.fill

guaranisign.circle

guaranisign.circle.fill

guaranisign.square

guaranisign.square.fill

guitars

guitars.fill

gyroscope

h.circle

h.circle.fill

h.square

h.square.fill

h.square.fill.on.square.fill

h.square.on.square

hammer

hammer.fill

hand.draw

hand.draw.fill

hand.point.down

hand.point.down.fill

hand.point.left

hand.point.left.fill

hand.point.right

hand.point.right.fill

hand.point.up

hand.point.up.braille

hand.point.up.braille.fill

hand.point.up.fill

hand.point.up.left

hand.point.up.left.fill

hand.raised

hand.raised.fill

hand.raised.slash

hand.raised.slash.fill

hand.tap

hand.tap.fill

hand.thumbsdown

hand.thumbsdown.fill

hand.thumbsup

hand.thumbsup.fill

hand.wave

hand.wave.fill

hands.clap

hands.clap.fill

hands.sparkles

hands.sparkles.fill

hare

hare.fill

headphones

headphones.circle

headphones.circle.fill

hearingaid.ear

heart

heart.circle

heart.circle.fill

heart.fill

heart.slash

heart.slash.circle

heart.slash.circle.fill

heart.slash.fill

heart.text.square

heart.text.square.fill

helm

hexagon

hexagon.fill

hifispeaker

hifispeaker.2

hifispeaker.2.fill

hifispeaker.and.homepod

hifispeaker.and.homepod.fill

hifispeaker.fill

highlighter

homekit

Usage restricted to HomeKit
homepod

Usage restricted to HomePod
homepod.2

homepod.2.fill

homepod.fill

Usage restricted to HomePod
hourglass

hourglass.badge.plus

hourglass.bottomhalf.fill

hourglass.tophalf.fill

house

house.circle

house.circle.fill

house.fill

hryvniasign.circle

hryvniasign.circle.fill

hryvniasign.square

hryvniasign.square.fill

hurricane

i.circle

i.circle.fill

i.square

i.square.fill

icloud

Usage restricted to iCloud service
icloud.and.arrow.down

Usage restricted to iCloud service
icloud.and.arrow.down.fill

Usage restricted to iCloud service
icloud.and.arrow.up

Usage restricted to iCloud service
icloud.and.arrow.up.fill

Usage restricted to iCloud service
icloud.circle

Usage restricted to iCloud service
icloud.circle.fill

Usage restricted to iCloud service
icloud.fill

Usage restricted to iCloud service
icloud.slash

Usage restricted to iCloud service
icloud.slash.fill

Usage restricted to iCloud service
increase.indent

increase.quotelevel

indianrupeesign.circle

indianrupeesign.circle.fill

indianrupeesign.square

indianrupeesign.square.fill

infinity

infinity.circle

infinity.circle.fill

info

info.circle

info.circle.fill

internaldrive

internaldrive.fill

ipad

Usage restricted to iPad
ipad.badge.play

ipad.homebutton

Usage restricted to iPad
ipad.homebutton.badge.play

ipad.homebutton.landscape

Usage restricted to iPad
ipad.homebutton.landscape.badge.play

ipad.landscape

Usage restricted to iPad
ipad.landscape.badge.play

iphone

Usage restricted to iPhone
iphone.badge.play

iphone.homebutton

Usage restricted to iPhone
iphone.homebutton.badge.play

iphone.homebutton.landscape

iphone.homebutton.radiowaves.left.and.right

Usage restricted to iPhone
iphone.homebutton.slash

Usage restricted to iPhone
iphone.landscape

iphone.radiowaves.left.and.right

Usage restricted to iPhone
iphone.slash

Usage restricted to iPhone
ipod

Usage restricted to iPod
ipodshuffle.gen1

Usage restricted to iPod shuffle
ipodshuffle.gen2

Usage restricted to iPod shuffle
ipodshuffle.gen3

Usage restricted to iPod shuffle
ipodshuffle.gen4

Usage restricted to iPod shuffle
ipodtouch

Usage restricted to iPod touch
ipodtouch.landscape

italic

j.circle

j.circle.fill

j.square

j.square.fill

j.square.fill.on.square.fill

j.square.on.square

k

k.circle

k.circle.fill

k.square

k.square.fill

key

key.fill

key.icloud

Usage restricted to iCloud service
key.icloud.fill

Usage restricted to iCloud service
keyboard

keyboard.badge.ellipsis

keyboard.chevron.compact.down

keyboard.chevron.compact.left

keyboard.macwindow

keyboard.onehanded.left

keyboard.onehanded.right

kipsign.circle

kipsign.circle.fill

kipsign.square

kipsign.square.fill

l.circle

l.circle.fill

l.joystick

l.joystick.down

l.joystick.down.fill

l.joystick.fill

l.rectangle.roundedbottom

l.rectangle.roundedbottom.fill

l.square

l.square.fill

l1.rectangle.roundedbottom

l1.rectangle.roundedbottom.fill

l2.rectangle.roundedtop

l2.rectangle.roundedtop.fill

ladybug

ladybug.fill

laptopcomputer

laptopcomputer.and.iphone

Usage restricted to iPhone
largecircle.fill.circle

larisign.circle

larisign.circle.fill

larisign.square

larisign.square.fill

lasso

lasso.sparkles

latch.2.case

latch.2.case.fill

lb.rectangle.roundedbottom

lb.rectangle.roundedbottom.fill

leaf

leaf.arrow.triangle.circlepath

leaf.fill

lessthan

lessthan.circle

lessthan.circle.fill

lessthan.square

lessthan.square.fill

level

level.fill

lifepreserver

lifepreserver.fill

light.max

light.min

lightbulb

lightbulb.fill

lightbulb.slash

lightbulb.slash.fill

line.3.crossed.swirl.circle

line.3.crossed.swirl.circle.fill

line.diagonal

line.diagonal.arrow

line.horizontal.2.decrease.circle

line.horizontal.2.decrease.circle.fill

line.horizontal.3

line.horizontal.3.circle

line.horizontal.3.circle.fill

line.horizontal.3.decrease

line.horizontal.3.decrease.circle

line.horizontal.3.decrease.circle.fill

line.horizontal.star.fill.line.horizontal

lineweight

link

link.badge.plus

link.circle

link.circle.fill

link.icloud

Usage restricted to iCloud service
link.icloud.fill

Usage restricted to iCloud service
lirasign.circle

lirasign.circle.fill

lirasign.square

lirasign.square.fill

list.and.film

list.bullet

list.bullet.below.rectangle

list.bullet.indent

list.bullet.rectangle

list.dash

list.number

list.star

list.triangle

livephoto

Usage restricted to Live Photos feature
livephoto.badge.a

Usage restricted to Live Photos feature
livephoto.play

Usage restricted to Live Photos feature
livephoto.slash

Usage restricted to Live Photos feature
location

location.circle

location.circle.fill

location.fill

location.fill.viewfinder

location.north

location.north.fill

location.north.line

location.north.line.fill

location.slash

location.slash.fill

location.viewfinder

lock

lock.applewatch

lock.circle

lock.circle.fill

lock.doc

lock.doc.fill

lock.fill

lock.icloud

Usage restricted to iCloud service
lock.icloud.fill

Usage restricted to iCloud service
lock.open

lock.open.fill

lock.rectangle

lock.rectangle.fill

lock.rectangle.on.rectangle

lock.rectangle.on.rectangle.fill

lock.rectangle.stack

lock.rectangle.stack.fill

lock.rotation

lock.rotation.open

lock.shield

lock.shield.fill

lock.slash

lock.slash.fill

lock.square

lock.square.fill

lock.square.stack

lock.square.stack.fill

loupe

lt.rectangle.roundedtop

lt.rectangle.roundedtop.fill

lungs

lungs.fill

m.circle

m.circle.fill

m.square

m.square.fill

macmini

Usage restricted to Mac mini
macmini.fill

Usage restricted to Mac mini
macpro.gen1

Usage restricted to Mac Pro
macpro.gen2

Usage restricted to Mac Pro
macpro.gen2.fill

Usage restricted to Mac Pro
macpro.gen3

Usage restricted to Mac Pro
macpro.gen3.server

Usage restricted to Mac Pro
macwindow

macwindow.badge.plus

macwindow.on.rectangle

magnifyingglass

magnifyingglass.circle

magnifyingglass.circle.fill

mail

mail.and.text.magnifyingglass

mail.fill

mail.stack

mail.stack.fill

manatsign.circle

manatsign.circle.fill

manatsign.square

manatsign.square.fill

map

map.fill

mappin

mappin.and.ellipse

mappin.circle

mappin.circle.fill

mappin.slash

megaphone

megaphone.fill

memories

memories.badge.minus

memories.badge.plus

memorychip

menubar.arrow.down.rectangle

menubar.arrow.up.rectangle

menubar.dock.rectangle

menubar.dock.rectangle.badge.record

menubar.rectangle

message

Usage restricted to Messages app
message.circle

Usage restricted to Messages app
message.circle.fill

Usage restricted to Messages app
message.fill

Usage restricted to Messages app
metronome

metronome.fill

mic

mic.circle

mic.circle.fill

mic.fill

mic.slash

mic.slash.fill

millsign.circle

millsign.circle.fill

millsign.square

millsign.square.fill

minus

minus.circle

minus.circle.fill

minus.diamond

minus.diamond.fill

minus.magnifyingglass

minus.plus.batteryblock

minus.plus.batteryblock.fill

minus.rectangle

minus.rectangle.fill

minus.rectangle.portrait

minus.rectangle.portrait.fill

minus.slash.plus

minus.square

minus.square.fill

moon

moon.circle

moon.circle.fill

moon.fill

moon.stars

moon.stars.fill

moon.zzz

moon.zzz.fill

mosaic

mosaic.fill

mount

mount.fill

mouth

mouth.fill

move.3d

multiply

multiply.circle

multiply.circle.fill

multiply.square

multiply.square.fill

music.mic

music.note

music.note.house

music.note.house.fill

music.note.list

music.quarternote.3

mustache

mustache.fill

n.circle

n.circle.fill

n.square

n.square.fill

nairasign.circle

nairasign.circle.fill

nairasign.square

nairasign.square.fill

network

newspaper

newspaper.fill

nose

nose.fill

nosign

note

note.text

note.text.badge.plus

number

number.circle

number.circle.fill

number.square

number.square.fill

o.circle

o.circle.fill

o.square

o.square.fill

octagon

octagon.fill

opticaldisc

opticaldiscdrive

opticaldiscdrive.fill

option

oval

oval.fill

oval.portrait

oval.portrait.fill

p.circle

p.circle.fill

p.square

p.square.fill

paintbrush

paintbrush.fill

paintbrush.pointed

paintbrush.pointed.fill

paintpalette

paintpalette.fill

pano

pano.fill

paperclip

paperclip.badge.ellipsis

paperclip.circle

paperclip.circle.fill

paperplane

paperplane.circle

paperplane.circle.fill

paperplane.fill

paragraphsign

pause

pause.circle

pause.circle.fill

pause.fill

pause.rectangle

pause.rectangle.fill

pc

pencil

pencil.and.outline

pencil.circle

pencil.circle.fill

pencil.slash

pencil.tip

Usage restricted to Markup feature
pencil.tip.crop.circle

Usage restricted to Markup feature
pencil.tip.crop.circle.badge.arrow.forward

pencil.tip.crop.circle.badge.minus

Usage restricted to Markup feature
pencil.tip.crop.circle.badge.plus

Usage restricted to Markup feature
percent

person

person.2

person.2.circle

person.2.circle.fill

person.2.fill

person.2.square.stack

person.2.square.stack.fill

person.3

person.3.fill

person.and.arrow.left.and.arrow.right

person.badge.minus

person.badge.plus

person.circle

person.circle.fill

person.crop.circle

person.crop.circle.badge.checkmark

person.crop.circle.badge.exclamationmark

person.crop.circle.badge.minus

person.crop.circle.badge.plus

person.crop.circle.badge.questionmark

person.crop.circle.badge.xmark

person.crop.circle.fill

person.crop.circle.fill.badge.checkmark

person.crop.circle.fill.badge.exclamationmark

person.crop.circle.fill.badge.minus

person.crop.circle.fill.badge.plus

person.crop.circle.fill.badge.questionmark

person.crop.circle.fill.badge.xmark

person.crop.rectangle

person.crop.rectangle.fill

person.crop.square

person.crop.square.fill

person.crop.square.fill.and.at.rectangle

person.fill

person.fill.and.arrow.left.and.arrow.right

person.fill.badge.minus

person.fill.badge.plus

person.fill.checkmark

person.fill.questionmark

person.fill.turn.down

person.fill.turn.left

person.fill.turn.right

person.fill.viewfinder

person.fill.xmark

person.icloud

Usage restricted to iCloud service
person.icloud.fill

Usage restricted to iCloud service
personalhotspot

perspective

pesetasign.circle

pesetasign.circle.fill

pesetasign.square

pesetasign.square.fill

pesosign.circle

pesosign.circle.fill

pesosign.square

pesosign.square.fill

phone

phone.arrow.down.left

phone.arrow.right

phone.arrow.up.right

phone.badge.plus

phone.bubble.left

phone.bubble.left.fill

phone.circle

phone.circle.fill

phone.connection

phone.down

phone.down.circle

phone.down.circle.fill

phone.down.fill

phone.fill

phone.fill.arrow.down.left

phone.fill.arrow.right

phone.fill.arrow.up.right

phone.fill.badge.plus

phone.fill.connection

photo

photo.fill

photo.fill.on.rectangle.fill

photo.on.rectangle

photo.on.rectangle.angled

photo.tv

pianokeys

pianokeys.inverse

pills

pills.fill

pin

pin.circle

pin.circle.fill

pin.fill

pin.slash

pin.slash.fill

pip

pip.enter

pip.exit

pip.fill

pip.remove

pip.swap

placeholdertext.fill

play

play.circle

play.circle.fill

play.fill

play.rectangle

play.rectangle.fill

play.slash

play.slash.fill

play.tv

play.tv.fill

playpause

playpause.fill

plus

plus.app

plus.app.fill

plus.bubble

plus.bubble.fill

plus.circle

plus.circle.fill

plus.diamond

plus.diamond.fill

plus.magnifyingglass

plus.message

Usage restricted to Messages app
plus.message.fill

Usage restricted to Messages app
plus.rectangle

plus.rectangle.fill

plus.rectangle.fill.on.folder.fill

plus.rectangle.fill.on.rectangle.fill

plus.rectangle.on.folder

plus.rectangle.on.rectangle

plus.rectangle.portrait

plus.rectangle.portrait.fill

plus.slash.minus

plus.square

plus.square.fill

plus.square.fill.on.square.fill

plus.square.on.square

plus.viewfinder

plusminus

plusminus.circle

plusminus.circle.fill

point.fill.topleft.down.curvedto.point.fill.bottomright.up

point.topleft.down.curvedto.point.bottomright.up

power

poweroff

poweron

powersleep

printer

printer.dotmatrix

printer.dotmatrix.fill

printer.dotmatrix.fill.and.paper.fill

printer.fill

printer.fill.and.paper.fill

projective

purchased

purchased.circle

purchased.circle.fill

puzzlepiece

puzzlepiece.fill

pyramid

pyramid.fill

q.circle

q.circle.fill

q.square

q.square.fill

qrcode

qrcode.viewfinder

questionmark

questionmark.circle

questionmark.circle.fill

questionmark.diamond

questionmark.diamond.fill

questionmark.folder

questionmark.folder.fill

questionmark.square

questionmark.square.dashed

questionmark.square.fill

questionmark.video

Usage restricted to FaceTime app
questionmark.video.fill

Usage restricted to FaceTime app
quote.bubble

quote.bubble.fill

r.circle

r.circle.fill

r.joystick

r.joystick.down

r.joystick.down.fill

r.joystick.fill

r.rectangle.roundedbottom

r.rectangle.roundedbottom.fill

r.square

r.square.fill

r.square.fill.on.square.fill

r.square.on.square

r1.rectangle.roundedbottom

r1.rectangle.roundedbottom.fill

r2.rectangle.roundedtop

r2.rectangle.roundedtop.fill

radio

radio.fill

rays

rb.rectangle.roundedbottom

rb.rectangle.roundedbottom.fill

record.circle

record.circle.fill

recordingtape

rectangle

rectangle.3.offgrid

rectangle.3.offgrid.bubble.left

rectangle.3.offgrid.bubble.left.fill

rectangle.3.offgrid.fill

rectangle.and.arrow.up.right.and.arrow.down.left

rectangle.and.arrow.up.right.and.arrow.down.left.slash

rectangle.and.paperclip

rectangle.and.pencil.and.ellipsis

rectangle.and.text.magnifyingglass

rectangle.arrowtriangle.2.inward

rectangle.arrowtriangle.2.outward

rectangle.badge.checkmark

rectangle.badge.minus

rectangle.badge.person.crop

rectangle.badge.plus

rectangle.badge.xmark

rectangle.bottomthird.inset.fill

rectangle.center.inset.fill

rectangle.compress.vertical

rectangle.connected.to.line.below

rectangle.dashed

rectangle.dashed.and.paperclip

rectangle.dashed.badge.record

rectangle.expand.vertical

rectangle.fill

rectangle.fill.badge.checkmark

rectangle.fill.badge.minus

rectangle.fill.badge.person.crop

rectangle.fill.badge.plus

rectangle.fill.badge.xmark

rectangle.fill.on.rectangle.angled.fill

rectangle.fill.on.rectangle.fill

rectangle.fill.on.rectangle.fill.circle

rectangle.fill.on.rectangle.fill.circle.fill

rectangle.fill.on.rectangle.fill.slash.fill

rectangle.grid.1x2

rectangle.grid.1x2.fill

rectangle.grid.2x2

rectangle.grid.2x2.fill

rectangle.grid.3x2

rectangle.grid.3x2.fill

rectangle.inset.bottomleft.fill

rectangle.inset.bottomright.fill

rectangle.inset.fill

rectangle.inset.topleft.fill

rectangle.inset.topright.fill

rectangle.lefthalf.fill

rectangle.lefthalf.inset.fill

rectangle.lefthalf.inset.fill.arrow.left

rectangle.leftthird.inset.fill

rectangle.on.rectangle

rectangle.on.rectangle.angled

rectangle.on.rectangle.slash

rectangle.portrait

rectangle.portrait.arrowtriangle.2.inward

rectangle.portrait.arrowtriangle.2.outward

rectangle.portrait.fill

rectangle.righthalf.fill

rectangle.righthalf.inset.fill

rectangle.righthalf.inset.fill.arrow.right

rectangle.rightthird.inset.fill

rectangle.roundedbottom

rectangle.roundedbottom.fill

rectangle.roundedtop

rectangle.roundedtop.fill

rectangle.slash

rectangle.slash.fill

rectangle.split.1x2

rectangle.split.1x2.fill

rectangle.split.2x1

rectangle.split.2x1.fill

rectangle.split.2x2

rectangle.split.2x2.fill

rectangle.split.3x1

rectangle.split.3x1.fill

rectangle.split.3x3

rectangle.split.3x3.fill

rectangle.stack

rectangle.stack.badge.minus

rectangle.stack.badge.person.crop

rectangle.stack.badge.plus

rectangle.stack.fill

rectangle.stack.fill.badge.minus

rectangle.stack.fill.badge.person.crop

rectangle.stack.fill.badge.plus

rectangle.stack.person.crop

rectangle.stack.person.crop.fill

rectangle.topthird.inset

repeat

repeat.1

repeat.1.circle

repeat.1.circle.fill

repeat.circle

repeat.circle.fill

restart

restart.circle

return

rhombus

rhombus.fill

rosette

rotate.3d

rotate.left

rotate.left.fill

rotate.right

rotate.right.fill

rt.rectangle.roundedtop

rt.rectangle.roundedtop.fill

rublesign.circle

rublesign.circle.fill

rublesign.square

rublesign.square.fill

ruler

ruler.fill

rupeesign.circle

rupeesign.circle.fill

rupeesign.square

rupeesign.square.fill

s.circle

s.circle.fill

s.square

s.square.fill

safari

Usage restricted to Safari browser
safari.fill

Usage restricted to Safari browser
scale.3d

scalemass

scalemass.fill

scanner

scanner.fill

scissors

scissors.badge.ellipsis

scope

scribble

scribble.variable

scroll

scroll.fill

sdcard

sdcard.fill

seal

seal.fill

selection.pin.in.out

server.rack

shadow

shekelsign.circle

shekelsign.circle.fill

shekelsign.square

shekelsign.square.fill

shield

shield.checkerboard

shield.fill

shield.lefthalf.fill

shield.lefthalf.fill.slash

shield.slash

shield.slash.fill

shift

shift.fill

shippingbox

shippingbox.fill

shuffle

shuffle.circle

shuffle.circle.fill

sidebar.leading

sidebar.left

sidebar.right

sidebar.squares.leading

sidebar.squares.left

sidebar.squares.right

sidebar.squares.trailing

sidebar.trailing

signature

signpost.left

signpost.left.fill

signpost.right

signpost.right.fill

simcard

simcard.2

simcard.2.fill

simcard.fill

skew

slash.circle

slash.circle.fill

sleep

slider.horizontal.3

slider.horizontal.below.rectangle

slider.horizontal.below.square.fill.and.square

slider.vertical.3

slowmo

smallcircle.circle

smallcircle.circle.fill

smallcircle.fill.circle

smallcircle.fill.circle.fill

smoke

smoke.fill

snow

sparkle

sparkles

sparkles.rectangle.stack

sparkles.rectangle.stack.fill

sparkles.square.fill.on.square

speaker

speaker.fill

speaker.slash

speaker.slash.circle

speaker.slash.circle.fill

speaker.slash.fill

speaker.wave.1

speaker.wave.1.fill

speaker.wave.2

speaker.wave.2.circle

speaker.wave.2.circle.fill

speaker.wave.2.fill

speaker.wave.3

speaker.wave.3.fill

speaker.zzz

speaker.zzz.fill

speedometer

sportscourt

sportscourt.fill

square

square.2.stack.3d

square.2.stack.3d.bottom.fill

square.2.stack.3d.top.fill

square.3.stack.3d

square.3.stack.3d.bottom.fill

square.3.stack.3d.middle.fill

square.3.stack.3d.top.fill

square.and.arrow.down

square.and.arrow.down.fill

square.and.arrow.down.on.square

square.and.arrow.down.on.square.fill

square.and.arrow.up

square.and.arrow.up.fill

square.and.arrow.up.on.square

square.and.arrow.up.on.square.fill

square.and.at.rectangle

square.and.line.vertical.and.square

square.and.line.vertical.and.square.fill

square.and.pencil

square.bottomhalf.fill

square.circle

square.circle.fill

square.dashed

square.dashed.inset.fill

square.fill

square.fill.and.line.vertical.and.square

square.fill.and.line.vertical.square.fill

square.fill.on.circle.fill

square.fill.on.square

square.fill.on.square.fill

square.fill.text.grid.1x2

square.grid.2x2

square.grid.2x2.fill

square.grid.3x1.below.line.grid.1x2

square.grid.3x1.fill.below.line.grid.1x2

square.grid.3x1.folder.badge.plus

square.grid.3x1.folder.fill.badge.plus

square.grid.3x2

square.grid.3x2.fill

square.grid.3x3

square.grid.3x3.bottomleft.fill

square.grid.3x3.bottommiddle.fill

square.grid.3x3.bottomright.fill

square.grid.3x3.fill

square.grid.3x3.fill.square

square.grid.3x3.middle.fill

square.grid.3x3.middleleft.fill

square.grid.3x3.middleright.fill

square.grid.3x3.topleft.fill

square.grid.3x3.topmiddle.fill

square.grid.3x3.topright.fill

square.grid.4x3.fill

square.lefthalf.fill

square.on.circle

square.on.square

square.on.square.dashed

square.on.square.squareshape.controlhandles

square.righthalf.fill

square.slash

square.slash.fill

square.split.1x2

square.split.1x2.fill

square.split.2x1

square.split.2x1.fill

square.split.2x2

square.split.2x2.fill

square.split.bottomrightquarter

square.split.bottomrightquarter.fill

square.split.diagonal

square.split.diagonal.2x2

square.split.diagonal.2x2.fill

square.split.diagonal.fill

square.stack

square.stack.3d.down.forward

square.stack.3d.down.forward.fill

square.stack.3d.down.right

square.stack.3d.down.right.fill

square.stack.3d.forward.dottedline

square.stack.3d.forward.dottedline.fill

square.stack.3d.up

square.stack.3d.up.badge.a

square.stack.3d.up.badge.a.fill

square.stack.3d.up.fill

square.stack.3d.up.slash

square.stack.3d.up.slash.fill

square.stack.fill

square.tophalf.fill

squares.below.rectangle

squareshape

squareshape.controlhandles.on.squareshape.controlhandles

squareshape.dashed.squareshape

squareshape.fill

squareshape.split.2x2

squareshape.split.2x2.dotted

squareshape.split.3x3

squareshape.squareshape.dashed

star

star.circle

star.circle.fill

star.fill

star.leadinghalf.fill

star.slash

star.slash.fill

star.square

star.square.fill

staroflife

staroflife.circle

staroflife.circle.fill

staroflife.fill

sterlingsign.circle

sterlingsign.circle.fill

sterlingsign.square

sterlingsign.square.fill

stethoscope

stop

stop.circle

stop.circle.fill

stop.fill

stopwatch

stopwatch.fill

strikethrough

studentdesk

suit.club

suit.club.fill

suit.diamond

suit.diamond.fill

suit.heart

suit.heart.fill

suit.spade

suit.spade.fill

sum

sun.dust

sun.dust.fill

sun.haze

sun.haze.fill

sun.max

sun.max.fill

sun.min

sun.min.fill

sunrise

sunrise.fill

sunset

sunset.fill

swift

Usage restricted to Swift programming language
switch.2

t.bubble

t.bubble.fill

t.circle

t.circle.fill

t.square

t.square.fill

tablecells

tablecells.badge.ellipsis

tablecells.badge.ellipsis.fill

tablecells.fill

tag

tag.circle

tag.circle.fill

tag.fill

tag.slash

tag.slash.fill

target

teletype

Usage restricted to Teletype feature
teletype.answer

Usage restricted to Teletype feature
teletype.circle

Usage restricted to Teletype feature
teletype.circle.fill

Usage restricted to Teletype feature
tengesign.circle

tengesign.circle.fill

tengesign.square

tengesign.square.fill

terminal

terminal.fill

text.aligncenter

text.alignleft

text.alignright

text.and.command.macwindow

text.append

text.badge.checkmark

text.badge.minus

text.badge.plus

text.badge.star

text.badge.xmark

text.below.photo

text.below.photo.fill

text.book.closed

text.book.closed.fill

text.bubble

text.bubble.fill

text.cursor

text.insert

text.justify

text.justifyleft

text.justifyright

text.magnifyingglass

text.quote

text.redaction

textbox

textformat

textformat.123

textformat.abc

textformat.abc.dottedunderline

textformat.alt

textformat.size

textformat.size.larger

textformat.size.smaller

textformat.subscript

textformat.superscript

thermometer

thermometer.snowflake

thermometer.sun

thermometer.sun.fill

ticket

ticket.fill

timelapse

timeline.selection

timer

timer.square

togglepower

tornado

tortoise

tortoise.fill

torus

touchid

Usage restricted to Touch ID feature
tram

tram.circle

tram.circle.fill

tram.fill

tram.tunnel.fill

trash

trash.circle

trash.circle.fill

trash.fill

trash.slash

trash.slash.fill

tray

tray.2

tray.2.fill

tray.and.arrow.down

tray.and.arrow.down.fill

tray.and.arrow.up

tray.and.arrow.up.fill

tray.circle

tray.circle.fill

tray.fill

tray.full

tray.full.fill

triangle

triangle.circle

triangle.circle.fill

triangle.fill

triangle.lefthalf.fill

triangle.righthalf.fill

tropicalstorm

tugriksign.circle

tugriksign.circle.fill

tugriksign.square

tugriksign.square.fill

tuningfork

turkishlirasign.circle

turkishlirasign.circle.fill

turkishlirasign.square

turkishlirasign.square.fill

tv

tv.and.hifispeaker.fill

tv.and.mediabox

tv.circle

tv.circle.fill

tv.fill

tv.music.note

tv.music.note.fill

u.circle

u.circle.fill

u.square

u.square.fill

uiwindow.split.2x1

umbrella

umbrella.fill

underline

v.circle

v.circle.fill

v.square

v.square.fill

video

Usage restricted to FaceTime app
video.badge.checkmark

Usage restricted to FaceTime app
video.badge.plus

Usage restricted to FaceTime app
video.bubble.left

video.bubble.left.fill

video.circle

Usage restricted to FaceTime app
video.circle.fill

Usage restricted to FaceTime app
video.fill

Usage restricted to FaceTime app
video.fill.badge.checkmark

Usage restricted to FaceTime app
video.fill.badge.plus

Usage restricted to FaceTime app
video.slash

Usage restricted to FaceTime app
video.slash.fill

Usage restricted to FaceTime app
view.2d

view.3d

viewfinder

viewfinder.circle

viewfinder.circle.fill

w.circle

w.circle.fill

w.square

w.square.fill

wake

wallet.pass

wallet.pass.fill

wand.and.rays

wand.and.rays.inverse

wand.and.stars

wand.and.stars.inverse

wave.3.backward

wave.3.backward.circle

wave.3.backward.circle.fill

wave.3.forward

wave.3.forward.circle

wave.3.forward.circle.fill

wave.3.left

wave.3.left.circle

wave.3.left.circle.fill

wave.3.right

wave.3.right.circle

wave.3.right.circle.fill

waveform

waveform.circle

waveform.circle.fill

waveform.path

waveform.path.badge.minus

waveform.path.badge.plus

waveform.path.ecg

waveform.path.ecg.rectangle

waveform.path.ecg.rectangle.fill

wifi

wifi.exclamationmark

wifi.slash

wind

wind.snow

wonsign.circle

wonsign.circle.fill

wonsign.square

wonsign.square.fill

wrench

wrench.and.screwdriver

wrench.and.screwdriver.fill

wrench.fill

x.circle

x.circle.fill

x.square

x.square.fill

x.squareroot

xmark

xmark.bin

xmark.bin.circle

xmark.bin.circle.fill

xmark.bin.fill

xmark.circle

xmark.circle.fill

xmark.diamond

xmark.diamond.fill

xmark.icloud

Usage restricted to iCloud service
xmark.icloud.fill

Usage restricted to iCloud service
xmark.octagon

xmark.octagon.fill

xmark.rectangle

xmark.rectangle.fill

xmark.rectangle.portrait

xmark.rectangle.portrait.fill

xmark.seal

xmark.seal.fill

xmark.shield

xmark.shield.fill

xmark.square

xmark.square.fill

xserve

Usage restricted to Xserve
y.circle

y.circle.fill

y.square

y.square.fill

yensign.circle

yensign.circle.fill

yensign.square

yensign.square.fill

z.circle

z.circle.fill

z.square

z.square.fill

zl.rectangle.roundedtop

zl.rectangle.roundedtop.fill

zr.rectangle.roundedtop

zr.rectangle.roundedtop.fill

zzz
"""

let parse1 = toBeParsed.replacingOccurrences(of: "\n", with: ",")
let parse2 = parse1.replacingOccurrences(of: ",,", with: ",")

var parse3 = ""
let parse3array = parse2.components(separatedBy: ",")

for p in parse3array {
    if !String(p).contains("Usage") {
        let x = String(p).replacingOccurrences(of: " ", with: "")
        parse3.append("\"\(x)\",")
        
    }
}
print(parse3)
