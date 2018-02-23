-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local lengthOfSquare
local areaOfSquare

local lengthOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
lengthOfSquareTextField.id = "length textField"

local areaOfSquareTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
areaOfSquareTextField.id = "area textField"
areaOfSquareTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    lengthOfSquare = lengthOfSquareTextField.text
    areaOfSquare = lengthOfSquare * lengthOfSquare
    print( areaOfSquare )
    areaOfSquareTextField.text = "The area is " .. areaOfSquare

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )