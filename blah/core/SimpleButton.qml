import QtQuick 2.3
/*
Rectangle{
	id: simpleButton
	color: "grey"
	width: 150; height: 75

	Text{
		id: buttonLabel
		anchors.centerIn: parent
		text: "button label"	
	}

	MouseArea{
		id:buttonMouseArea
		//Anchor all sides
		anchors.fill: parent
		//prints this stuff to the console if the area is clicked upon
		onClicked: console.log(buttonLabel.text + " clicked")
	}

}
*/


/*
Rectangle {
	id: button
	width: 150; height: 75

	property color buttonColor: "lightblue"
	property color onHoverColor: "gold"
	property color borderColor: "white"

	signal buttonClick()

	Text{
		id:buttonLabel
		anchors.centerIn: parent
		text: "button label"
	}

	onButtonClick: {
		console.log(buttonLabel.text + " clicked")
	}

	MouseArea{
		id: buttonMouseArea
		anchors.fill: parent
		onClicked: buttonClick()
		hoverEnabled: true
		onEntered: parent.border.color = onHoverColor
		onExited:  parent.border.color = borderColor
	}

	//
	color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
}
*/

//since Button.qml is in the same directory it does not need an include statement.

Row{
		
	anchors.centerIn: parent
	spacing: parent.width / 6

	Button {
		id: loadButton
		buttonColor: "lightgrey"
		label: "Load"
	}
	Button {
		buttonColor: "grey"
		id: saveButton
		label: "Save"
	}
	Button {
		id: exitButton
		label: "Exit"
		buttonColor: "darkgrey"

		onButtonClick: Qt.quit()
	}
}
