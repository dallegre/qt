
import QtQuick 2.3

//this uses the file Button.qml which I copied from Qt/Examples/Qt.../quick/tutorials/gettingstarted/ (file names not verbatim)

Rectangle {

	width: 800; height: 100

	Row {		
		anchors.centerIn: parent
		spacing: parent.width / 6
	
		Button {
			id: loadButton
			buttonColor: "lightgrey"
			textColor: "black"
			label: "Cut"
		}
		Button {
			buttonColor: "grey"
			id: saveButton
			textColor: "black"
			label: "Paste"
		}
		Button {
			id: exitButton
			label: "Select All"
			textColor: "black"
			buttonColor: "darkgrey"
			
			onButtonClick: Qt.quit()
		}

	}

}
