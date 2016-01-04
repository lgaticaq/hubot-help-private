# hubot-help-private

A hubot script to show available hubot commands as private message

See [`src/help.coffee`](src/help.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-help-private --save`

Then add **hubot-help-private** to your `external-scripts.json`. Make sure to remove **hubot-help**:

```json
["hubot-help-private"]
```

## Sample Interaction

```
user1>> hubot help
hubot>> hubot help - Displays all of the help commands that Hubot knows about.
hubot>> hubot help <query> - Displays all help commands that match <query>.

```
