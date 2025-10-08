+++
title = "Bevan's AI: Universal, Free, and Based on Need"
date = 2025-10-08
draft = false
description = "What NHS AI adoption looks like when guided by principle, not profit"
tags = ['nhs', 'healthcare', 'technology', 'ai', 'politics', 'labour', 'socialism']
+++

{{< thumb "/images/blog/2025/10/aneurin-bevan-corwen.jpg" "full" "Aneurin Bevan at a national meeting in Corwen Pavilion. (Credit: Geoff Charles, [National Library of Wales](https://commons.wikimedia.org/wiki/File:Aneurin_Bevan_at_a_national_meeting_in_Corwen_Pavillion_(1451252).jpg), CC-BY-SA 4.0.)" >}}

When Aneurin Bevan launched the National Health Service in 1948, he established three foundational principles that were radical then and remain radical now: healthcare should be universal, free at the point of use, and allocated based on clinical need rather than ability to pay.[^1] These weren't just administrative choices - they represented a fundamentally different vision of how society should organise care for its members.

[^1]: Aneurin Bevan, *In Place of Fear* (1952). The three core principles were: (1) that it meet the needs of everyone, (2) that it be free at the point of delivery, and (3) that it be based on clinical need, not ability to pay.

Seventy-seven years later, we're in the middle of what boosters call an AI revolution. Every sector faces questions about how to adopt these technologies, and healthcare is no exception. The NHS is already experimenting with AI for diagnosis, triage, administrative efficiency, and clinical decision support.[^2] But we're making these choices in an environment dominated by private tech companies, venture capital, and the assumption that innovation means market-driven development and proprietary control.

[^2]: NHS England's [AI Lab](https://www.nhsx.nhs.uk/ai-lab/) has funded numerous AI projects since its establishment in 2019, including imaging diagnostics, predictive analytics for patient deterioration, and administrative automation. As of 2025, over 50 AI tools are in use across NHS trusts, though adoption remains patchy.

What if we approached AI adoption in healthcare differently? What would it look like if we let Bevan's principles guide us - not as constraints, but as positive visions for what AI could enable?

## Principle One: Universal Access

Bevan's first principle was that the NHS should "meet the needs of everyone." Not just those who can afford it, not just those in certain regions, but everyone. This wasn't about lowest-common-denominator care - it was about ensuring that geography, income, or social status didn't determine your access to medical treatment.

Right now, AI deployment in healthcare is deeply uneven. Some NHS trusts have cutting-edge diagnostic tools using machine learning; others are still using paper records.[^3] Some GPs have access to AI-assisted triage systems; others are overwhelmed by demand with no technical support. This isn't universalism - it's a postcode lottery supercharged by technology.

[^3]: A 2024 report by the Health Foundation found significant variation in digital maturity across NHS trusts, with some still reliant on paper-based systems while others have implemented advanced analytics platforms. [The Health Foundation, *Digital Transformation in the NHS*](https://www.health.org.uk/), 2024.

A Bevan-inspired approach would start from the opposite premise: AI tools proven to improve patient outcomes should be universally available across the NHS. If an AI diagnostic tool improves cancer detection rates, it should be standard equipment in every relevant setting - not a premium feature for well-resourced trusts.

This has implications for how these tools are developed and procured. Instead of individual trusts negotiating separately with tech companies, creating a patchwork of different systems and pricing models, universal deployment would require national coordination. NHS England would need to evaluate tools centrally, negotiate universal licensing, and ensure interoperability.

### The Interoperability Trap

Here's where the apparently technical question of data standards becomes intensely political. Right now, NHS systems are siloed - different trusts use different software, different data formats, different ways of storing patient information. Getting systems to talk to each other is enormously difficult and expensive. This isn't an accident; it's profitable. Proprietary vendors build walls around their data, making it difficult to integrate with competitors or move to alternatives.

We're starting to address this with existing systems. Wales is adopting FHIR (Fast Healthcare Interoperability Resources) as a universal standard for all data transmission across NHS Wales systems.[^3a] It's the right move - FHIR is an open standard that allows different healthcare systems to exchange data in consistent, structured formats. But it's taking years to fully implement because of how deeply entrenched the silos have become. Decades of proprietary systems have created a maze of incompatible data formats, each requiring expensive custom integration work.

[^3a]: [FHIR (Fast Healthcare Interoperability Resources)](https://www.hl7.org/fhir/) is an international standard for exchanging healthcare information electronically, developed by Health Level Seven International (HL7). NHS Wales Digital Health and Care Wales has been working to implement FHIR across Welsh health systems as part of its Digital Health and Care Wales strategy.

**We cannot afford to repeat this mistake with AI.** If we allow another generation of proprietary, incompatible systems to be deployed across the NHS, we'll be stuck with them for decades. The cost - both financial and in terms of patient outcomes - will be enormous.

The next wave of AI systems, particularly agentic AI that learns and adapts over time, makes this problem worse.[^3b] These aren't just databases storing information - they're systems that build up institutional knowledge through use. That accumulated learning is incredibly valuable, and if it's locked in proprietary formats, switching providers means losing it all. Tech companies know this. They're designing systems specifically to create switching costs that make it prohibitively expensive to leave.

[^3b]: Agentic AI systems are distinguished from traditional AI by their ability to pursue goals autonomously, learn from interactions, and take actions without explicit instructions for each step. In healthcare, this might mean an AI that doesn't just flag potential drug interactions but actively manages medication regimens, schedules follow-ups, and adapts protocols based on patient responses.

The only defense is **mandatory open standards from day one**. Any AI system deployed in the NHS should be required to use standardised data formats, provide open APIs, and ensure that any learning or institutional knowledge it develops is portable. If an AI system can't export its accumulated knowledge in an open format that another system can import, it shouldn't be allowed in the NHS. Full stop.

But open standards alone aren't enough. If a diagnostic algorithm becomes essential for universal care, it should be publicly owned - developed through public funding, with code and training data openly available for audit and improvement. We wouldn't accept a private company owning the patent on X-rays and charging trusts individually for access; why accept it for AI tools that become equivalently fundamental? The accumulated knowledge these systems develop from NHS data, NHS workflows, and NHS clinical practice is a public asset created through public investment. It shouldn't be privately owned.

### Building From the Ground Up

Public ownership doesn't have to mean centralised development. In fact, there's a better model: health boards across Wales and England should be required to share any AI development work they do under free and open source licenses. When a trust develops a tool that works, that code should be available for every other trust to use, modify, and improve.

This creates the foundation for a **collective of practitioners and developers** who can support the rollout of systems across the service. Instead of centralising all development to bodies like Digital Health and Care Wales (DHCW) or NHS Digital, you build a community of practice - technical staff across different trusts collaborating on shared tools, contributing improvements, adapting solutions to local needs while maintaining compatibility.

This is how successful open source projects work. No single entity controls everything, but there are shared standards and a community that collectively maintains and improves the codebase. Applied to NHS AI, it means:

- A trust that develops an AI triage tool releases it under an open license
- Other trusts can deploy it, but also modify it for their specific needs
- Improvements flow back to the shared codebase
- A community of NHS technical staff builds expertise in the tools they're actually using
- Everyone benefits from everyone else's work instead of reinventing the wheel

This isn't just about saving money (though it would). It's about building genuine public ownership - not just the state owning the code, but the people who actually work in the NHS collectively developing and maintaining the tools they depend on. That's a form of democratic control that centralised procurement, even of "open source" tools, can never achieve.

The alternative - every trust buying proprietary systems, or even centralising everything to one public body - creates either fragmentation or bureaucratic bottlenecks. A distributed model with open licensing and collaborative development gives you the best of both: local autonomy with universal standards, innovation without fragmentation, public ownership with democratic participation.

Universalism also means addressing the digital divide in patients. If AI-driven services assume smartphone access, reliable internet, and digital literacy, they'll systematically exclude elderly patients, those in poverty, and marginalized communities. A universal system has to work for everyone, which means maintaining non-digital pathways and ensuring technological adoption doesn't create new forms of exclusion.

{{< subscribe >}}

## Principle Two: Free at the Point of Use

The second principle was that healthcare should be free at the point of use. No payment barriers between patients and the care they need. This was about removing financial anxiety from the healthcare encounter - you shouldn't have to calculate whether you can afford to see a doctor or get a test.

AI introduces new ways this principle could be undermined. Some private healthcare providers are already offering "AI-enhanced" services at premium rates - faster diagnostics, personalised treatment planning, predictive health monitoring. As these tools prove effective, there's enormous pressure to introduce them into the NHS through public-private partnerships where patients pay extra for "enhanced" AI-assisted care.

This would be a fundamental betrayal of the free-at-point-of-use principle. If AI genuinely improves health outcomes, it must be available to all patients as part of standard NHS care, not as an optional extra for those who can pay. Creating a two-tier system where those with money get AI-enhanced diagnosis and treatment planning while NHS patients get the "basic" version isn't innovation - it's a slow-motion privatisation of clinical quality.

There's also a more subtle threat: data as payment. Many AI health tools are "free" for patients but monetised through data harvesting - your health information becomes the product sold to pharmaceutical companies, insurers, or researchers. This violates the principle of free access in a different way. You're still paying, just with privacy rather than money.[^4]

[^4]: This model is exemplified by apps like Babylon Health's AI symptom checker, which was "free" for users but monetised through data partnerships. The [Information Commissioner's Office warned in 2023](https://ico.org.uk/) about health apps sharing data with third parties without adequate consent.

A Bevan-inspired approach would insist that healthcare AI, like healthcare itself, must be genuinely free - no payment, no data extraction, no hidden costs. If the NHS uses AI tools, they should be funded through public budgets and subject to strict data protection that prevents commercial exploitation. Your health data should be used to improve your care and public health more broadly, not to generate private profit.

## Principle Three: Based on Clinical Need

The third principle was that healthcare should be allocated based on clinical need, not ability to pay. The sickest patients should get priority, regardless of wealth or status. Resources should flow to where they're most needed medically, not most profitable financially.

This principle is under sustained attack from multiple directions, and AI risks accelerating that erosion. The problem isn't the technology itself - it's how market incentives shape what gets developed and deployed.

Right now, AI healthcare development is concentrated where there's profit: diagnostics for wealthy populations, efficiency tools to reduce staff costs, technologies that appeal to private healthcare markets. There's massive investment in AI for dermatology (easily monetised, affluent patient base) and relatively little for diseases primarily affecting the global poor.[^5] There's enthusiasm for AI that can replace nurses or GPs (reducing labour costs) and less for AI that augments clinical judgement in resource-intensive specialties.

[^5]: A 2024 analysis in *The Lancet Digital Health* found that over 70% of AI diagnostic tools were developed for conditions prevalent in high-income countries, while neglected tropical diseases and conditions primarily affecting low-income populations received minimal attention despite higher disease burden. [*The Lancet Digital Health*, "Equity in AI Health Innovation", 2024].

A clinical-need-based approach would invert these priorities. What AI tools would most improve outcomes for patients with the greatest needs? What technologies would reduce health inequalities rather than reinforcing them? Where are NHS staff most overwhelmed and how can AI support them in those contexts?

This might mean prioritising AI for:
- **Mental health services**, which are desperately under-resourced, where AI could support therapists and help triage patients more effectively
- **Early detection in underserved populations**, using AI to identify patients at risk who wouldn't otherwise access preventive care
- **Chronic disease management**, where AI could help patients and GPs manage complex conditions that currently consume enormous resources
- **Reducing diagnostic delays in underfunded specialties**, particularly those facing workforce shortages

Crucially, a clinical-need approach requires addressing algorithmic bias. Many AI systems trained on data from predominantly white, affluent populations perform worse for other groups.[^6] If we're serious about allocating based on need, we have to ensure AI tools work equitably - that means diverse training data, rigorous testing across populations, and willingness to reject tools that entrench inequality.

[^6]: Research has consistently shown that medical AI systems demonstrate bias. A 2023 *Nature Medicine* study found that an algorithm widely used in US hospitals systematically underestimated the health needs of Black patients. Similar concerns exist for AI trained predominantly on UK data that may not reflect diverse populations.

## What This Means in Practice

So what would NHS AI actually look like if we followed these principles?

**On development**: Increased public funding for AI research aligned with clinical priorities rather than market opportunities. NHS AI tools should be publicly owned, with code and training data openly available for scrutiny and improvement. This means treating essential healthcare AI as public infrastructure, not private intellectual property.

**On procurement**: National coordination to ensure universal availability of proven tools, not patchwork adoption based on individual trust resources. Mandatory interoperability requirements for all AI systems - standardised data formats, open APIs, portable institutional knowledge. Rejection of proprietary systems that create vendor lock-in. Preference for open-source solutions that allow the NHS to own and modify the tools it depends on.

**On deployment**: Free access for all patients without data extraction or hidden costs. Rigorous equity audits to ensure AI doesn't worsen health inequalities. Maintaining non-digital pathways so technological adoption doesn't exclude vulnerable populations.

**On priorities**: Directing AI development toward areas of greatest clinical need rather than greatest profit potential. This means mental health, chronic disease management, underserved specialties, and reducing health inequalities. It means augmenting clinical staff in areas under pressure rather than replacing them to cut costs.

**On governance**: Democratic oversight of how AI is used in healthcare, with healthcare workers, patients, and the public having meaningful input. Not just technical decisions made by hospital managers and tech companies, but genuine democratic control over how these tools shape care.

## The Alternative We're Getting

Without a principled approach, we're drifting toward something very different: AI as another vector for NHS privatisation and health inequality.

We're seeing private companies offering AI-enhanced services that create two-tier care. We're seeing AI development driven by profit rather than clinical need. We're seeing proprietary systems designed to create lock-in, accumulating institutional knowledge in closed formats that become hostage-taking mechanisms for extracting ever-higher fees. We're seeing data extraction masked as innovation. We're seeing tools that work well for affluent populations and poorly for everyone else.

This is how privatisation works in the digital age. You don't need to sell off hospitals. You just make public healthcare dependent on private AI systems that own the institutional knowledge, create prohibitive switching costs, and can raise prices year after year because the NHS is trapped. It's extraction disguised as innovation - and it's the result of treating AI adoption as a technical procurement question rather than a fundamental political choice about what kind of healthcare system we want.

## Bevan's Vision, Updated

Bevan understood that healthcare organisation isn't neutral - it embeds particular values and serves particular interests. The choice between a universal public system and a market-based private system wasn't just about efficiency, it was about what kind of society we wanted to be.

The same is true for AI in healthcare. We can have AI that's universally available or AI that reinforces inequality. We can have AI that's free at the point of use or AI that extracts payment in money or data. We can have AI allocated by clinical need or by profit potential. We can have AI built on open standards with distributed collaborative development, or proprietary systems designed to create lock-in and extract rents from public healthcare.

These aren't technical questions - they're political ones. The Wales FHIR adoption shows both what's possible and what's at stake: fixing proprietary silos after the fact takes years and costs enormous resources. We have a chance to get AI right from the start.

That requires the same kind of radical reimagining Bevan brought to healthcare itself: rejecting the assumption that market logic should govern life-and-death matters, insisting that the most vulnerable deserve the best care not the cheapest, believing that healthcare is a human right not a commodity, and ensuring that the infrastructure of care - including AI systems becoming integral to that care - remains under public ownership and democratic control.

Seventy-seven years after the NHS was founded, Bevan's principles remain a better guide to adopting new technology than anything Silicon Valley has to offer. The question is whether we have the political will to follow them.
