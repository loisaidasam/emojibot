# emojibot
Post daily emoji horoscopes in Slack for you and your buds!

## Setup

Add your team's custom Slack webhook in [emojibot-post-to-slack.sh](https://github.com/loisaidasam/emojibot/blob/master/emojibot-post-to-slack.sh)

## Usage

Get one random emoji:

```
$ ./emojibot-get-emoji.sh
:desktop_computer: `desktop_computer`
```

Get all users random emojis:

```
$ ./emojibot-get-horoscope.sh
Emoji horoscope for Wednesday 18 July:
@bbilko: :credit_card: `credit_card`
@jeremy: :first_quarter_moon: `first_quarter_moon`
@sam2: :blue_heart: `blue_heart`
@tsidell: :palm_tree: `palm_tree`
```

## Crontab

To post daily emoji horoscopes in Slack for you and your buds, link your crontab to [emojibot-crontab.sh](https://github.com/loisaidasam/emojibot/blob/master/emojibot-crontab.sh)

Example for 9 am daily:

```
0 9 * * 1-5 /path/to/emojibot/emojibot-crontab.sh > /dev/null
```
