local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "鲨.脚本", HidePremium = false, SaveConfig = true,IntroText = "鲨.脚本", ConfigFolder = "鲨.脚本"})

local about = Window:MakeTab({
    Name = "鲨.制作",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
about:AddParagraph("请勿去圈钱")
about:AddParagraph("作者:鲨.")
about:AddParagraph("更新以及反馈QQ群:728293118")
about:AddParagraph("倒卖没亩 ")

Tab:AddButton({
	Name = "普通版",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/kssklol/sz/main/lollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollollolsharklollollollollollollollollollollollollollollollollollollollollollollollollollollollollollol.txt"))()
  	end    
})

Tab:AddButton({
	Name = "高级版",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/kssklol/script-hub/main/script.txt"))()
  	end    
})
