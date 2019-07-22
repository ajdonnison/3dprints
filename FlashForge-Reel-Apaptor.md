# Adapter system for FlashForge Inventor

This is a set of 3d print plans designed to allow a FlashForge Inventor to handle reels from other manufacturers.  Currently handles:

* FlashForge original 600g reels (180mm diameter)
* eSun 1kg reels (200mm diameter)
* Filaform 500g reels (200mm diameter) - with hub adapter

The system uses a set of conical hubs that include a bearing, and a replacement reel holder assembly that lifts the reel centre up enough to support the larger reels.  I've used a 1/4" hex-head bolt, but a 5/16th would work better, there are only a few minor changes that need to be done.  I'll probably do that in an upcoming version.

## Parts

* Reel Holder (reel-holder.scad)
* Reel Hub x 2 (reel-hub.scad)
* Skateboard bearing x 2 (22mm OD, 8mm ID, 7mm width)
* Optional hub adapter for Filaform reels (hub-adapter.scad)
* 3 1/2" bolt, 1/4" with 7/16" hex head and nut
* Optional spanner (spanner.scad)

## Method

The reel holder should be a direct replacement for the one within the Flashforge Inventor.  You may need to play with some settings if you find you are using material that distorts or shrinks too much.  I've used both Filaform ABS and eSun ABS+.

Make sure you print all parts before disassembling the printer.

Take a nut from your bolt and press it into the receptacle in the reel holder - it should be a snug fit.

You'll need to tilt the printer onto its back and remove the base plate to get at the nuts holding the reel holders in place.  Remove both bolts and replace the reel holder with the newly printed one.  There is very little clearance on the right hand side, so don't bother trying to increase the height as the reel will just hit the Y-axis motor.  The left hand side can allow you a lit of license with the height.

Once you have the reel holder in place, take two of the reel hubs and place a skateboard bearing in each one, it should be a snug fit.  Put the assembled hubs cone inwards into either side of the reel, place a bolt through the entire assembly and push it into the reel holder, screwing it into place.  You may find the spanner useful for tightening up the bolt.  You can wrap a bit of tape around the bolt or use the optional collect.scad to produce a tight fitting connection between the bolt and the bearing.

For filaform 0.5kg reels there is a difference between the two sides of the reel.  The hub-adapter sorts this out and fills in that hole so you can use the same reel-hubs as for all other reels.


## Issues

The only real issue I've had is that eSun ABS+ reels tend to be very full, so the first few prints you need to be careful that the filament doesn't pop off the reel and end up twisting when there is a large movement away from, then back towards, the filament guide.  This isn't so much a fault of this adaptation as it would affect any system that didn't have a self-retracting reel.

The other minor issue is with supports when printing the holder - there are two pins that are catered for in the build, but if you use auto-supports then it will add supports that are almost impossible to get rid of in the resulting print.  Just delete the supports in the base for those pin holes, they aren't really needed if you use a high-enough infil percentage.

## To Do

Because I only had 1/4" bolts at the time I built this, it is designed around that.  I've since found that a 5/16" bolt is a better fit for the bearing, so I'll change teh holder and spanner designs either to make that optional or make 5/16" the default.
