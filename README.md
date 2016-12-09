# peggo-balance

Get your balance for Winnipeg Transit's new fare system.

I used to be able to look in my wallet, and see how many bus tickets I had
left. Winnipeg transit has now rolled out Peggo, which is some sort of
smartcard-based system, so if I want to know if I can ride the bus, I need to
log in to a website to see my (potentially time-lagged by up to a day) balance.

I'd rather just type a quick command `peggo-balance <username>`.

Take a look [here](api.md) for everything I've discovered about their API.

## Installation

You need Python 3.x with the Requests library. You almost certainly have Python
already, so just `pip install requests`. It's a popular enough library that
your distro probably has a package in its repositories if you prefer. For
Arch, `sudo pacman -S python-requests`; for Ubuntu, `sudo apt install
python3-requests`.

## Usage

```
peggo-balance <username>
```

It'll prompt you for your password. Type it in. Then it'll tell you your
balance. That's it.

## Issues

I still haven't tested this thoroughly at all; either Peggo needs to release
some docs), or someone needs to buy me more e-cash and a bus pass :)

The Peggo website significantly lags behind the actual balance on your card.
This is because transactions are not synced to the database in real-time; the
busses store transactions locally and only sync when they physically return to
the depot. This very lax "eventual consistency" is perfectly fine for offline
auditing/fraud detection, but totally inappropriate for backing a web service!
The busses already sync real-time GPS data, so the underlying network required
to do this right already exists; there's no excuse!

Still, better than nothing I suppose.
