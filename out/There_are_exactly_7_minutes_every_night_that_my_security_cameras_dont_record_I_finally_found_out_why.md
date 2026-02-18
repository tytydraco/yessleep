
I work from home. I live alone in a three-bedroom house on ten acres of pine forest that I bought for next to nothing because the previous owner died in it. Natural causes, the realtor said. I didn't care. I grew up poor. You could've told me he died screaming in every room and I still would've signed the papers for that price.

I set up the security system myself — eight cameras, wired, local NVR, no cloud. Continuous recording with motion-flagged segments overlaid, all writing to a RAID array in my office closet. I configured every piece of it. I know what it's supposed to do.

Three months ago, I noticed the gap.

I was reviewing footage after hearing something downstairs around 2 AM. Probably nothing. When I pulled up the timeline, there was a clean seven-minute void starting at 2:07 AM. All eight cameras. Simultaneously. Not a blackout or a power loss — the NVR was still running, still writing timestamps. The feeds just stopped. For exactly seven minutes. Then everything picked back up at 2:14 like nothing happened.

I checked the logs. No errors. No reboots. No motion triggers during the gap, which shouldn't be possible on a continuous-record system. The only way to produce that kind of gap would be to manually kill and restart the recording service with a script, and that would leave traces in the system log.

There were no traces.

I spent two days tearing through the software looking for bugs, firmware issues, forgotten scheduled tasks. Nothing. So I wrote a watchdog — a separate process running independently, logging camera feed status every ten seconds, set to alert me the instant anything dropped.

That night I stayed up. At 2:07, all eight feeds went dark. My watchdog logged the drop. But here's the part that made my hands go cold: the watchdog itself stopped logging at 2:07 and resumed at 2:14. Seven minutes, gone. But the system clock showed no interruption. No suspend event. No freeze.

Something was halting every recording process on my machine — including one it had no way of knowing existed.

I am not the kind of person who panics. I spent two weeks hunting for a rational answer. EMI interference. Electrical faults. Firmware exploits. The possibility someone was on my network. I air-gapped the NVR. Changed every credential. Then I set up a completely separate Raspberry Pi with its own camera, its own power supply, its own storage, running a different OS, connected to absolutely nothing.

At 2:07 AM, it stopped recording. At 2:14, it started again.

That's when I stopped sleeping.

---

I bought a battery-powered dashcam. No network connection, no software interface — just an SD card and a lens. I mounted it in the upstairs hallway outside my bedroom, aimed at the stairs, and pressed record.

Next morning I pulled the card.

The footage runs clean until 2:06. My hallway, dark and still, lit by the faint green glow of the smoke detector. At 2:07, the video doesn't cut. The camera keeps recording. But the timestamp — burned directly into the feed by the camera's internal clock — freezes. The counter just stops at 2:07:00 and sits there.

The hallway is still visible. The camera is still running.

And for seven minutes, something moves through my house.

I've tried to write this part three times. I keep deleting it because putting the words down makes it more real. But you need to know.

It comes up the stairs. Not walking. The motion is wrong — like watching a time-lapse of a plant growing, this slow, continuous, boneless unfolding. It has a shape, technically. Tall and thin and the color of a bruise, this deep mottled purple-black that seems to eat the light around it. The dashcam's infrared LEDs illuminate everything else in the hallway just fine. They don't touch this thing. It doesn't reflect. It absorbs.

It reached the top of the stairs and stopped. Filled the frame from floor to ceiling. And then the top part of it tilted — the way you'd tilt your head at something that confused you.

It was looking at the camera.

A device with no network connection. No software. Nothing to interface with.

It looked at the camera for a long time.

Then it moved down the hallway, out of frame, toward my bedroom door.

At 2:14, the timestamp unfreezes. The hallway is empty.

---

I haven't slept in my bedroom since. I've been sleeping in my car at a gas station four miles from the house, going home during the day to work, leaving before dark.

But I kept the dashcam running.

Night two: same time, same movement. It goes to my bedroom door. The door opens — not fast, not slow, just opens — and the thing pours into my room like smoke filling a jar. Four minutes later it comes back out. Stands in the hallway. Turns toward the camera.

Closer this time.

Night three: same routine, but after my bedroom it goes to the second bedroom, the one I use for storage. Two minutes in there. When it comes back to the hall it's closer still and I can see more detail and I wish to God I couldn't. Its surface isn't skin. It isn't smooth. It looks like the inside of something — wet, textured, like an organ turned inside out and stretched over a frame.

Night four: it visits all three bedrooms. When it returns to the hall, it's directly in front of the camera. The frame warps — bends inward — like the lens is being pulled toward it. And in the last ten seconds of usable footage before the timestamp unfreezes, it opens.

A seam appears vertically along its center and it opens, and inside there is a space that is deeper than the thing is wide. It shouldn't be possible. It's like looking into a corridor inside a body. The walls of it are lined with what I can only call shelves.

On the shelves, there are photographs.

They're pictures of me.

Not surveillance photos. Not taken from outside. Photos from *inside my house*. Me at my desk. Me cooking. Me on the couch. Me sleeping. Taken from angles that don't correspond to any wall, any corner, any fixture. Angles that would require the photographer to be standing inside the ceiling. Inside the walls.

Inside the dark.

There are dozens of them. Maybe hundreds. I can't tell — the frame warps too badly before the footage resumes.

---

I went back during the day and checked my bedroom. Nothing looked wrong. Nothing smelled wrong. But I pulled the sheets back and there was an impression in the mattress next to where I used to sleep. Not like someone had sat there. Like something had been *laid out*. A long, thin depression running the full length of the bed.

I measured it. Seven feet two inches.

I checked the storage room next. Three boxes had been opened and carefully resealed — I only noticed because I tape boxes a specific way and the tape had been peeled back and reapplied. Inside: old photo albums. Yearbooks. Stuff with my face in it. Every photograph of me had been handled. I could feel it — this faint residue on the surface, like the ghost of a fingerprint but too smooth, too uniform. Not oil from skin. Something else.

It's studying me.

That same afternoon, I did something I'd been putting off. I pulled the county records on the house. The previous owner was a man named Donald Raeburn, 71, lived alone, no family anyone could find. Cause of death: cardiac arrest. Time of death on the certificate: 2:07 AM.

I sat in my car in the county clerk's parking lot for a long time after reading that.

---

I set up the dashcam one last time. Night five. I let the SD card sit on my desk for three days before I worked up the nerve to look at it.

Same routine. It comes up at 2:07. Visits every room. But this time, when it returns to the hallway, it doesn't approach the camera.

It goes to the front door.

It opens the front door, goes outside, and moves across my yard toward the driveway. Toward the road. In the direction of town.

In the direction of the gas station where I've been sleeping.

The last frame before the timestamp resumes shows the road, empty, tree line sharp against the stars. But right at the edge of the dashcam's range, where the gravel meets the asphalt, there's something on the ground.

A photograph.

I drove out there the next morning. It was still there, face down in the dirt. I picked it up with a plastic bag because I didn't want to touch it.

It's a picture of me asleep in my car.

Taken from the back seat.

---

Last night I didn't go to the gas station. I drove forty miles to a motel in the next county. Checked in under a fake name. Paid cash. Put a chair under the door handle and left every light on and sat in the bathtub with a knife because it was the smallest room with the fewest angles and I thought — stupidly — that if I could see every corner I'd be safe.

At 2:07, the lights went out. All of them. Not the power — the TV still showed static, the alarm clock still glowed. Just the lights.

For seven minutes I sat in the dark and I heard something breathing that wasn't me. Not from outside the bathroom. Not from the next room. From directly above me. Inside the ceiling. Inches away.

Something cold landed on my forearm.

I didn't look.

When the lights came back at 2:14, I looked at my arm. There was a photograph, damp and warm, stuck to my skin.

It was a picture of me sitting in the bathtub. Eyes wide open. Knife in my hand.

Taken from above.

---

I'm writing this from a Waffle House at 3:45 in the morning because it's the only place I could think of that's open and bright and full of people. The photo is in a Ziploc bag in my jacket pocket. It's still warm.

Distance doesn't matter. Walls don't matter. Being awake doesn't matter.

I've been thinking about Donald Raeburn. Seventy-one years old. No family. Died alone in that house at 2:07 AM of cardiac arrest, and I'm wondering now how long he knew. How many nights he sat up. How many photos he found. Whether he died of a heart attack or whether his heart just finally couldn't take what it saw at 2:07 on the last night it mattered.

I don't think the seven minutes are when it visits.

I think the seven minutes are when it lets me *know* it's visiting.

I think it's here all the time.

I think it's always been here.

If you have cameras in your house, check your footage. Look for gaps you can't explain. Exactly seven minutes. Always starting at 2:07. If you find them — and part of me hopes to God you don't — do not do what I did. Don't set up the dashcam. Don't try to see it.

Because I think the gap is bait. I think it wants to be found. I think seeing it is how it chooses you.

And I think I just helped it find every single one of you.

I'm sorry.
