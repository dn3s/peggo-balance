# Peggo Balance Scraper

Get your balance for Winnipeg Transit's new fare system.

I used to be able to look in my wallet, and see how many bus tickets I had
left. Winnipeg transit has now rolled out Peggo, which is some sort of
smartcard-based system, so if I want to know if I can ride the bus, I need to
log in to a website to see my (potentially time-lagged by up to a day) balance.

I'd rather just type a quick command. Since there's no API, we'll need to
scrape. For now there's just a quick proof-of-concept shell script that just
dumps some unparsed JSON, but a simple Python script is in the works.

Take a look [here](flow.md) for how it'll work.
