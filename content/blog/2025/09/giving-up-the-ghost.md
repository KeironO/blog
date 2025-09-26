+++
title = "Giving up the Ghost"
date = 2025-09-26
draft = false
description = "Ghost woes"
tags = ['programming', 'hugo', 'ghost', 'blogging', 'technology']
+++

A friend has been telling me to use static site generators for ages. I'd agree politely and continue updating my Ghost installation. The convenience was hard to argue with – a clean admin interface, automatic updates, built-in themes that looked good. Why complicate things?

Then Ghost 6 landed, and my comfortable world fell apart.

The upgrade should have been routine. I'd done it before: shut it down, backup the database, run the update, start, done. This time, Node.js had other plans. Dependencies wouldn't pin correctly, version conflicts cascaded through the build process, and after three hours of wrestling with npm errors that made no sense, I admitted defeat. Ghost 4 would have to do for now.

Except "for now" stretched into months. Every time I thought about writing, there was Ghost 6 sitting there, taunting me with its fancy pancy CVE mitigations and new features I couldn't access. The friend who'd been evangelising static sites started looking less wrong and more prophetic.

So I finally gave in and chose Hugo. Not because it was the most popular (that's probably still Jekyll), or the most JavaScript-y (hello, Gatsby), but because it was fast and opinionated in ways I appreciated. Go's approach to simplicity appealed to me – one binary, minimal configuration, content written in Markdown.

Setting up the basic site was straightforward. Hugo's documentation is excellent, and within an hour I had a functioning blog that could build in milliseconds rather than the minutes Ghost's admin interface required for complex posts. But I wanted something specific: a design that felt like Ghost's default theme but cleaner, more focused.

That's when I discovered [Bear](https://bearblog.dev/).

Bear isn't just another Hugo theme – it's a philosophy disguised as CSS. The concept is brilliant: strip away everything unnecessary and focus entirely on typography and readability. No JavaScript widgets, no complex layouts, no design elements that don't serve the content. Just text, presented beautifully.

But Bear's simplicity doesn't mean limitation. Because it's built on Hugo, extending it is straightforward. Want custom CSS? Drop it in a partial. Need different layouts for different content types? Hugo's template system has you covered. JavaScript for interactive elements? Add it where you need it, ignore it everywhere else.

The real magic happened in the features I added. I wanted a dropcap effect for blog posts – that classic magazine-style large first letter. In Ghost, this would have required theme modifications that might break on updates. In Hugo with Bear, it was just CSS:

```css
/* Dropcap for blog posts only */
.post-wrapper.blog-post p:first-of-type::first-letter {
  float: left;
  font-size: 4em;
  line-height: 1;
  margin-right: 8px;
  margin-bottom: 2px;
  padding: 8px 12px;
  font-family: var(--font-secondary);
  font-weight: 700;
  color: white;
  background-color: black;
  text-align: center;
}
```

Beyond the dropcaps, I added several other quality-of-life improvements. A scroll-to-top button appears when you scroll down on longer posts – a simple SVG arrow that smoothly returns you to the top. I reorganised the post metadata hierarchy, moving the publication date and reading time below the tags for better visual flow. The typography got an upgrade too: Inter for headings provides clean, modern readability, while Crimson Text for body copy adds a touch of _jenny say quah_.

I also built in proper RSS feed integration – not just the default Hugo feed, but a dedicated link in the navigation that makes it easy for readers to subscribe. Each change was surgical, targeted, and completely reversible if I change my mind later.

The scroll-to-top functionality required both CSS and JavaScript. Here's the complete implementation:

```css
.scroll-to-top {
  position: fixed;
  bottom: 30px;
  right: 30px;
  background-color: var(--heading-color);
  color: var(--background-color);
  border: none;
  border-radius: 50%;
  width: 50px;
  height: 50px;
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.3s ease, visibility 0.3s ease;
  cursor: pointer;
  z-index: 1000;
}

.scroll-to-top.visible {
  opacity: 0.7;
  visibility: visible;
}

.scroll-to-top:hover {
  opacity: 1;
}
```

And the JavaScript to make it work:

```javascript
document.addEventListener('DOMContentLoaded', function() {
  const scrollToTopBtn = document.getElementById('scrollToTop');
  
  window.addEventListener('scroll', function() {
    if (window.scrollY > 300) {
      scrollToTopBtn.classList.add('visible');
    } else {
      scrollToTopBtn.classList.remove('visible');
    }
  });
  
  scrollToTopBtn.addEventListener('click', function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });
});
```

One deliberate choice I made was to keep the blog image-light. Unless an image is absolutely necessary to understand the content, I'm focusing purely on typography and text. This keeps loading times fast, reduces maintenance overhead, and forces me to communicate ideas through writing rather than relying on visual crutches.

Deployment became a joy. GitHub Pages with GitHub Actions means every push triggers a rebuild and redeploy automatically. No server to maintain, no Docker containers to update, no Node.js dependencies to untangle. Just Markdown files becoming HTML, served from a CDN, fast and reliable.

The workflow is now exactly what I wanted: write in my text editor of choice, commit to git, push to GitHub, and five minutes later the changes are live. No admin interface, no dashboard, no complex publishing flow. Just writing, version controlled and deployed automatically.

With the technical foundation solid, I'm now working through my content archive. I've got years of writing scattered across deactivated Tumblr, Medium, and Blogger accounts that I want to rescue and migrate over. Most of it will definitely embarrass me – the voice and perspective have evolved considerably – but I'm sure there are some real gems of overwrought political takes and half-baked technical observations that I'll convince myself are worth preserving.

I'm also wrestling with a more personal decision: whether to include some of my journal entries from key moments over the past few years. Part of me thinks these would provide useful context for my political and technical evolution, showing how I felt at specific points rather than just the polished retrospective view – though let's be honest, it's probably just me wanting to publish my feelings about Brexit and various programming languages I've since forgotten. The more honest part suspects this is just narcissistic navel-gazing dressed up as authenticity. Still thinking it through, but leaning toward keeping the personal stuff personal.

Ghost served me well for years, but technology moves on. Sometimes the simple solution – static files, minimal dependencies, fast builds – turns out to be the sophisticated one. Bear's focus on content over complexity was exactly what I needed to build something that felt like mine.

The full setup is available on GitHub if you want to copy any of these customisations. Sometimes the best way forward is to strip everything back to basics and build up only what you actually need. For me, that was Hugo, Bear, and the freedom to focus on writing instead of fighting with Node.js.