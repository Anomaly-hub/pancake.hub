author = "GoodBoy08";
project = "pancake.hub";
branch = "sus"
env = getgenv()

env[string.lower("IsCharacter")], env[string.lower("IsCharacter")], env["IsCharacter"] = function(t)
    Exist = false
    if t == 1 then
        if game.Players.LocalPlayer.Character ~= nil then
            Exist = true;
        else
            Exist = false;
        end
    elseif t == 2 then
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
            Exist = true;
        else
            Exist = false;
        end
    end
    return Exist
end

env[string.lower("Hook")], env[string.lower("hook")], env["Hook"] = hookfunction

env[string.lower("Load")], env[string.lower("Load")], env["Load"] = function(file, extension)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/"..project.."/%s/%s."..extension):format(author, branch, file)), file .. '.'..extension or "lua")()
end

env[string.lower("IsGame")], env[string.lower("IsGame")], env["IsGame"] = function(ID)
    if game.PlaceId == ID then
        return true
    end
end
