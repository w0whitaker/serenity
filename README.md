# Serenity

## "It works every time." :neutral_face:

Lando, Bedrock, Acorn, and Sage now.

---

I'm sure I'm not alone in this, but I have spent an _awful_ lot of time over the years just trying to get various development environments up and running. That's why I am so excited about this...a simple, mostly automated way to get a WordPress development environment up and running without a lot of fuss.

Using the power of Lando, this will set you up with a Bedrock WordPress project, with Sage as a starter theme.

1. clone this repo into your project directory.
2. create .env with the appropriate variables.

- todo: .env.example

3. `lando start`

- todo: insert break to install wordpress on first run

4. `lando install-wp`

- todo: it would be nice to be able to automate this step, and there is a way I'm sure

- todo: themename var in lando.yml for yarn commands

5. make changes to bud.config.mjs if needed
6. `lando run-dev`
7. visit localhost:3000 for the dev server.

There's more to come, but that's the gist.
