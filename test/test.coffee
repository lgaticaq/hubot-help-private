Helper = require("hubot-test-helper")
expect = require("chai").expect

helper = new Helper("./../src/index.coffee")

msg = """
hubot help - Displays all of the help commands that Hubot knows about.
hubot help <query> - Displays all help commands that match <query>.
"""

describe "hubot-help-private", ->
  room = null

  beforeEach ->
    room = helper.createRoom({name: "user2"})
    room.robot.adapter.client =
      rtm:
        dataStore:
          getDMByName: (name) ->
            return {id: name, name: name}

  afterEach ->
    room.destroy()

  context "run help", ->
    beforeEach (done) ->
      room.user.say("user", "hubot help")
      setTimeout(done, 100)

    it "should get help as private message", ->
      expect(room.messages).to.eql([
        ["user", "hubot help"]
        ["hubot", msg]
      ])
