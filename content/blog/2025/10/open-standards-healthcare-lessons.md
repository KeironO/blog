+++
title = "Another World Is Possible: How Wales can fix data"
date = 2025-10-11
draft = false
description = "Three countires have proven that national health systems can build on open standards at scale"
tags = ['nhs', 'healthcare', 'technology', 'interoperability', 'open-standards', 'politics']
+++

In my previous post about applying Bevan's principles to NHS AI adoption, I argued that mandatory open standards aren't just a technical nicety - they're essential to preventing vendor lock-in and preserving public ownership of healthcare infrastructure. The alternative, I warned, is decades of expensive proprietary silos where switching costs become prohibitive and public healthcare systems become hostage to private tech companies.

But this isn't theoretical. We don't have to speculate about whether national health systems can successfully build on open standards, or whether the benefits justify the effort. Three countries - Estonia, Denmark, and Australia - have already done it, at national scale, serving entire populations. Their experiences offer concrete lessons for the NHS about what works, what's possible, and how to get there.

## Estonia: The Open Source Backbone

When Estonia rebuilt its digital infrastructure after independence in 1991, it made a foundational choice: open standards, open markets, and open government would be the default. This wasn't just rhetoric. When they built X-Road - the data exchange layer that connects all Estonian government services - they made it open source and put the entire codebase on GitHub.[^1]

[^1]: The X-Road source code is publicly available at [github.com/nordic-institute/X-Road](https://github.com/nordic-institute/X-Road). The platform has been adopted by Finland, Iceland, and Japan, demonstrating the viability of open-source government infrastructure beyond its country of origin.

X-Road became the backbone of Estonia's e-Health system when it launched in 2008. The system integrates data from different healthcare providers using different systems and presents it in a standard format via the e-Patient portal. But the key innovation wasn't the portal - it was the underlying architecture that made integration possible without requiring every provider to use the same proprietary system.

**The results are striking.** As of 2025, Estonia has achieved:

- 99% of prescriptions issued electronically
- 99% of health data digitized
- Nearly 100% population coverage (every Estonian has a digital health record from birth)
- 2.3 million monthly queries from doctors and patients
- Cross-border health data sharing with Finland

The system handles 50 different standardised document types including discharge letters, referrals, lab results, and prescriptions.[^2] Decision support algorithms detect drug interactions at the point of prescribing, improving patient safety. Digital prescriptions mean patients don't need to see a doctor for renewals, and doctors can process them in 15 seconds.

[^2]: These standards were developed collaboratively across Estonian healthcare institutions and are documented publicly, allowing any provider to implement compatible systems without licencing fees or proprietary restrictions.

The open-source architecture has proven sustainable at scale for nearly two decades. Because the underlying infrastructure is open, Estonia hasn't been locked into any single vendor for the systems that connect to X-Road. Providers can choose different electronic health record systems as long as they implement the standard interfaces. The institutional knowledge - the data formats, the integration patterns, the lessons learned - remains publicly owned and publicly accessible.

Estonia's approach has evolved over time. Initially built centrally out of necessity when the country had limited resources after independence, X-Road became genuinely collaborative when Estonia published the source code under an MIT licence in 2015-2016 and established the Nordic Institute for Interoperability Solutions (NIIS) with Finland and Iceland in 2017.[^estonia-gov] Today, countries like Finland, Iceland, and Japan don't just *use* X-Road - they contribute to its development. The lesson: even if you start centralized because of resource constraints, you can evolve toward distributed collaboration - but only if the infrastructure is built on open standards and open source from the beginning.

[^estonia-gov]: The NIIS now manages X-Road development with an "active international community" contributing to the codebase. The governance model balances centralised coordination (through NIIS) with distributed architecture (each ministry controls its own data) and collaborative international development.

## Denmark: Thirty Years of Interoperability

Denmark took a different but complementary approach. In 1994, they established MedCom - a publicly funded, non-profit organisation owned by the Ministry of Health, Danish Regions, and Local Government Denmark.[^3] MedCom's mandate: develop and maintain national standards for health data exchange.

[^3]: MedCom has approximately 50 employees based in Odense, Denmark, and operates as a consensus-building organisation bringing together healthcare providers, IT vendors, and government agencies to develop standards that actually get implemented.

For thirty years, MedCom has facilitated interoperability across the Danish healthcare system. The scale of adoption is remarkable: over 2,500 health institutions communicate around 5.5 million messages monthly across 150 different systems.[^4] That's not a pilot project or a niche use case - it's the infrastructure of routine clinical communication.

[^4]: The volume has grown significantly over time. Early reports from the 2000s showed 2.3 million messages monthly; by 2025 this had more than doubled to 5.5 million, demonstrating that open standards can scale as healthcare systems grow and digitise further.

Like Estonia, the adoption rates tell the story:

- 99% of prescriptions sent electronically to pharmacies
- 97% of all referrals to hospitals made electronically
- 97% of referrals to medical specialists and psychologists digital

The efficiency gains are well-documented. A 2008 Healthcare Information and Management Systems Society report estimated Denmark's electronic record keeping saved the health system $120 million per year.[^5] More recent studies by the Commonwealth Fund concluded Denmark's information system is the most efficient in the world, saving doctors an average of 50 minutes per day in administrative work.[^6]

[^5]: This figure is from 2008 and represents only a portion of the digital infrastructure then in place. Current savings are likely substantially higher given increased digitisation and message volumes.

[^6]: For context, 50 minutes per day across Denmark's roughly 20,000 doctors represents approximately 4 million hours annually - time that can be redirected to patient care rather than administrative coordination.

**The transition to FHIR demonstrates adaptive evolution.** MedCom built its original standards on EDIFACT (international format) and OIOXML (Danish format). These worked well for decades, but as HL7 FHIR emerged as the global standard, Denmark made a strategic decision: convert all standards to FHIR while maintaining backward compatibility during transition.[^7]

[^7]: MedCom has published its FHIR standards on GitHub at [github.com/medcomdk](https://github.com/medcomdk), following the same open-source approach as Estonia's X-Road. The DK Core profiles provide a national foundation that MedCom standards further refine.

This wasn't a rip-and-replace forced upgrade. It was a managed evolution building on working infrastructure, with an ISO9001:2015 certified testing and certification process ensuring new systems maintain interoperability. The lesson: open standards don't mean static standards. They mean standards you control the evolution of rather than being at the mercy of a vendor's roadmap.

What makes MedCom work is its governance model. From its founding in 1994, MedCom was designed as a consensus-building organisation working in close cooperation with all parts of the healthcare sector: GPs and specialists, hospitals, pharmacies, dentists, homecare, municipalities, and critically - IT vendors.[^medcom-gov] By bringing together practitioners who will use the systems, administrators who will maintain them, and vendors who will implement them, MedCom creates standards that work in practice. The 99% adoption rates for prescriptions and 97% for referrals aren't achieved through mandates - they're achieved through building standards that actually serve everyone's needs.

[^medcom-gov]: This broad stakeholder involvement reflects Denmark's distinctive governance culture more broadly: a "consultative and consensus culture for strategy formulation and implementation" that creates "a sense of joint ownership" and helps maintain the "trust-control balance" necessary for effective public governance.

## Australia: Learning From Others

Australia's My Health Record represents a more recent implementation, one that's consciously learning from international experience. The Australian Digital Health Agency has explicitly endorsed HL7 FHIR as a global standard for rapid deployment of interoperable solutions.[^8]

[^8]: The Australian Digital Health Agency's commitment to FHIR is documented across their developer portal at [developer.digitalhealth.gov.au](https://developer.digitalhealth.gov.au), which provides extensive resources for implementing FHIR-based integrations with national health infrastructure.

In 2023, Australia invested $15 million to establish Sparked - Australia's first FHIR Accelerator - with the goal of delivering a core set of FHIR standards for Australian healthcare settings over two years.[^9] The initiative brings together government, technology vendors, provider organisations, peak bodies, practitioners, and domain experts. This collaborative model echoes Denmark's MedCom approach: bring stakeholders together to build consensus-based standards that actually get implemented.

[^9]: The Sparked AU FHIR Accelerator aims to create not just technical standards but a "thriving FHIR community" that can sustain and evolve standards over time. This community-building focus reflects lessons from successful open source projects about the importance of governance and participation.

The My Health Record FHIR Gateway allows developers to create applications where individuals, their representatives, and healthcare providers can view digital health records in one central location. The AU Core Implementation Guide sets minimum expectations on FHIR resources to support conformance and implementation, defining the data model and RESTful API interactions for core digital health information.

Australia's National Healthcare Interoperability Plan targets a fully connected Australian health system by 2027. That's ambitious, and they're being realistic about challenges:[^10]

[^10]: These challenges were identified through consultations with healthcare organisations, IT vendors, and standards bodies documented in the National Healthcare Interoperability Plan 2023-2028.

- **Legacy systems**: Many healthcare organisations still rely on systems not designed with interoperability in mind. Integration requires costly upgrades or middleware.
- **Security concerns**: Organisations worry about patient data exposure when using FHIR APIs, requiring robust security frameworks.
- **Competing priorities**: Healthcare organisations manage pandemic impacts, staffing shortages, and regulatory compliance alongside digital transformation.
- **Standards complexity**: Multiple international, national, and regional standards create confusion about which to implement.

But acknowledging these challenges while building on international standards like FHIR means Australia isn't reinventing the wheel. They're adapting proven approaches to their context, learning from Estonia's open-source infrastructure model and Denmark's consensus-based standards development.

Australia's Sparked initiative is explicitly designed around collaborative development. The program brings together government, technology vendors, provider organisations, peak bodies, practitioners, and domain experts - over 100 organisations - as equals in standards development.[^sparked] The first release of the AU Core FHIR Implementation Guide represents "over six thousand hours of effort by the Sparked community" - distributed effort across the community, not a central authority or contracted vendor. The result is "developed with insight from clinicians and fully bought into by both industry and government" precisely because all those stakeholders were involved from the beginning.

[^sparked]: Sparked is led by CSIRO's Australian eHealth Research Centre in partnership with the Department of Health, the Australian Digital Health Agency, and HL7 Australia, with governance focused on community participation rather than top-down control.

## What This Means for the NHS

These three countries prove that national health systems can successfully build on open standards at scale. The results - 99% digital prescription rates, millions of messages exchanged monthly, hundreds of millions in efficiency savings - aren't from niche pilot projects. They're from core national health infrastructure serving entire populations.

A pattern emerges from these experiences: **the most successful implementations involved collaborative, consensus-based governance models.** Denmark's thirty-year track record with MedCom bringing together all stakeholders, and Australia's explicit embrace of community-driven development through Sparked, demonstrate that healthcare infrastructure works better when the people who use it have genuine ownership over how it's built. Even Estonia, which started with centralized development out of necessity, evolved toward international collaboration through NIIS once the infrastructure was open source.

Several lessons stand out:

1. **Open source and open standards are production-ready.** Estonia's X-Road has been the backbone of their digital government for over two decades. It's on GitHub. It works. The idea that public healthcare systems must choose between open standards and reliability is false - these countries prove you can have both.

2. **Standards can evolve without creating lock-in.** Denmark's transition from EDIFACT/OIOXML to FHIR shows that open standards don't mean being stuck with obsolete technology. When you control the standards, you control the migration path. When a vendor controls them, you migrate on their timeline at their price.

3. **Interoperability requires governance, not just technology.** Denmark's MedCom and Australia's Sparked Accelerator demonstrate the importance of institutional structures that bring stakeholders together to develop consensus-based standards. Technical specifications alone don't create interoperability - you need organisations that can facilitate agreement and manage evolution over time.

4. **Start with standards, not systems.** Estonia and Denmark built data exchange layers first, then let diverse systems connect to them. This is the opposite of typical procurement: buying a big system and hoping it integrates. Standards-first architecture allows competition at the system level while ensuring interoperability at the infrastructure level.

5. **Public ownership enables public benefit.** Because Estonia's X-Road and Denmark's MedCom standards are publicly controlled, the knowledge they embody - the data formats, integration patterns, lessons learned - remains a public asset. When Australia builds on FHIR, they benefit from this accumulated public knowledge rather than paying licencing fees to access proprietary formats.

6. **The costs of getting it wrong compound over time.** All three countries acknowledge that legacy proprietary systems are expensive to integrate. Australia is being particularly explicit about this challenge. The lesson for the NHS: every proprietary system adopted now is a future integration problem. The Wales FHIR adoption I mentioned in the previous post is expensive precisely because proprietary silos accumulated over decades. We're paying the cost of not starting with open standards from the beginning.

7. **Collaborative governance creates better standards and stronger buy-in.** Denmark and Australia demonstrate that consensus-based development produces standards that actually get adopted because the people implementing them were involved in creating them. The 99% adoption rates aren't achieved through mandates - they're achieved through genuine ownership. When NHS trusts, GPs, hospitals, and IT vendors collaborate to develop standards rather than having them imposed from above, you get both better technical solutions and the social infrastructure to sustain them.

## What Wales Could Learn

The question isn't whether open standards work at scale - Estonia, Denmark, and Australia prove they do. The question is how to implement them in a way that realizes their full potential. Wales offers an instructive case study.

The Welsh Technical Standards Board has established important principles: new services must provide HL7 FHIR APIs, SNOMED CT should be the clinical terminology standard, and systems should use open, non-proprietary technical standards.[^wtsb] This is exactly right - it's the foundation Denmark and Australia built on.

[^wtsb]: Welsh Technical Standards Board decisions documented across multiple meetings 2018-2019. The Board mandates that new services provide HL7 FHIR application programming interfaces and that SNOMED CT should be "the lingua franca, codifying clinical and administrative concepts to support direct care and analytics."

But Dr. Mark Wardle, consultant neurologist and former Chief Clinical Information Officer at Cardiff and Vale University Health Board, has articulated why standards alone aren't sufficient. As chair of the Welsh Technical Standards Board, he emphasizes that "interoperability isn't something to think about later, it should be _how_ we build our systems today."[^wardle-interop] The architecture matters as much as the standards.

[^wardle-interop]: Mark Wardle, "An open digital health platform: standards and interoperability" (March 2018), available at [wardle.org](https://wardle.org/digital-platform/2018/03/03/platform-wales-1.html). Wardle emphasizes three dimensions of interoperability: technical (systems exchanging data), semantic (ensuring precise meaning), and legal (policies for information sharing).

Wardle advocates for treating internal and external developers equally, enabling multiple cross-functional teams to deliver modular services, and creating "domain-driven, loosely-coupled services" with well-defined contracts between them.[^wardle-platform] This mirrors what Denmark's MedCom and Australia's Sparked demonstrate: collaborative development with multiple stakeholders produces better outcomes than centralized, top-down procurement.

[^wardle-platform]: Mark Wardle, "Building an open health and care platform for Wales" (October 2018), available at [wardle.org](https://wardle.org/strategy/2018/10/02/open-platform-wales.html). Wardle argues for microservice-based architecture with domain-driven, loosely-coupled services, and frames the choice starkly: either Wales builds a proper open platform, or it should accept the alternative of purchasing a comprehensive EHR from a major vendor.

### The Cathedral and the Bazaar

To understand what this means in practice, it's worth returning to Eric Raymond's influential 1997 essay "The Cathedral and the Bazaar."[^cathedral] Raymond contrasted two models of software development: the Cathedral (centralized, top-down, closed-door development by experts) and the Bazaar (distributed, collaborative, open development by communities). His key insight: "given enough eyeballs, all bugs are shallow."

[^cathedral]: Eric S. Raymond, "The Cathedral and the Bazaar" (1997). The essay became foundational to understanding open source development models and remains highly relevant to how governments approach digital infrastructure.

The pattern across Estonia, Denmark, and Australia is clear: successful national health infrastructure tends toward the Bazaar model. Denmark's MedCom brings together GPs, hospitals, municipalities, and vendors in consensus-based development. Australia's Sparked explicitly puts "everyone in the same room." Even Estonia, which started with centralized Cathedral-style development out of necessity, evolved toward international collaborative development through NIIS once the infrastructure was open source.

**Wales needs to adopt the Bazaar model - but it needs to do so deliberately and correctly.** The international evidence demonstrates that collaborative governance works at national scale. Denmark's thirty-year track record and Australia's rapid progress show that modern digital infrastructure benefits from distributed development with strong community participation.

What does this mean concretely for Wales?

1. **Create genuine collaborative governance.** Following Denmark's MedCom model, establish a body that brings together NHS Wales trusts, GPs, hospitals, social care providers, and critically - IT vendors - as equals in standards development. Not consultation where stakeholders provide input that central authorities might ignore, but genuine collaborative development where the community determines priorities and identifies implementation challenges.

2. **Embrace open source, but avoid fragmentation.** Simply putting code on siloed source forges won't create a Bazaar - it risks creating isolated Cathedrals that happen to be open source. The lesson from Linux's success wasn't just open source licensing, but the governance model that enabled distributed contribution while maintaining coherence. Wales needs shared infrastructure - common repositories, shared testing and certification processes, collaborative issue tracking - that makes it easy for multiple teams to contribute to the same codebase rather than forking into incompatible variants.

3. **Enable distributed contribution while maintaining architectural coherence.** Estonia's X-Road demonstrates this balance: NIIS provides centralized coordination and core platform development, but each ecosystem maintains local control and multiple countries contribute improvements. Wales needs similar structures - core platform components maintained collaboratively, with clear interfaces that allow health boards and external developers to build modular services that integrate seamlessly.

4. **Build community, not just code.** Australia's Sparked explicitly focuses on creating a "thriving FHIR community" rather than just technical standards. The governance serves the community by facilitating collective work. Wales needs similar community-building: regular convenings of stakeholders, transparent decision-making processes, shared ownership of roadmaps, and mechanisms that ensure practitioners' needs drive development rather than vendor interests or bureaucratic mandates.

The technical foundation is in place. The Technical Standards Board's mandate for FHIR and SNOMED CT provides the interoperability layer. What remains is implementing the Bazaar-style governance that lets those standards realize their full potential - moving beyond procurement of monolithic systems toward platform thinking where core infrastructure enables distributed innovation.

Estonia has twenty years of experience with open-source health infrastructure. Denmark has thirty years of interoperability standards development. Australia is building a FHIR accelerator learning from both. Wardle has articulated how Wales could apply these lessons. The technical models exist, the governance models exist, the proof of concept exists.

The choice, as Wardle frames it, is stark: build a proper open platform using these proven approaches, or accept vendor lock-in through comprehensive proprietary systems. The evidence from three countries and the vision from Wales' own technical leadership point in the same direction - toward open standards implemented through Bazaar-style collaborative governance that gives practitioners, administrators, and vendors genuine ownership over the infrastructure they depend on. Another world isn't just possible - three countries are already living in it. Wales could too.

## References and Further Reading

### International Examples
- [Estonia e-Health system](https://e-estonia.com/solutions/e-health-2/e-health-records/)
- [X-Road open source repository](https://github.com/nordic-institute/X-Road)
- [MedCom (Denmark)](https://medcom.dk/medcom-in-english/)
- [MedCom FHIR standards on GitHub](https://github.com/medcomdk)
- [Australia Digital Health Developer Portal](https://developer.digitalhealth.gov.au/)
- [Sparked AU FHIR Accelerator](https://sparked.csiro.au/)
- [Australia National Healthcare Interoperability Plan 2023-2028](https://www.digitalhealth.gov.au/sites/default/files/documents/national-healthcare-interoperability-plan-2023-2028.pdf)

### NHS Wales and Mark Wardle's Work
- [Mark Wardle's blog on health informatics](https://wardle.org/)
- [Building an open health and care platform for Wales](https://wardle.org/strategy/2018/10/02/open-platform-wales.html)
- [An open digital health platform: standards and interoperability](https://wardle.org/digital-platform/2018/03/03/platform-wales-1.html)
- [Digital Health and Care Wales](https://dhcw.nhs.wales/)
