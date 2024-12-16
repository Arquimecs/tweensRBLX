local TweeningService = {}
local TweenService = game:GetService("TweenService")

export type TweenProperties = {
	Gui: Instance,
	Time: number,
	EasingStyle: Enum.EasingStyle,
	EasingDirection: Enum.EasingDirection,
	repeatCount: number,
	reverses: boolean,
	delayTime: number,
	Goal: { [string]: any }
}

local function CreateTween(Properties: TweenProperties)
	local TweenInfo = TweenInfo.new(
		Properties.Time,
		Properties.EasingStyle,
		Properties.EasingDirection,
		Properties.repeatCount,
		Properties.reverses,
		Properties.delayTime
	)
	TweenService:Create(Properties.Gui, TweenInfo, Properties.Goal):Play()
end

export type SizeProperties = {
	Gui: Instance,
	Time: number,
	EasingStyle: Enum.EasingStyle,
	EasingDirection: Enum.EasingDirection,
	FinalSize: UDim2,
	repeatCount: number,
	reverses: boolean,
	delayTime: number
}

export type PositionProperties = {
	Gui: Instance,
	Time: number,
	EasingStyle: Enum.EasingStyle,
	EasingDirection: Enum.EasingDirection,
	FinalPosition: UDim2,
	repeatCount: number,
	reverses: boolean,
	delayTime: number
}

function TweeningService.TweenUISize(Properties: SizeProperties)
	CreateTween({
		Gui = Properties.Gui,
		Time = Properties.Time,
		EasingStyle = Properties.EasingStyle,
		EasingDirection = Properties.EasingDirection,
		repeatCount = Properties.repeatCount,
		reverses = Properties.reverses,
		delayTime = Properties.delayTime,
		Goal = { Size = Properties.FinalSize }
	})
end

function TweeningService.TweenUIPosition(Properties: PositionProperties)
	CreateTween({
		Gui = Properties.Gui,
		Time = Properties.Time,
		EasingStyle = Properties.EasingStyle,
		EasingDirection = Properties.EasingDirection,
		repeatCount = Properties.repeatCount,
		reverses = Properties.reverses,
		delayTime = Properties.delayTime,
		Goal = { Position = Properties.FinalPosition }
	})
end

return TweeningService

