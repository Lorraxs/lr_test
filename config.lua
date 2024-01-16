Config = {}

Config.UISetting = {
  locale = {}
}

--Dont touch this
Config.EnableModules = {
  ["Test"] = {
    enabled = true,
    client = true, -- enable client side
    priority = 1,  -- 1 : init on start | 2 : init on player loaded
  },

}
Config.Debug = true
Config.Nui = false
Config.Dev = false
Config.Framework = "custom" -- "qb" | "esx" | "custom"
Config.ClientLazyLoad = false
