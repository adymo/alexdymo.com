---
layout: default
title: Preannouncing My Ruby Performance Book
header: Blog
tags: kde
---

I'm proud to preannounce my Ruby Performance Book. I've been optimizing Ruby and Ruby on Rails applications since 2006. I wrote numerous performance patches to both Ruby, Rails and applications that use them. I accumulated a huge amount of Ruby performance optimization knowledge. Now it's time to share. That's why I've started writing the "performance" book. Read on to find out what's inside the book and [sign up for the mailinglist](http://ruby-performance-book.com/) to get the early preview of the book once it's ready.<!--more-->

**What I'm writing about:**

Ruby performance has always been the hot topic. Recent Ruby 2.1 release with significant performance improvements fueled this interest even more. There are blog posts and conference presentations on performance. But to this day there's no single source of Ruby optimization knowledge.

I want this book to become that source.


**Why I'm doing that:**

I've been managing Ruby teams since 2008. My experience is that even otherwise brilliant developers regularly produce slow code. Why? It turns out their expectations of code performance are wrong. For most people Ruby is not the first language. They do not expect that algorithmic complexity and IO performance matter much less than dataset size and memory consumption.

I want this book to explain what matters and to make it clear *what* developers should think about when writing Ruby.


**What will readers be able to do that they couldn’t do before:**

1. Write Ruby code that has adequate performance without any further optimization.
2. Know weak (performance-wise) areas in Ruby and be able to identify potentially slow parts of the code during development before the code is deployed.
3. Optimize memory consumption that is often responsible for 80% of performance degradation. Know enough Ruby internals to do that.
4. Set up performance-oriented coding practices and processes, use optimization tools


**Audience:**

Every developer has to deal with a slow code. Every developer hates slow code. That's why I expect any Rubyist can learn something from this book.

At the same time I understand that performance optimization is an advanced topic. I managed several teams, and in all cases it took developers about 2 years before they were comfortable enough with Ruby to take over optimization tasks.

That's why I think that the target audience is Ruby professionals with at least 2 years of experience.


**What is in the book:**

I organized the book into 3 parts: "Memory Optimization", "CPU Optimization", "Tools and Processes". They are ordered by importance and teach how to:

1. First think of memory consumption and write code that doesn't take gigabytes of RAM.
2. Then think of CPU optimization and algorithmic complexity of the code.
3. Use optimization tools to fix what's slow and write performance tests to prevent future performance degradation.


**Can I get the book now:**

[Sign up for the mailinglist](http://ruby-performance-book.com/) and I'll notify you once I have an early preview of this book ready.

You can also get a glimpse of what I'm talking about in my recent [RailsConf 2014 presentation](/blog/2014/04/my-railsconf2014-presentation-slides.html).

