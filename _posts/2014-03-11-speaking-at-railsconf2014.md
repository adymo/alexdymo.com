---
layout: default
title: I'm speaking at RailsConf 2014
header: Blog
---

RailsConf is in Chicago this year and I thought I have to attend. Especially because I live across the river from Sheraton where the conference is held.

I recently did a lot of work involving optimization of Rails applications and upgrading them to Ruby 2.1 so I thought I'd share my knowledge on that with the community. And I'm proud to announce that I was accepted as a speaker. This is my session:

## Improve Performance Quick and Cheap: Optimize Memory and Upgrade to Ruby 2.1<!--more-->

You spend big money on servers or Heroku dynos? Your app exceeds hosting's memory limit? Your background processes can't keep up with the work? Your cache invalidation code is too complex? Then it's time to optimize the code.

Join this session to learn why memory optimization is the #1 thing you can do to improve performance. Understand how to optimize memory. Find out what difference Ruby 2.1 makes and what to do if you can't upgrade. Get to know optimization tools and processes.

Why memory optimization is important. Real world experience:

- from my first startup: legacy Ruby 1.8 and Rails 2.x code)
  - how bad was the unoptimized app performance, how much resources it needed
  - how we saved time and money by optimizing instead of setting up additional dedicated servers
- from my second startup: modern Rails 3.x and 4.x code running on Ruby 1.9, 2.0 and 2.1
  - how we hit Heroku memory limits and what we did about that
  - how scaling dynos on Heroku stopped to improve overall application performance
  - how optimization saved us money on Heroku

Ruby 2.1 performance:

- real world measurements (throughput, response time):
  - Rails 4 app upgraded from 2.0 to 2.1
  - Rails 3 app upgraded from 1.9 to 2.1
- upgrade path: problems, solutions
- what to do when you can't upgrade

80-20 rule of Ruby and Rails performance optimization:

- memory optimization vs cpu optimization: code examples
- 80-20 rule: optimize memory. you might not have to optimize further
- dive into the Ruby memory management architecture:
  - memory model
  - when garbage collection runs
  - how much time it takes

Memory optimization strategies:

- tuning Ruby GC
  - overview of GC environment variables in different Ruby versions
  - overview of gc.c constants, hints on custom ruby compilation and distribution
  - data on what impact the changes have: use cases from real world applications
  - summarized advice on which variables to change and in what cases
- processing less data
  - doing more work in the database: rails activemodel preloading
  - preloading without rails
  - complex calculations in the database: postgres window functions
  - processing data sequentially (reading files line-by-line, parsing data line-by-line, etc.)
- taking care of Rails memory-intensive features:
  - string callbacks in controllers involving large execution context copying
  - passing blocks to functions involving large execution context copying
  - rails serialization for large ruby objects
- other coding tips and techniques that reduce memory consumption (as time permits)

Memory measurements and profiling:

- GC.stat and ObjectSpace counters
- RSS measurements with external tools
- built-in Ruby 2.1 profiling tools
- RubyProf CPU and memory profiling
- Valgrind CPU and memory profiling
- Valgrind and RubyProf visualization tools: KCacheGrind and Massif Visualizer
