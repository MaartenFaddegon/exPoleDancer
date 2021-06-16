# ExPoleDancer

This repository is a collection of implementations of the pole dancer example
from the [Learn You A Haskell](http://learnyouahaskell.com/) book.  Each
example implements a different pattern of dealing with values in an context.
Comparing the example implementations allows us to see which patterns are most
suited for focussing on the values (letting the pattern/library handling the
context for us).

## List of Patterns Implemented

`lib/with_syntax` is the baseline implementation using the out-of-the-box Elixir
[with syntax]
(https://elixir-lang.org/getting-started/mix-otp/docs-tests-and-with.html#with)

`lib/algaes_maybe_monad.ex` implements the pole dancer example with a Maybe monad from
[witchcraft]
(https://hexdocs.pm/witchcraft/readme.html) +
[algea]
(https://hexdocs.pm/algea/readme.html)
libraries.

`lib/exceptionals_error_monad.ex` implements the pole dancer example with the Error monad inspired
[exceptional]
(https://hexdocs.pm/exceptional/readme.html)
library.

## Example Description

The following text describes the example that is implemented by the modules in
`lib/`.

> Pierre has decided to take a break from his job at the fish farm and try
> tightrope walking. He's not that bad at it, but he does have one problem:
> birds keep landing on his balancing pole! They come and they take a short
> rest, chat with their avian friends and then take off in search of
> breadcrumbs. This wouldn't bother him so much if the number of birds on the
> left side of the pole was always equal to the number of birds on the right
> side. But sometimes, all the birds decide that they like one side better and
> so they throw him off balance, which results in an embarrassing tumble for
> Pierre (he's using a safety net).
> 
> Let's say that he keeps his balance if the number of birds on the left side
> of the pole and on the right side of the pole is within three. So if there's
> one bird on the right side and four birds on the left side, he's okay. But if
> a fifth bird lands on the left side, then he loses his balance and takes a
> dive.
> 
> We're going to simulate birds landing on and flying away from the pole and
> see if Pierre is still at it after a certain number of birdy arrivals and
> departures. For instance, we want to see what happens to Pierre if first one
> bird arrives on the left side, then four birds occupy the right side and then
> the bird that was on the left side decides to fly away.
> 
> We can represent the pole with a simple pair of integers. The first component
> will signify the number of birds on the left side and the second component
> the number of birds on the right side.
