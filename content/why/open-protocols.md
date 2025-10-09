+++
title = "Why Open Protocols Matter"
draft = false
description = "Open protocols aren't just technical standards - they're the difference between a communication infrastructure we collectively control and a series of corporate fiefdoms that control us."
+++

When you send an email, you don't think about whether the recipient uses Gmail, Outlook, or their own mail server. You just send it. When you visit a website, you don't need permission from your browser vendor to access it. When you make a phone call, you don't worry about whether the other person has the same phone company.

This works because email, the web, and telephone systems are built on **open protocols** - shared standards that anyone can implement, that no single company controls, that enable interoperability across the entire system.

Contrast this with modern social media. You can't follow someone on Instagram from Twitter. You can't send messages from WhatsApp to Signal. You can't watch YouTube videos in a client of your choosing without YouTube's permission. Each platform is a walled garden - a closed system where the company controls who can participate, how they can participate, and under what terms.

This difference - between open protocols and closed platforms - is one of the most important architectural choices in digital systems. It determines who has power, how that power can be exercised, and whether users have any autonomy at all.

## The Architecture of Control

Here's the fundamental dynamic: **protocols distribute power, platforms concentrate it**.

With an open protocol, anyone can build an implementation. Anyone can run a server. Anyone can create a client. The protocol is a shared standard - like the rules of a language - and once you know the rules, you can participate on equal terms with everyone else.

Email demonstrates this beautifully. Google runs Gmail, one of the largest email providers. But Gmail can't stop you from running your own email server. They can't prevent you from switching providers. They can't control what email client you use. They can't read emails you send through other providers. They can't unilaterally change how email works.

They're powerful because they have many users and good infrastructure. But their power is fundamentally limited by the protocol itself. The protocol ensures a baseline of interoperability and user autonomy that even the largest provider can't eliminate.

Now contrast this with a platform like Facebook. Facebook controls who can access the platform, how they access it, what clients they can use, what data they can export, who they can communicate with, and under what terms all of this happens. Facebook can change these rules unilaterally. They can ban users, deprecate features, introduce advertising, harvest data, manipulate feeds - and users have no recourse except to leave entirely, abandoning their network in the process.

This is the architecture of control. The platform owns the infrastructure, controls the rules, and extracts value from users who have no alternative if they want to communicate with others on the same platform.

## Network Effects and Lock-In

The reason platforms are so powerful - and so problematic - is network effects.

A communication tool is only useful if the people you want to communicate with also use it. This means the value of a network increases dramatically as it grows - not linearly, but geometrically. A network with twice as many users isn't twice as valuable, it's potentially four times as valuable because there are four times as many possible connections.[^1]

[^1]: This is Metcalfe's Law, which states that the value of a network is proportional to the square of the number of connected users. While the exact mathematical relationship is debated, the basic principle - that networks become disproportionately more valuable as they grow - is well established.

This creates a powerful first-mover advantage. The first platform to achieve critical mass becomes very difficult to displace, because users won't switch unless their contacts also switch, and their contacts won't switch unless *their* contacts switch, and so on.

With closed platforms, this dynamic creates **lock-in**. You can't easily leave because leaving means abandoning your network. The platform knows this, which means they can gradually degrade the service - more ads, more surveillance, more algorithmic manipulation, worse functionality - and most users will stay because the cost of leaving is too high.

Facebook has done this systematically. So has Twitter (now X). So has YouTube. They build a user base with a relatively user-friendly service, achieve network effects that make them difficult to leave, then progressively extract more value while providing less.

Open protocols prevent this dynamic.

With email, if Gmail degrades their service, you can switch to a different provider without losing access to anyone. You take your address, or you forward from your old address, or your contacts simply email your new address - and the network persists because the protocol ensures interoperability.

The protocol means competition happens on service quality rather than network size. Providers have to actually serve users well because users can leave without losing their network.

## Who Controls the Infrastructure?

This brings us to the political core of why open protocols matter: **they determine who controls communication infrastructure**.

Communication infrastructure is power. The ability to communicate, organise, share information, coordinate action - these are fundamental to democratic participation, economic activity, social connection, and political freedom.

When communication infrastructure is built on closed platforms, that power is privatised. A handful of corporations control the channels through which billions of people communicate. They decide what speech is acceptable. They decide what reaches large audiences. They decide what data is collected. They decide what access costs. They decide who gets banned.

And they make these decisions according to their interests - profit, shareholder value, advertiser preferences, government pressure - not according to the public interest or user autonomy.

This is not hypothetical:

- Twitter has shadowbanned political activists and manipulated trending topics to suppress criticism
- Facebook's algorithm has amplified misinformation and extremism because engagement drives ad revenue
- YouTube has demonetised and suppressed content on politically controversial topics
- TikTok's algorithm is subject to Chinese government influence over what content is promoted
- WhatsApp has enabled surveillance by sharing metadata with Facebook
- Platforms routinely ban sex workers, political organisers, and marginalised communities based on opaque moderation policies

Users have essentially no recourse. The platforms are private companies. They set the terms. If you don't like it, you can leave - except you can't really leave without abandoning your network and your ability to participate in digital public life.

Open protocols change this power dynamic fundamentally.

With an open protocol, no single entity controls the infrastructure. Anyone can run a server. Anyone can build a client. If your provider bans you or degrades their service, you can switch providers while maintaining access to the network. If all existing providers are inadequate, you can run your own server or build your own client.

The protocol creates a **commons** - shared infrastructure that no one can enclose or monopolise. This doesn't eliminate power differences entirely - some servers will have more users, some clients will be more popular, some implementations will be better funded. But it prevents the concentration of control that platforms enable.

## Interoperability as Freedom

One of the most important features of open protocols is that they enable **interoperability** - different implementations working together.

This might sound technical, but it's profoundly political.

Interoperability means you can choose your tools based on your needs and values, rather than being forced to use whatever the platform provides.

Want an email client that prioritises privacy? Use ProtonMail. Want better spam filtering? Use a client with better filters. Want to integrate email with your task management? Use a client that supports that. Want to avoid corporate surveillance entirely? Run your own server.

These choices are possible because the protocol separates the infrastructure layer (the protocol itself) from the service layer (specific implementations). You can swap out the service while keeping access to the network.

Closed platforms deliberately prevent this. They want you using their client, seeing their ads, subject to their tracking, locked into their ecosystem. Interoperability would give you choice, which would give you power, which would limit their ability to extract value from you.

This is why platforms fight so hard against third-party clients. Twitter has repeatedly restricted API access to kill third-party clients that offered better user experiences without ads or algorithmic manipulation. Instagram and Facebook do the same. They claim this is about security or user experience, but it's really about control - they don't want you to have alternatives that might limit their power over you.

Open protocols make this kind of restriction impossible. The protocol is public. Anyone can implement it. The infrastructure provider can't prevent you from using a different client because the client connects via the protocol, not via a proprietary API the platform controls.

## The Fediverse as Example

The Fediverse - a network of federated social media platforms including Mastodon, Pixelfed, PeerTube, and others - demonstrates what open protocols enable.[^2]

[^2]: The Fediverse uses ActivityPub, a W3C standard protocol for decentralised social networking. Different platforms implement this protocol, allowing users on different platforms to interact - you can follow a Mastodon user from Pixelfed, comment on a PeerTube video from Mastodon, etc.

Instead of one company running one platform that everyone must join, the Fediverse allows anyone to run a server (an "instance"). Each instance can set its own moderation policies, its own rules, its own funding model. Users choose an instance that aligns with their values and needs.

But crucially, users on different instances can still communicate. The protocol ensures interoperability. You can follow someone on a different instance, see their posts, reply, share - exactly as you would if they were on the same instance.

This creates a fundamentally different power dynamic:

- **Distributed moderation**: Rather than one company deciding what's acceptable for billions of people, each instance decides for its own community. If you disagree with moderation decisions, you can join a different instance or run your own.

- **Server choice**: Don't like how your instance is run? Switch to another while keeping your network, because the protocol ensures your new instance can still connect to everyone else.

- **Client choice**: Don't like the official client? Use any of dozens of alternative clients, or build your own. The protocol is open, so anyone can create better tools.

- **Data portability**: Your data isn't locked in a corporate silo. You can export it, move it to another instance, or run your own instance with complete control.

- **Resistance to enshittification**: No single company can degrade the entire network because there's no single company controlling it. If one instance degrades, users can leave without losing their network.

Is the Fediverse perfect? No. It has challenges - discoverability, user experience, sustainability, harassment management. But these are solvable problems, whereas the fundamental power asymmetry of closed platforms is structural.

The Fediverse proves that social media doesn't have to be a corporate-controlled surveillance machine. It can be open infrastructure, collectively governed, respectful of user autonomy.

## The Historical Lesson

We've been here before.

The early internet was built on open protocols - TCP/IP for networking, SMTP for email, HTTP for the web, NNTP for discussion forums. These protocols created an open, decentralised, interoperable network that no one controlled and everyone could build on.

This was enormously generative. Anyone could start a website, anyone could send email, anyone could create a forum. The low barriers to entry meant explosive innovation - the web, email, blogs, wikis, all the infrastructure that made the internet valuable.

But then platforms emerged. They were more user-friendly, more polished, more feature-rich than the open alternatives. They had venture capital funding to subsidise free services and acquire users. They promised to make things easier - just sign up, no need to run your own server or understand protocols.

And they did make things easier, initially. But once they achieved critical mass, once the network effects locked users in, they changed. They introduced advertising. They harvested data. They manipulated feeds. They restricted APIs. They banned users. They made it harder to leave.

The result is that much of what people think of as "the internet" is actually a handful of walled gardens - Facebook, Twitter, YouTube, TikTok, Instagram - that happen to be accessible via web browsers but that don't meaningfully interoperate with each other or allow user autonomy.

We traded the open internet for convenience, and we got locked into corporate-controlled platforms.

The lesson is clear: **convenience that comes at the cost of control is a trap**. The platforms make things easy at first, but once you're locked in, they can extract value indefinitely because leaving is too costly.

Open protocols resist this dynamic. They might be less immediately convenient - running your own email server is harder than using Gmail - but they preserve autonomy in ways that platforms structurally cannot.

## What About Innovation?

A common objection: "But platforms can innovate faster! They have more resources, more developers, better UX. Open protocols are slow and clunky."

There's some truth to this. Platforms can move quickly because one company makes all the decisions. Protocols require coordination among many stakeholders, which is slower.

But this argument misses several crucial points.

First, **platforms can only innovate within their walled garden**. Facebook can add features to Facebook, but they can't improve the broader communication infrastructure. Every innovation they create is proprietary, locked in their platform, unavailable to the wider ecosystem. This is duplicative and wasteful - every platform rebuilds the same features independently rather than building on shared infrastructure.

Open protocols allow **layered innovation**. The protocol provides the foundation, and anyone can build better tools on top. Email has spawned countless clients, each innovating on UX, features, integration - and all remaining interoperable. The web has millions of sites, each experimenting with different approaches - and all accessible through any browser.

Second, platform "innovation" is often extraction dressed up as features. Algorithmic feeds that prioritise engagement over wellbeing. "Personalisation" that's actually surveillance. "Free" services funded by selling user data. These aren't innovations that serve users - they're innovations in monetisation that serve shareholders.

Third, protocols can and do evolve. Email has added encryption (PGP, S/MIME), better authentication (SPF, DKIM), spam filtering (reputation systems), and more. The web has added HTTPS, WebRTC, WebAssembly, and countless other improvements. These changes are slower than platform changes, yes - but they benefit everyone, forever, rather than being locked in one company's silo.

Finally, the question isn't whether platforms can innovate faster in the short term. It's whether we want communication infrastructure optimised for rapid feature deployment or for user autonomy, interoperability, and resistance to control. Those are different values, and they lead to different architectures.

## What This Means Practically

So what does it mean to care about open protocols?

**Use protocol-based services where you can.** Email instead of platform messaging. RSS instead of algorithmic feeds. The web instead of apps when possible. Fediverse instead of Twitter/Facebook. These aren't always as polished, but they preserve your autonomy.

**Support protocol development.** The IETF, W3C, and other standards bodies need resources and participation. If you have technical skills, contribute. If you have resources, fund protocol development as infrastructure investment.

**Demand interoperability.** When platforms refuse to interoperate, that's a choice - usually a choice to lock you in. Push for regulation requiring interoperability. Support right-to-repair and anti-monopoly efforts that force platforms to open up.

**Run your own infrastructure where feasible.** Your own email server, your own website, your own Fediverse instance. This isn't practical for everyone, but if you have the skills and resources, it's a powerful form of autonomy and it strengthens the ecosystem.

**Understand this as political, not just technical.** Protocols vs platforms is about power. It's about whether communication infrastructure is a public commons or private property. It's about whether you're a user with autonomy or a subject being extracted from.

## Why This Matters Now

We're at a critical moment. The platforms that have dominated the last decade are visibly degrading - Twitter under Musk, Facebook pivoting to surveillance advertising, YouTube's aggressive monetisation, TikTok's algorithmic manipulation.

There's an opening for alternatives. The Fediverse is growing. Protocol-based messaging like Matrix is improving. Efforts to create open protocols for social media (ActivityPub, AT Protocol, Nostr) are gaining traction.

But there's also enormous pressure in the opposite direction. Platforms are fighting interoperability requirements. They're acquiring potential competitors. They're extending their lock-in through proprietary features and ecosystem integration.

The same dynamic is playing out in AI. The major AI systems are closed platforms - proprietary models, restricted APIs, centralised control. This doesn't have to be how AI works. We could build AI on open protocols - open models, shared standards for integration, federated infrastructure. But that requires treating AI as infrastructure to be collectively governed rather than as a platform for corporate control.

Every time we accept a closed platform, we're ceding control over communication infrastructure. Every time we build or support open protocols, we're creating commons that can't be enclosed.

Open protocols matter because **infrastructure is political**. The architecture of our communication systems determines who has power, how that power can be exercised, and whether users have any autonomy.

Platforms concentrate power. Protocols distribute it. That's not a technical distinction. It's a choice about what kind of digital future we want to build.

We can have communication infrastructure that's controlled by corporations for profit, or we can have infrastructure that's collectively governed in the public interest. Open protocols are how we build the latter.

That's why they matter.
