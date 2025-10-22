+++
title = "Being wrong"
date = 2025-10-18
draft = false
description = "The polls suggest I fucked up."
tags = ['politics', 'greens', 'polanski', 'labour', 'class', 'environment']
+++

{{< thumb "/images/blog/2025/10/green-party-sign.jpg" "full" "Green Party campaign sign. (Credit: Mr Ignavy, [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:It_must_be_May_-_geograph.org.uk_-_4794778.jpg), CC-BY-SA 2.0)" >}}

Less than a month ago, I wrote about [why I left the Green Party](/2025/09/polanski/) before Zack Polanski's leadership vote was even held. I agreed with his class-first approach, with his eco-populism, with linking climate action to wealth redistribution. But I left anyway, worried that the Greens would abandon environmental expertise to become "Old Labour with solar panels," leaving a vacuum in dedicated environmental advocacy.

I called it "an experiment with stakes too high to get wrong."

Well, the results are in. And it looks very likely that i might have been wrong.

A new Find Out Now poll puts the Green Party at 15.31%, marginally ahead of Labour at 15.23%.[^4] This is the Greens' best polling performance in their history. Labour, meanwhile, is experiencing its worst post-war polling just 13 months after winning a general election.

{{< chart id="findoutnow-poll" type="bar" height="300" >}}
{
  "data": {
    "labels": ["Reform UK", "Conservative", "Green Party", "Labour", "Liberal Democrats"],
    "datasets": [
      {
        "label": "Voting Intention (%)",
        "data": [32, 16, 15.31, 15.23, 12],
        "backgroundColor": [
          "rgba(18, 182, 207, 0.7)",
          "rgba(0, 135, 220, 0.7)",
          "rgba(106, 176, 35, 0.7)",
          "rgba(228, 0, 59, 0.7)",
          "rgba(250, 166, 26, 0.7)"
        ],
        "borderColor": [
          "#12B6CF",
          "#0087DC",
          "#6AB023",
          "#E4003B",
          "#FAA61A"
        ],
        "borderWidth": 2
      }
    ]
  },
  "options": {
    "indexAxis": "y",
    "plugins": {
      "legend": {
        "display": false
      },
      "title": {
        "display": true,
        "text": "Find Out Now Poll - 15 October 2025",
        "font": {
          "size": 16,
          "weight": "600"
        }
      }
    },
    "scales": {
      "x": {
        "beginAtZero": true,
        "max": 35,
        "ticks": {
          "callback": function(value) {
            return value + '%';
          }
        },
        "title": {
          "display": true,
          "text": "Voting Intention"
        }
      }
    }
  }
}
{{< /chart >}}

But there's a caveat here. Find Out Now consistently shows Reform UK polling much higher than other pollsters - 32% in this poll, compared to most other firms showing Reform in the high teens or low twenties. In the 2024 general election, Find Out Now overestimated Reform's vote share by 3.3 percentage points and underestimated the Conservatives by 3.9 points.[^5] Their methodology differs from traditional pollsters: they use a panel of 100,000+ daily respondents who have been on the panel for years, and they never re-ask past voting behaviour, instead referring back to post-election data.

Find Out Now argues this makes them more accurate because it avoids false recall and captures disengaged voters that other pollsters miss.[^6] But it also means their polls might systematically overstate support for insurgent parties like Reform - and potentially the Greens. If Find Out Now is overstating Reform by 3-4 points as they did in 2024, they might be overstating the Greens by a similar margin.

Even accounting for that, though, the trend is undeniable. Other pollsters also show the Greens surging - just not quite as dramatically. The membership data doesn't lie: the Greens are growing at an extraordinary rate, and Labour is hemorrhaging support. Find Out Now might not be the perfect barometer, but the direction of travel is clear.

Green Party membership has surged to over 112,000 - a 45% increase since Polanski's election in early September.[^1] They've overtaken the Liberal Democrats and are rapidly closing in on the Conservatives. Labour, despite winning the 2024 general election, has hemorrhaged members under Starmer, dropping from over 530,000 at the end of the Corbyn era to around 309,000 by early 2025.[^2] Meanwhile, Reform UK has surged to 250,000 members by September 2025, more than doubling the Conservative Party's membership.[^3]

{{< chart id="party-membership" type="line" height="450" >}}
{
  "data": {
    "labels": ["Dec 2024", "Feb 2025", "Early Sep 2025", "Late Sep 2025", "Oct 2025"],
    "datasets": [
      {
        "label": "Labour",
        "data": [333235, 320000, 312000, 310000, 309000],
        "borderColor": "#E4003B",
        "backgroundColor": "rgba(228, 0, 59, 0.1)",
        "borderWidth": 3,
        "tension": 0.4,
        "fill": true
      },
      {
        "label": "Reform UK",
        "data": [170000, 200000, 235000, 250000, 250000],
        "borderColor": "#12B6CF",
        "backgroundColor": "rgba(18, 182, 207, 0.1)",
        "borderWidth": 3,
        "tension": 0.4,
        "fill": true
      },
      {
        "label": "Conservatives",
        "data": [131680, 128000, 125000, 123000, 123000],
        "borderColor": "#0087DC",
        "backgroundColor": "rgba(0, 135, 220, 0.1)",
        "borderWidth": 2,
        "tension": 0.4,
        "fill": false
      },
      {
        "label": "Green Party",
        "data": [65000, 66000, 68500, 100000, 112000],
        "borderColor": "#6AB023",
        "backgroundColor": "rgba(106, 176, 35, 0.1)",
        "borderWidth": 4,
        "tension": 0.4,
        "fill": true
      },
      {
        "label": "Liberal Democrats",
        "data": [75000, 70000, 65000, 62000, 60000],
        "borderColor": "#FAA61A",
        "backgroundColor": "rgba(250, 166, 26, 0.1)",
        "borderWidth": 2,
        "tension": 0.4,
        "fill": false
      }
    ]
  },
  "options": {
    "plugins": {
      "legend": {
        "display": true,
        "position": "top"
      },
      "title": {
        "display": true,
        "text": "UK Party Membership (December 2024 - October 2025)",
        "font": {
          "size": 16,
          "weight": "600"
        }
      }
    },
    "scales": {
      "y": {
        "beginAtZero": false,
        "min": 50000,
        "max": 350000,
        "ticks": {
          "callback": function(value) {
            return value.toLocaleString();
          }
        },
        "title": {
          "display": true,
          "text": "Members"
        }
      },
      "x": {
        "title": {
          "display": true,
          "text": "Time Period"
        }
      }
    }
  }
}
{{< /chart >}}

The chart tells the story: Labour declining, the Greens surging. The traditional party system is fragmenting, and Polanski's eco-populism is capturing disillusioned left-wing voters who have nowhere else to go.

## What I Got Wrong

My fear was that eco-populism would dilute the environmental focus. That making the Greens a vehicle for left-wing economics would mean losing the policy expertise, the institutional knowledge, the dedicated environmental advocacy that made them valuable even when their broader politics were frustratingly centrist.

But what's actually happened is more interesting and more important: Polanski hasn't abandoned environmental politics - he's made them *relevant*.

You can see it in his media appearances. On Question Time and Jeremy Vine,[^7][^8] he's been assertive yet calm, linking climate action directly to people's immediate material concerns. The message isn't "sacrifice now for the planet's future" - it's "the same people hoarding wealth are destroying the planet, and we can fix both problems by redistributing power."

This is what I should have understood: environmental advocacy divorced from class politics *doesn't work*. It becomes middle-class virtue signaling, asking working people to make sacrifices while the rich continue their private jets and superyachts. Polanski's approach doesn't dilute environmental politics - it gives them the class analysis they always needed.

## The Media Response

The British media's reaction tells you everything. The BBC refused Polanski a slot on Laura Kuenssberg's show despite previously platforming Nigel Farage when Reform had no MPs.[^9] The Spectator attacked his wealth tax proposals. The Telegraph ran multiple hostile pieces portraying him as "woke" or "deluded."[^10]

When the establishment media treats you like a threat, you're doing something right.

Even Labour insiders reportedly see Polanski as a real threat. The New Statesman noted the Greens' rising support in urban strongholds - London, Manchester, Bristol, Sheffield, Norwich - where they now frequently finish second to Labour.

This isn't the media response to a party diluting its message. This is the response to a party that's found one that works.

## Your Party's Collapse

The timing matters. Polanski's surge has coincided with the organisational disaster of Your Party - the Corbyn-Sultana project that was supposed to be the vehicle for left-wing politics outside Labour.

Zarah Sultana announced it publicly in July without warning Corbyn, breaking agreed secrecy. In September, she sent out an unauthorised email opening paid membership, which Corbyn had to publicly disavow and relaunch days later. The party's now registered with Corbyn as leader and Sultana apparently sidelined.[^11]

I wrote about [the problems with hero worship](/2025/10/on-heroes/) in movements. Your Party demonstrated exactly those problems: competing personalities, unilateral decisions, no democratic structures, no collective control. Just chaos.

And where did the disillusioned left-wing voters go? Not back to Labour. Not into political apathy. To the Greens. To an actual organisation with actual structures, led by someone who could articulate their politics without the organisational shambles.

## What About the Environment?

Polanski's platform *is* environmental. Wealth redistribution and fair taxation. Public ownership of essential services. Workers' rights and decent housing. A green industrial strategy addressing the climate crisis. A foreign policy rooted in peace and justice.

Every single one of these connects to environmental politics. You can't address the climate crisis without public ownership of energy. You can't build a green economy without workers' rights. You can't achieve environmental justice without challenging the wealth that enables the worst polluters to escape consequences.

I was looking for "environmental expertise" as a separate category, a distinct policy area. But that's exactly the liberal framing Polanski rejects. The expertise the Greens need isn't just about carbon budgets - it's about understanding that environmental destruction and economic exploitation are two sides of the same system.

Maybe the party does lose some of the technocratic environmental policy wonks. Maybe some of the centrist environmentalists do feel alienated. But what they've gained is far more valuable: a politics that can actually mobilise people, that connects environmental crisis to their lived experience, that offers solutions rather than guilt.

I wrote that we were conducting "an experiment with stakes too high to get wrong." I was right about the stakes. The climate crisis is existential. The collapse of social democracy is accelerating. We can't afford another decade of losing.

But I was wrong about the experiment. This isn't a risky gamble - it's the only approach that's ever worked. Every successful left movement has connected disparate struggles into a unified class politics. The civil rights movement linked racism to economic exploitation. The Labour Party was born from unions connecting workplace rights to political power. The climate movement will only succeed by doing the same.

{{< subscribe >}}

## Being Wrong Is Good, Actually

I'm genuinely happy to be wrong about this. I wanted to be wrong. I actively *hoped* to be wrong. But I couldn't convince myself at the time.

That's what I've learned from this: sometimes you need to see the evidence. Not just the theoretical argument, not just the inspiring speeches, but the actual results. Polling data. Membership numbers. Media reactions. The concrete proof that the strategy works.

Three weeks ago, I thought eco-populism was a risk we couldn't afford. Now I think it's the only strategy that makes sense. I was wrong, and I'm delighted about it.

What Polanski has done is remarkable. He's positioned the Greens as "the only real opposition on the left," championing fair taxation, climate action, and social justice over corporate interests. Labour is collapsing. Your Party is a shambles. The Greens are doing the work.

This is a genuinely interesting political experiment - one with the potential to bring millions of disillusioned left-wing voters into a fundamentally different form of politics. Not the politics of guilt and sacrifice, but the politics of self-interest aligned with collective liberation. Not "save the planet by cutting your consumption," but "we can all live better lives and save the planet by making the rich pay their share."

Whether this experiment succeeds depends on what comes next. Whether the Greens can translate momentum into genuine political power. Whether Polanski can maintain both the radicalism and the discipline needed to build something that actually wins. Whether the movement can expand beyond current supporters into the broader electorate.

But the fact that it's working this well, this quickly - that people are responding to this message in such numbers - that's remarkable. It suggests there's real hunger for a politics that refuses the false choice between environmental responsibility and material comfort.

## The Warning for Labour

There's a lesson here for the Labour leadership. The Conservatives learned it too late with UKIP: when you abandon your base's core concerns, your base will find someone else. The Tories spent a decade trying to outflank UKIP on immigration while ignoring the deeper material anxieties driving people toward that party. By the time they realised what was happening, the damage was done.

Labour is repeating this mistake. They won the last election on the promise of change, of genuine redistribution, of putting working people first. Thirteen months later, they're hemorrhaging members - losing a member every ten minutes - while a party barely six weeks old under a new leader is capturing their former voters at a rate faster than they can spin policy lines.

The Labour Party still has time to correct course. But it requires understanding that the hunger Polanski is tapping isn't about identity politics or environmental guilt-tripping. It's about material security. It's about whether people can afford to live. It's about whether the system that's destroying the planet is the same system extracting wealth from ordinary people, and whether anyone in power actually wants to change it.

If Labour doesn't answer that question - and answer it credibly - they'll find themselves in the same position as the Conservatives: watching as a insurgent movement peels away their base one constituency at a time. The difference is that this time the insurgency has the policies and the momentum to actually win.

Sometimes being wrong is the best thing that can happen to you. It means reality is better than you feared.

I'll take that.

[^1]: Green Party of England and Wales, "Green Party membership surges past 100,000 as polls show record support," 12 October 2025, https://greenparty.org.uk/2025/10/12/green-party-membership-surges-past-100000-as-polls-show-record-support/

[^2]: LabourList, "Membership down 11% since election as Labour loses a member every 10 minutes," February 2025; Labour membership stood at 333,235 at the end of 2024 and fell to approximately 309,000 by early 2025. The party peaked at 532,046 members at the end of 2019 under Jeremy Corbyn.

[^3]: GB News, "Reform UK membership: Nigel Farage hits MASSIVE milestone as party membership swells to 200,000," 9 February 2025, https://www.gbnews.com/politics/reform-uk-membership-nigel-farage-massive-milestone-party; By September 2025, Reform UK reported reaching 250,000 members, surpassing the Conservative Party's approximately 123,000 members.

[^4]: Find Out Now, "Voting intention: 15th October 2025," https://findoutnow.co.uk/blog/voting-intention-15th-october-2025/. The poll surveyed 2,705 GB adults weighted to be nationally representative by gender, age, region, ethnicity, and 2024 General Election vote.

[^5]: Find Out Now, "Find Out Now and the 2024 General Election," https://findoutnow.co.uk/blog/find-out-now-and-the-2024-general-election/. Their final 2024 poll estimated Labour at 35.2% (actual: 34.6%), Conservatives at 20.0% (actual: 23.9%), and Reform UK at 17.3% (actual: 14.0%).

[^6]: Find Out Now, "How pollsters may be understating the Reform vote," https://findoutnow.co.uk/blog/how-pollsters-may-be-understating-the-reform-vote/. Find Out Now argues their methodology avoids issues with false recall and captures disengaged voters, though critics note this may systematically overstate support for insurgent parties.

[^7]: BBC Question Time, 9 October 2025. Polanski appeared on the panel in Shrewsbury alongside Reform UK's head of policy Zia Yusuf, James Murray, Nigel Huddleston, and Telegraph columnist Annabel Denham, hosted by Fiona Bruce. On wealth taxes and the wealthy fleeing Britain, Polanski responded: "The Duke of Westminster owns half of Mayfair. He can't just pick up Mayfair and leave."

[^8]: Jeremy Vine Show, Channel 5, 15 October 2025. Polanski appeared to discuss his wealth tax proposals with Carole Malone.

[^9]: BBC Laura Kuenssberg Show cancelled Polanski interview, October 2025. Byline Times, "BBC Laura Kuenssberg Show Accused of Anti-Green Bias After Cancelling Zack Polanski Interview," 6 October 2025, https://bylinetimes.com/2025/10/06/bbc-laura-kuenssberg-interview-zack-polanski-accused-anti-green-party-bias-farage-reform/

[^10]: Michael Deacon, "The Green Party's woke new leader is even more deluded than we thought," The Telegraph, 13 September 2025, https://www.telegraph.co.uk/news/2025/09/13/zack-polanski-green-party-leader-woke-deluded-racism/

[^11]: Andrew Murray, "Your Party divisions explode into the open," Morning Star Online, https://morningstaronline.co.uk/article/your-party-divisions-explode-open
