
local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stebulous/solaris-ui-lib/main/source.lua"))()

local httpService = game:GetService("HttpService")

--[[SolarisLib:New({
  Name - Title of the UI <string>
  FolderToSave - Name of the folder where the UI files will be stored <string>
})]]
local win = SolarisLib:New({
  Name = "H Clan STAFF GUI",
  FolderToSave = "Hclan Staff GUI"
})

--win:Tab(title <string>)
local tab = win:Tab("Banning")

--tab:Section(title <string>)
local sec = tab:Section("Elements")

--sec:Button(title <string>, callback <function>)
--[[sec:Button("Update punishment API", function()

  SolarisLib:Notification("Registered", "This message SENT if your executor supports the function.")

  syn.request({
    Url = "https://discord.com/api/webhooks/999044186215034881/6JmouTu6JDgGyCoXIra2yP-Cjq4V_ydkgA5n1-6EzDCMMMjn5MZg94LL_ibSIK-kWe1l",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game.HttpService:JSONEncode({
        content = "Punishment API updated, -HClan Staff GUI"
   })
})

end)]]

--sec:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
local toggle = sec:Toggle("Staff Mode?", false,"Toggle", function(t)
print("executed like shit ban us!")
end)

--[[
toggle:Set(state <boolean>)
]]



--[[
slider:Set(state <number>)
]]



--[[
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
Dropdown:Set(option <string>)
]]



--[[
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
Dropdown:Set(option <table>)
]]


sec:Textbox("Run Command", true, function(v)


  SolarisLib:Notification("Registered", "The command been ran if it didn't show up run it manually.")

  
      syn.request({
          Url = "https://discord.com/api/webhooks/999044186215034881/6JmouTu6JDgGyCoXIra2yP-Cjq4V_ydkgA5n1-6EzDCMMMjn5MZg94LL_ibSIK-kWe1l",
          Method = "POST",
          Headers = {
              ["Content-Type"] = "application/json"
          },
          Body = httpService:JSONEncode({content = v})
      })


    --[[  syn.request({
        Url = "https://discord.com/api/webhooks/999044186215034881/6JmouTu6JDgGyCoXIra2yP-Cjq4V_ydkgA5n1-6EzDCMMMjn5MZg94LL_ibSIK-kWe1l",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game.HttpService:JSONEncode({
            content = "<@987747907404963880>"
       })
    })



    end)]]






   --[[ sec:Textbox("ASAP Command Run", true, function(v)


      SolarisLib:Notification("Registered", "The command been ran if it didn't show up run it manually.")
    
      
          syn.request({
              Url = "https://discord.com/api/webhooks/999044186215034881/6JmouTu6JDgGyCoXIra2yP-Cjq4V_ydkgA5n1-6EzDCMMMjn5MZg94LL_ibSIK-kWe1l",
              Method = "POST",
              Headers = {
                  ["Content-Type"] = "application/json"
              },
              Body = httpService:JSONEncode({content = v})
          })
          
          wait(0.1)

          syn.request({
            Url = "https://discord.com/api/webhooks/999044186215034881/6JmouTu6JDgGyCoXIra2yP-Cjq4V_ydkgA5n1-6EzDCMMMjn5MZg94LL_ibSIK-kWe1l",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game.HttpService:JSONEncode({
                content = "Punishment API updated, -HClan Staff GUI"
           })
        })


    
        end)]]
    


     --[[   sec:Textbox("Ban form Bedwars", true, function(v)


          SolarisLib:Notification("Registered", "The command been ran if it didn't show up run it manually.")
        
          
              syn.request({
                  Url = "https://discord.com/api/webhooks/999044186215034881/6JmouTu6JDgGyCoXIra2yP-Cjq4V_ydkgA5n1-6EzDCMMMjn5MZg94LL_ibSIK-kWe1l",
                  Method = "POST",
                  Headers = {
                      ["Content-Type"] = "application/json"
                  },
                  Body = httpService:JSONEncode({content = v})
              })
              
              wait(0.00000000000000000000000000000000000001)
    
              syn.request({
                Url = "https://discord.com/api/webhooks/999044186215034881/6JmouTu6JDgGyCoXIra2yP-Cjq4V_ydkgA5n1-6EzDCMMMjn5MZg94LL_ibSIK-kWe1l",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game.HttpService:JSONEncode({
                    content = "<@987747907404963880>"
               })
            })
    
    
        
            end)]]
        




--sec:Bind(title <string>, default <keycode>, hold <boolean>, flag <string>, callback <function>)


--[[
bind:Set(state <keycode>)
]]

--sec:Label(text <string>)
local label = sec:Label("Crafted in Airbus's Basement"):Textbox("Run Commands", true, sec)

--[[
label:Set(text <string>)
]]
end)
