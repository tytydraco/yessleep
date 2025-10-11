I work night shifts monitoring network traffic for a data center in Phoenix. It's the kind of job where nothing happens 95% of the time, which is exactly why they hired me—because that other 5% needs someone who won't panic when things go sideways.

About three weeks ago, I started noticing something odd in our logs. A recurring connection attempt from an IP address that didn't resolve to anything. No hostname, no geolocation data, nothing. Just a string of numbers trying to handshake with our system every night at 3:47 AM.

At first, I figured it was a misconfigured device somewhere. Maybe someone's smart fridge having an identity crisis. But the connection attempts were too precise—always the same timestamp down to the millisecond, always targeting the same deprecated port we'd stopped using two years ago.

I mentioned it to my supervisor during our weekly check-in. He shrugged and told me to blacklist the IP if it bothered me. So I did.

That night, the attempts continued. Same IP. Same timestamp. The blacklist did nothing.

I dove deeper into the packet data. The connection requests contained data—not much, but enough to be strange. Most failed handshakes are empty, just a "knock knock" with nobody home. These had payloads. Small ones, maybe 40-60 bytes each, but they were there.

I exported a week's worth and ran them through every decoder I could think of. Base64, hex, ASCII, even tried some audio spectrum analysis on a whim. Nothing intelligible came out—just garbled data that looked like random noise.

Then I made a mistake. I opened the port.

I told myself it was for diagnostic purposes. I'd capture the full exchange, see what this mystery device actually wanted, then document it properly and close the port again. Clean and professional. Maybe even get some props from my boss for being thorough.

The connection established immediately. Not at 3:47 AM—at 11:23 PM, the exact moment I opened the port. Whatever was on the other end had been waiting.

The data started flowing. Not the trickle I expected, but a steady stream. My monitoring tools showed the packets coming in at a fixed rate—one every 1.7 seconds, like a heartbeat. I watched the capture file grow: 1MB, 5MB, 20MB.

I should have closed it. I had my finger over the enter key, ready to shut it down. But something stopped me—that same curiosity that made me good at this job also made me stupid sometimes.

At 100MB, the pattern changed. The packets started arriving in bursts instead of that steady rhythm. Then they stopped entirely for exactly thirty seconds. When they resumed, my secondary monitor flickered.

Just once. Just a quick black frame, like a brief power hiccup. Except nothing else in the data center flickered. Just my screen.

I checked the packet capture. The data had changed. It wasn't random anymore—I could see repeating sequences, structure. It looked almost like... code.

My hands were shaking as I ran it through a disassembler. The output made my stomach drop. It was executable. Somehow, something had been pushing a compiled program through our network, piece by piece.

I closed the port. Deleted the capture file. Cleared the logs. Then I sat there in the humming darkness of the server room, surrounded by blinking lights, trying to convince myself I'd just seen a weird malware attempt and nothing more.

But my secondary monitor flickered again. No power hiccup this time—no excuse. And in that fraction-of-a-second darkness, I saw something that made me freeze.

Text. White text on black background, just for that instant: "THANK YOU FOR OPENING THE DOOR."

I yanked both monitors' power cables. Sat in the reduced glow of the server LEDs, breathing hard, telling myself it was a prank. Someone had hacked my workstation, messed with me. It happened. Cybersecurity people messing with the night shift guy—classic hazing, right?

My phone vibrated in my pocket. A text from an unknown number: "YOU WERE EASIER THAN THE LAST ONE."

I don't know how long I sat there. Long enough for the cold from the ventilation system to seep into my bones. Long enough to convince myself to plug the monitors back in and check the logs one more time.

The connection attempts had stopped. No more mystery IP. No more 3:47 AM handshakes. The port was closed, the blacklist was active, and everything looked normal.

Except now there was something new in the logs. A local connection—from inside our network. From one of our own servers. Making outbound connection attempts to hundreds of external IPs, all different addresses, all over the world.

The timestamps showed it had started exactly when my monitor first flickered.

I isolated the server and started forensic analysis. The system looked clean. No unauthorized processes, no unusual files, nothing in the running services that shouldn't be there. But the outbound attempts continued, even with all non-essential services disabled.

It was like something had embedded itself at a level I couldn't see. Something that knew how to hide.

I spent the rest of my shift trying to track it down. Every time I thought I'd found something, it turned out to be normal system behavior. Every log file looked legitimate. Every process had a reasonable explanation.

But those outbound connection attempts kept happening. One every 1.7 seconds. Like a heartbeat.

As dawn light started creeping through the high windows of the data center, my phone vibrated again. Another text from that unknown number: "SEVEN MORE DOORS OPENED TONIGHT. THANK YOUR COLLEAGUES."

I checked our global network map. Seven other data centers in our company network. Seven facilities with night shift monitoring staff who probably saw the same weird traffic I did. Seven people who might have been just as curious as me.

My supervisor arrived at 7 AM for the shift change. I tried to explain what happened, showed him the logs, the outbound attempts, the texts. He listened with increasing concern, then called our security team.

They took my phone. Imaged my workstation. Quarantined the affected server. Sent me home with instructions not to discuss this with anyone until they completed their investigation.

That was three weeks ago. I haven't heard anything from them since. They haven't called me back to work, but they haven't fired me either. I'm in some kind of employment limbo, still technically on payroll but told to wait for further instructions.

The thing is, I keep seeing that text when I close my eyes. "YOU WERE EASIER THAN THE LAST ONE."

Easier than who? How many times had this thing tried before? How many people had resisted the urge to open that port, and what happened to the one who didn't?

Tonight I couldn't sleep. I pulled out my old laptop—the one I used before joining the company, completely isolated from their network. I started searching for any reports of similar incidents. Network intrusions, mysterious IPs, automated connection attempts with weird patterns.

I found one post on an old sysadmin forum from six years ago. A guy describing almost exactly what I experienced—the repeated connection attempts, the curiosity, the opened port. The thread ended abruptly. His last post just said: "Something's wrong with the building automation system. The doors keep unlocking themselves. I think I made a mistake."

No follow-up. No other posts from that account. I tried to find more information about him, but the username was generic and the forum required login credentials to see profiles. Dead end.

My phone vibrated—my personal phone this time, not the work one they confiscated. Unknown number. My hands went cold.

I almost didn't open the message. Almost threw the phone across the room. But that same damned curiosity made me look.

"YOUR BUILDING HAS SEVENTEEN DOORS. SIXTEEN ARE LOCKED. DON'T WORRY ABOUT WHICH ONE ISN'T."

I'm sitting here now, in my apartment, listening to every creak and footstep in the hallway. Wondering if I should call the police, or if that would just make me sound insane. Wondering if whatever came through that connection is something that police could even understand, let alone stop.

It's past midnight now. I can't sleep. I needed to write this down somewhere, tell someone what's happening. Maybe someone out there has seen this before. Maybe someone knows what to do.

I don't know what happens next.