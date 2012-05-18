---
layout: post
title: Where to do my logging?
tags:
- meditation
---

I like having access to the request object when I make logging calls so I can pass it to sentry and have a bit more info in my errors.
But the more I pull out of my views, the less code has access to the request.
Do I just raise exceptions and do all the logging and handling in the view?
(No, that's terrible)

Is there any way to provide sentry with the intelligence it craves?
