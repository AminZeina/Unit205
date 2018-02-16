-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By: Amin Zeina 
-- Created On: Feb 2018
--
-- Using a text field to show a message in console and on screen
-----------------------------------------------------------------------------------------
display.setDefault( "background", 0.5, 0.5, 0.5 )

local messageText = display.newText( "Please enter your name:", display.contentCenterX , 300, native.systemFont, 72)

local textField = native.newTextField( display.contentCenterX, display.contentCenterY - 300, 450, 75 )
textField.id = "Answer Text Field"

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY - 100
enterButton.id = "Enter Button"

local function enterButtonClicked( event )
    -- shows text from the text field
    print( textField.text )

    return true
end

enterButton:addEventListener( "touch", enterButtonClicked)