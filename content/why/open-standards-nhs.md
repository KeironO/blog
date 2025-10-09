+++
title = "Why Open Standards Matter for NHS Wales"
draft = false
description = "Open standards aren't just technical specifications - they're the difference between a healthcare system that serves patients and one that's held hostage by vendors."
+++

Every day, NHS Wales generates and depends on vast amounts of health data. Patient records. Prescriptions. Test results. Referrals. Care plans. Imaging. This data moves between GPs, hospitals, pharmacies, labs, specialists, community care - dozens of different systems that must work together to deliver care.

When these systems can't talk to each other, patients suffer. Results don't reach clinicians. Records are incomplete. Care is delayed. Treatments are duplicated. Errors occur. People die.

This isn't hypothetical. The fragmentation of NHS data systems is a well-documented crisis. Clinicians waste hours trying to access information that should be instantly available. Patients tell the same history repeatedly because records don't transfer. Critical results sit in one system while clinicians make decisions based on incomplete information in another.

The root cause is simple: **NHS Wales has allowed itself to become dependent on proprietary systems that don't interoperate, controlled by vendors who have no incentive to make them work together**.

Open standards are how we fix this. Not eventually, not theoretically - practically, urgently, now.

## What Are Open Standards?

An open standard is a technical specification that defines how systems should exchange information - published, freely available, implementable by anyone without restriction.

For healthcare, this means standards like:

- **HL7 FHIR** (Fast Healthcare Interoperability Resources) - how health systems exchange clinical data
- **SNOMED CT** - standardised clinical terminology so "myocardial infarction" means the same thing in every system
- **DICOM** - how medical images are stored and transmitted
- **IHE profiles** - how different standards work together for specific clinical workflows

These standards define the format, structure, terminology, and protocols for health information exchange. When systems implement the same open standard, they can interoperate - they can exchange information accurately, completely, automatically.

The critical word is **open**. The specification is public. Anyone can implement it. No vendor controls it. No one can be locked out. Competition happens on implementation quality, not on who controls the data format.

## The Vendor Lock-In Problem

Here's what happens without open standards.

NHS Wales procures a patient record system from Vendor A. The system works, initially. But the data format is proprietary - only Vendor A's software can read and write it properly. The APIs are proprietary - integration requires paying Vendor A for custom development. The terminology is proprietary - translating to other systems requires expensive mapping.

Now NHS Wales wants to add a new service - perhaps better prescribing support, or population health analytics, or integrated care records. This requires accessing data from Vendor A's system.

Vendor A says: "We can build that integration for you. £2 million, 18-month timeline, ongoing maintenance fees." Or: "We have a module that does that. Subscribe to our enhanced tier. Another £500k annually."

NHS Wales is trapped. They can't easily switch to a different vendor because extracting the data would be enormously expensive, time-consuming, and risky - proprietary formats make migration nearly impossible. They can't build their own integrations because Vendor A controls the interfaces. They can't choose best-of-breed solutions because everything must come from Vendor A or be integrated at great expense.

This is **vendor lock-in**. And it's pervasive across NHS Wales systems.

The consequences are severe:

**Financial**: NHS Wales pays far more than the service is worth because vendors know switching costs are prohibitive. You're not paying market rates - you're paying ransom.

**Functional**: You can't add features or fix problems without vendor cooperation. Your clinical priorities are subordinate to their development roadmap. Innovation requires their permission and their pricing.

**Clinical**: Systems don't share information effectively. Clinicians can't access data they need. Care is fragmented. Patient safety is compromised.

**Strategic**: NHS Wales can't control its own infrastructure. Vendors determine what's possible, on what timeline, at what cost. The health service is dependent on the commercial interests of private companies.

This is unacceptable. Health data belongs to patients and the NHS, not to vendors. The infrastructure that manages this data should serve clinical needs, not corporate profits.

## How Open Standards Change This

Open standards break vendor lock-in by ensuring interoperability.

When NHS Wales mandates open standards, every system must implement those standards. A GP system from Vendor A must be able to exchange data with a hospital system from Vendor B using the same open standard. Neither vendor controls the interface.

This changes the power dynamic fundamentally:

**Competition**: Vendors compete on features, usability, reliability, cost - not on lock-in. You can choose the best GP system, the best hospital system, the best analytics platform, and they work together because they all implement the same open standards.

**Switching**: Don't like your current vendor? Switch to a competitor. The data exports via open standards, imports into the new system, and integrations continue working because they're built on standards, not proprietary APIs.

**Integration**: Want to add a new service? Any vendor can build it, because the interfaces are defined by open standards, not controlled by your existing vendors. You can build it yourself if you have the capability. The market can provide solutions because the barriers to entry are low.

**Innovation**: Open standards enable a competitive ecosystem. New companies can enter the market. Niche solutions can serve specific needs. NHS Wales can experiment with new approaches without ripping out existing infrastructure.

**Control**: NHS Wales controls its own destiny. Clinical priorities determine technology choices, not vendor roadmaps. You own your data in practice, not just in theory, because it's in open formats you can always access and move.

## The Clinical Case

The technical and financial arguments are compelling. But the clinical case is even stronger.

**Integrated care requires integrated data**. A patient with diabetes sees their GP, endocrinologist, ophthalmologist, podiatrist, dietitian. They get prescriptions from a pharmacy, blood tests from a lab, potentially wound care from community nursing. Every interaction generates data that should inform every other interaction.

This is only possible if systems interoperate. The GP needs to see specialist letters. The specialist needs to see recent blood results. The pharmacist needs to see current medications from all prescribers. The care plan needs to be accessible to everyone involved.

Open standards make this possible. HL7 FHIR defines how systems exchange this information. SNOMED CT ensures clinical concepts are understood consistently. IHE profiles define how different systems coordinate for specific workflows like lab orders and results.

Without open standards, every integration is a custom project. With open standards, integration is built into the systems from the start.

**Patient safety depends on information availability**. How many adverse events occur because a clinician didn't have information that existed in a different system? A patient presents to A&E - do you have their allergy list? Their current medications? Recent test results? Previous diagnoses?

If systems don't interoperate, the answer is often no. The information exists, but it's locked in a different system that doesn't share data effectively. So clinicians make decisions with incomplete information, patients repeat their history (sometimes inaccurately), and preventable errors occur.

Open standards aren't just efficiency - they're safety. When systems interoperate by default, information is available when and where it's needed.

**Population health requires aggregate data**. Managing chronic diseases, identifying health inequalities, planning services, responding to outbreaks - all of this requires analysing data across populations.

With proprietary systems, aggregating data is enormously difficult. Each system has different formats, different terminologies, different export mechanisms. Analysis requires expensive extract-transform-load (ETL) processes to get data out of silos and into a usable format.

With open standards, data is already in a consistent format with consistent terminology. Aggregation and analysis become straightforward. Population health becomes feasible.

**Continuity of care requires portable records**. Patients move. They change GPs. They move between health boards. They receive care in different settings. Their records should move with them, completely and accurately.

Proprietary systems make this difficult. Transferring records between different systems often means losing information - data that doesn't map cleanly to the new system's structure gets dropped or distorted.

Open standards ensure portability. The patient's complete record exports in a standard format, imports into the new system, and nothing is lost. Continuity is preserved.

## The Welsh Context

NHS Wales has specific needs and opportunities that make open standards particularly important.

**Scale**: Wales is small enough that comprehensive interoperability is achievable. Unlike NHS England, which has hundreds of trusts and thousands of practices, NHS Wales has seven health boards and a manageable number of primary care practices. This makes coordination feasible without heavy-handed centralisation.

**Decentralisation with coordination**: The answer isn't centralising everything under one monolithic organisation. Centralisation just replaces vendor lock-in with bureaucratic lock-in - slow decision-making, one-size-fits-all solutions, distance from clinical reality. Instead, health boards should control their own systems while coordinating on open standards and sharing code. Each board chooses or builds solutions that work for their context, but all implement the same open standards for interoperability. When one board builds something useful, they share the source code. Other boards can adopt it, adapt it, or build something different - but it all works together because of shared standards.

**Open source, not centralised control**: This model requires health boards to release their code as open source. When Betsi Cadwaladr builds a module for prescribing, Aneurin Bevan can use it, improve it, or learn from it. When Cardiff and Vale solves a problem with lab integration, Hywel Dda benefits. Knowledge and solutions flow between boards, but control remains distributed. Each board maintains autonomy while contributing to shared infrastructure. This is how you get the benefits of coordination without the costs of centralisation.

**Welsh Language**: Health data in Wales should support both English and Welsh. Open standards like SNOMED CT support multiple languages. Proprietary systems often don't, or charge extra for language support. When boards share code that properly implements Welsh language support, everyone benefits without duplicating the work.

**Integrated care ambitions**: The Welsh Government's commitment to integrated health and social care depends absolutely on systems that share data effectively. You cannot have integrated care with siloed systems. But integration doesn't require centralisation - it requires interoperability. Open standards enable health boards to run different systems that still exchange data seamlessly.

**Public service values**: NHS Wales is a public service, funded by Welsh taxpayers, serving the people of Wales. The infrastructure should reflect public ownership and democratic accountability, not corporate control or bureaucratic monopoly. Open standards with distributed control align with public service values - health boards accountable to their communities, sharing solutions collaboratively, building commons rather than silos.

## The Counterarguments

There are predictable objections to mandating open standards. Let me address them.

**"Our existing systems already work."** Do they? Can your GP systems share care plans with community nursing? Can hospitals access patient records from different health boards? Can clinicians see test results from all labs in one place? "Working" in silos is not actually working for integrated care.

**"Open standards are immature/incomplete."** Some are, some aren't. HL7 FHIR is mature, widely implemented, and being adopted globally including by NHS England. SNOMED CT is the most comprehensive clinical terminology available. DICOM has been the standard for medical imaging for decades. Where standards are incomplete, NHS Wales should participate in developing them rather than accepting proprietary lock-in.

**"Migration is too expensive/risky."** More expensive than paying vendor ransoms indefinitely? More risky than building a healthcare system on infrastructure you don't control? Migration has costs, yes. But the cost of not migrating is ongoing dependency and ever-increasing vendor lock-in. The question isn't whether to migrate, it's whether to do it now while you still have leverage or later when you have none.

**"Vendors won't support this."** Vendors who refuse to implement open standards are vendors who depend on lock-in for their business model. That's precisely the business model NHS Wales should refuse to accept. There are vendors who build on open standards - choose them. If incumbents won't adopt open standards, that's a sign you need to switch vendors, not that you should abandon standards.

**"This will limit innovation."** The opposite. Proprietary silos limit innovation to what the vendor chooses to build. Open standards enable anyone to innovate because the interfaces are open. Look at the internet - open protocols enabled explosive innovation because anyone could build on shared standards. Proprietary platforms like AOL tried to lock users in and were surpassed by open alternatives.

**"We don't have the expertise."** Then develop it. Each health board should have in-house expertise on health data standards. This is core infrastructure - dependence on vendors for expertise is itself a form of lock-in. Invest in training. Hire specialists. Work with academic partners. Boards can share expertise and learn from each other, but each needs the capability to understand and implement standards independently. This distributed expertise is more resilient than centralised teams who become bottlenecks.

## What This Means Practically

So how do health boards actually adopt open standards while maintaining autonomy?

**Mandate standards in procurement**. Each health board should require full implementation of relevant open standards in every new system - HL7 FHIR for data exchange, SNOMED CT for terminology, etc. Not "roadmap to support" or "proprietary API plus export function", but actual standards compliance that can be tested and verified. Boards can coordinate on which standards to mandate, but each controls their own procurement.

**Test standards compliance rigorously**. Vendors will claim standards support without actually implementing it properly. Require independent testing. Use Connectathons and conformance testing to verify that systems actually interoperate. Health boards can share testing frameworks and results - if Cwm Taf Morgannwg verifies a system's FHIR compliance, other boards benefit from that work.

**Sunset proprietary integrations**. Set timelines for replacing proprietary interfaces with standards-based ones. Make it clear that proprietary lock-in is no longer acceptable and won't be renewed. Give vendors notice, but be firm. Boards can coordinate timelines, but each makes their own decisions about their systems.

**Invest in transition**. Migration to open standards requires resources - technical work, data transformation, testing, training. Budget for this properly at the health board level. Treat it as infrastructure investment, which it is, not as discretionary spending. Boards can share costs for common solutions, but each controls their own budget and priorities.

**Build in-house expertise**. Each health board should have staff who deeply understand HL7 FHIR, SNOMED CT, IHE profiles, and other relevant standards. This expertise is necessary for procurement, integration, problem-solving, and maintaining independence from vendors. Boards can share training, collaborate on complex problems, and hire jointly for specialist roles - but expertise should be distributed, not centralised in one organisation.

**Share code openly**. When a health board builds something - an integration module, a clinical tool, a reporting system - release it as open source under a permissive licence. Make it available to other boards, to the wider NHS, to anyone who can benefit. This isn't charity - it's enlightened self-interest. Other boards will reciprocate. Solutions improve through collaborative development. Costs decrease through shared work. This only works if the code is actually open source, not "available on request" or "shared under agreement" - publish it on GitHub or GitLab and make it genuinely free to use and modify.

**Coordinate on standards, not on solutions**. Health boards should agree on which open standards to implement, how to test compliance, what terminology to use. This coordination ensures interoperability. But boards shouldn't be forced to use the same systems or the same code. One board might build their own solution. Another might adopt open source software from elsewhere. A third might contract with a vendor who implements the standards. All approaches work as long as they implement the agreed standards. Diversity of solutions is strength, not weakness - it spreads risk, enables experimentation, and prevents monocultures.

**Learn from others**. NHS England is mandating HL7 FHIR. NHS Scotland is adopting open standards. Countries like Estonia, Denmark, and Australia have built national health infrastructure on open standards. The VA in the US releases their healthcare software as open source. Learn from their successes and failures. Adapt their code when it's useful. Don't reinvent wheels, but don't blindly copy either.

**Start with high-value use cases**. Don't try to replace everything at once. Start with use cases where interoperability has the highest clinical and financial value - perhaps shared care records across health boards, or lab results integration, or e-prescribing. Demonstrate success, build expertise, then expand. Let early adopters prove the approach, then other boards can follow with confidence.

## Why This Matters Now

NHS Wales faces urgent pressures - financial constraints, increasing demand, workforce shortages, growing complexity of care. Technology should help address these pressures, not create additional ones.

Yet the current fragmented, proprietary systems actively make things worse. Clinicians waste time navigating multiple systems. Information is unavailable when needed. Integration projects cost millions and take years. Vendors extract ever-increasing fees for basic functionality. Innovation is stifled by lock-in.

This is unsustainable.

Open standards are not a perfect solution - they require investment, coordination, expertise, political will. But they're the only sustainable path to interoperability, vendor independence, and control over your own infrastructure.

Every year NHS Wales delays is another year of increasing vendor lock-in, another year of paying ransom for access to your own data, another year of fragmented systems compromising patient care.

The choice is clear: accept permanent dependency on vendors who prioritise their profits over your needs, or invest in open standards that give you control over your infrastructure.

**Health data belongs to patients and the NHS, not to vendors.** Open standards are how we make that true in practice, not just in principle.

**Integrated care requires integrated data.** Open standards are how different systems exchange information reliably.

**Patient safety depends on information availability.** Open standards ensure clinicians have access to the data they need.

**Public infrastructure should be publicly controlled.** Open standards prevent private companies from controlling essential health infrastructure.

This isn't just about technology. It's about whether NHS Wales controls its own future or remains dependent on vendors who control the systems you rely on.

Open standards matter because **control matters**. Control over your data. Control over your systems. Control over your ability to innovate and improve care.

NHS Wales: demand open standards. Mandate them in procurement. Invest in transition. Build the expertise to maintain them. Stop paying ransom to vendors for access to your own data.

Your patients deserve better. Your clinicians deserve better. The people of Wales deserve health infrastructure that serves them, not vendor profits.

Open standards are how you deliver that. The time to act is now.
