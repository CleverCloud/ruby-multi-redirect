# Ruby - Clever Cloud Puma+Sinatra Redirections demo

This repository contains a Ruby web application based on Puma server and Sinatra DSL, demonstrating how to define routes and different kind of redirections. You'll need a [Clever Cloud account](https://console.clever-cloud.com/) and [Clever Tools](https://github.com/CleverCloud/clever-tools).

## Setup Clever Tools

```bash
npm i -g clever-tools
clever login
```

## Init the project

```bash
git clone https://github.com/CleverCloud/ruby-multi-redirect
cd ruby-multi-redirect
```

## Create the application and deploy on Clever Cloud

```bash
clever create -t ruby
git add . && git commit -m "Initial commit"
clever deploy
clever open
```

You can now visit `/api` to get a visible redirection and `/lost` to get an invisible redirection. You also can get answers from the `/` and `/json` routes. Any other will reply with a `404` HTTP status code.