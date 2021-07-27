---
layout: post
title: Announcing Arborista
---
To spill the beans, I've been working on [Arborista][1]. Try it out!

## Company

I hypothesis that one of the major problems with software engineering is that companies use a
variety of tools made by many different third-parties (with glue sometimes added). The solution is
for a third-party company to make a complete suite of well integrated software development tools.

What are the problems with using many different third-party tools? I think the biggest problem
(though not the only one) is that the tools suffer from a lack of information sharing. For example,
why is that we run tests locally before creating a PR, but then the CI systems typically run them
again? Or that our tooling doesn't understand that a particular PR is meant to fix a particular bug
and so it runs the tests in the regular order instead of testing the fixed code first? Or that when
an engineer is using a language for the first time, fuzzing of that code is not prioritized.

Simply put, at the boundaries between third-party tools exist inefficencies.

Another problem is that a lack of financial incentive for some tools. It means that either they
don't exist or are not nearly as good as they could be.

So, what is the solution to the tooling problem? I think the solution is for a company to make a
well integrated suite of software development tools: every existing tool and unheard of tools too.
The suite would have integrations galore. And because the value of tools in the suite is bolstered
other tools, then there will be an incentive to invest in underserved or non-existant tools. 

This is a big undertaking. So to start, I've selected one category I think is particularly
underserved at the moment.

## Arborista

Arborista is a tree transformation tool. Specifically, the initial use case is transforming concrete
syntax trees (CSTs). Even more specifically: suggesting refactors for code. Install Arborista on a
repository and have it constantly clean up and improve your code.

The technology has much larger applicability though:
- It could update code to be compatible with a newer version of a dependency.
- Libraries could ship with transformations enabling idiomatic usage.
- Developers could define their own transformations.

This is just the tip of the iceberg. Arborista is in its infancy, it is buggy, it doesn't do much
yet, but there is more in store.

You can put Arborista to work cleaning up your Python 3 code today by [registering an account][2]
and [installing the GitHub App][3].

[1]: https://arborista.dev/
[2]: https://arborista.dev/register
[3]: https://github.com/apps/arborista-dev
