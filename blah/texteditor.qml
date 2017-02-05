import QtQuick 2.0
import "core" 		//directory where all the files to import are

Rectangle {

	id: screen

	width: 1000; height: 1000

	property int partition: height / 3
	state: "DRAWER_CLOSED"

	//menu bar
	MenuBar {
		id: menuBar
		width: screen.width		//can parent go in place of screen here?
		height: screen.partition
		z: 1
	}

	TextArea {

		id: textArea
		width: screen.width
		height: screen.partition * 2
		y: drawer.height
		color: "#3F3F3F"
		fontColor: "#DCDCCC"

	}

	Rectangle {

		id: drawer
		height: 15; width: parent.width
		border.width: 1
		border.color: "#6A6D6A"
		z: 1

		gradient: Gradient {

			GradientStop { position: 0.0; color: "#8C8F8C" }
			GradientStop { position: 0.17; color: "#6A6D6A" }
			GradientStop { position: 0.77; color: "#3F3F3F" }
			GradientStop { position: 1.0; color: "#6A6D6A" }

		}

		Image {

			id: arrowIcon
			source: "images/arrow.png"
			anchors.horizontalCenter: parent.horizontalCenter

			Behavior { NumberAnimation { property: "rotation"; easing.type: Easing.OutExpo } }

		}

		MouseArea {

			id: drawerMouseArea
			anchors.fill: parent
			hoverEnabled: true
			onEntered: parent.border.color = Qt.lighter("#6A6D6A")
			onExited: parent.border.color = "#6A6D6A"
			onClicked: {

				if(screen.state == "DRAWER_OPEN")
					screen.state = "DRAWER_CLOSED"
				else if(screen.state == "DRAWER_CLOSED")
					screen.state = "DRAWER_OPEN"

			}

		}

	}

	states: [

		State {

			name: "DRAWER_OPEN"
			PropertyChanges { target: menuBar; y: 0 }
			PropertyChanges { target: textArea; y: partition+ drawer.height }
			PropertyChanges { target: drawer; y: partition }
			PropertyChanges { target: arrowIcon; rotation: 180 }

		},

		State {
			
			name: "DRAWER_CLOSED"
			PropertyChanges { target: menuBar; y: -height }
			PropertyChanges { target: textArea; y: drawer.height; height: screen.height - drawer.height }
			PropertyChanges { target: drawer; y: 0 }
			PropertyChanges { target: arrowIcon; rotation: 0 }

		}

	]

	transitions: [

		Transition {
			to: "*"
			NumberAnimation { target: textArea; properties: "y, height"; duration : 100; easing.type: Easing.OutExpo }
			NumberAnimation { target: menuBar; properties: "y"; duration : 100; easing.type: Easing.OutExpo }
			NumberAnimation { target: drawer; properties: "y"; duration : 100; easing.type: Easing.OutExpo }
		}

	]

}
