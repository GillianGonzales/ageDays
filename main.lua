-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On March 26 2018
--
-- This program will tell if they can get a student discount
-----------------------------------------------------------------------------------------

-- Making Varibles
local day
local age
local Tuesday
local Thursday

 -- Changing Background
 display.setDefault("background", 1, 1, 1 )

-- Adding Text 
local instructionOne = display.newText("Type in your Age", display.contentCenterX , display.contentCenterY - 600, native.systemFont, 100 )
instructionOne:setFillColor ( 0 , 0 , 0 ) 

local instructionTwo = display.newText("Type In a day", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 100)
instructionTwo:setFillColor ( 0, 0, 0 )

local discountText = display.newText("You do", display.contentCenterX, display.contentCenterY + 400, native.systemFont, 100)
discountText:setFillColor ( 0, 0, 0)

-- Adding TextField
local ageField = native.newTextField (display.contentCenterX, display.contentCenterY - 400, 800, 150)

local dayField = native.newTextField(display.contentCenterX, display.contentCenterY, 800, 150)

-- Adding Button
local button = display.newImageRect("./assets/sprites/Button.png", 406, 157)
button.x = display.contentCenterX
button.y = display.contentCenterY + 200

-- Adding Function
local function tellDiscount( event )
	-- This function will tell if the user gets a discount

	age = tonumber(ageField.text)
	day = dayField.text
	Tuesday = "Tuesday"
	Thursday = "Thursday"

	if (day == Thursday or  day == Tuesday) and (age > 12 and age < 21) then
		discountText.text = "You do get a discount"
	else 
		discountText.text = "You do not get a discount"
	end

end

button:addEventListener("touch",tellDiscount)
