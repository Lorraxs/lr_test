local Impl = NewImpl("Test")

function Impl:OnReady()
  main:LogInfo("%s initialized", self:GetName())
  RegisterCommand("test_command", function()
    self:LogInfo("Command excuted")
  end, false)
  AddEventHandler("test_event", function()
    self:LogInfo("Event excuted")
  end)
  exports.lr_npc:CreatePed({
    coords = vector3(2962.178, 2806.52734375, 42.24169921875 - 1.0),
    heading = 319.7840576171875,
    name = "test_npc",
    title = "Test NPC",
    description = "This is a test NPC",
    actions = {
      {
        label = "Test Action",
        name = "test_action_1",
        type = "function",
        value = function()
          self:LogInfo("Test Action")
        end
      },
      {
        label = "Test Action function with args",
        name = "test_action_2",
        type = "function",
        value = function(name)
          self:LogInfo("Test Action %s", name)
        end,
        args = { "hello world" }
      },
      {
        label = "Test action command",
        name = "test_action_3",
        type = "command",
        value = "test_command"
      },
      {
        label = "Test action client-event",
        name = "test_action_4",
        type = "client-event",
        value = "test_event"
      },
      {
        label = "Test action sub menu",
        name = "test_action_5",
        type = "sub",
        value = {
          title = "Sub Menu",
          description = "This is a sub menu",
          actions = {
            {
              label = "Test action command",
              name = "test_action_3",
              type = "command",
              value = "test_command"
            },
            {
              label = "Test action client-event",
              name = "test_action_4",
              type = "client-event",
              value = "test_event"
            },
          }
        }
      }
    },
    onCancel = function()
      self:LogInfo("Test NPC canceled")
    end
  })
end
