import QtQuick 2.3
import QtQml.Models 2.1

Rectangle{

	id: menuBar
	width: 1000
	height: 300
	color: "transparent"
	property color fileColor: "plum"
	property color editColor: "powderblue"
	property real partition: 1/10

	Column{

		anchors.fill: parent
		z: 1

		Rectangle{
	
			id: labelList	
			z: 1
			height: menuBar.height * partition			
			width: menuBar.width
			color: "beige"

			Text{
				height: parent.height
				anchors{
					right: labelRow.left
					verticalCenter: parent.bottom
				}
				text: "menu:	"
				color: "lightblue"
				font{
					weight: Font.Light
					italic: true
				}
			}


			//row is vertical row
			Row{
				
				id: labelRow					
				anchors.centerIn: parent
				spacing: 40

				Button{
					width: 50; height: 20	
					label: "File"
					id: fileButton
					textColor: "black"
					onButtonClick: menuListView.currentIndex = 0
				}
					
				Button{
					width: 50; height: 20	
					id: editButton
					label: "Edit"
					textColor: "black"
					onButtonClick: menuListView.currentIndex = 1
				}

			}

		}

		ListView {
			
			id: menuListView

			//chanors are set to react to window anchors
			anchors.fill: parent
			anchors.bottom: parent.bottom
			width: parent.width
			height: parent.height

			//"the model contains the data"
			model: menuListModel

			//control the movement of the menu switching
			snapMode: ListView.SnapOneItem
			orientation: ListView.Horizontal
			boundsBehavior: Flickable.StopAtBounds
			flickDeceleration: 5000
			highlightFollowsCurrentItem: true
			highlightMoveDuration: 240
			highlightRangeMode: ListView.StrictlyEnforceRange

		}

	}

	ObjectModel {
			
		id: menuListModel

		FileMenu {
			width: menuListView.width
			height: menuBar.height
			color: fileColor
		}
			
		EditMenu {
			width: menuListView.width
			height: menuBar.height
			color: editColor
		}
	}

}
/*
ObjectModel {
	
	id: menuListModel

	FileMenu {
		width: menuListView.width
		height: menuBar.height
		color: fileColor
	}

	EditMenu {
		width: menuListView.width
		height: menuBar.height
		color: editColor
	}

}

ListView {
	
	id: menuListView

	//chanors are set to react to window anchors
	anchors.fill: parent
	anchors.bottom: parent.bottom
	width: parent.width
	height: parent.height

	//"the model contains the data"
	model: menuListModel

	//control the movement of the menu switching
	snapMode: ListView.SnapOneItem
	orientation: ListView.Horizontal
	boundsBehavior: Flickable.StopAtBounds
	flickDeceleration: 5000
	highlightFollowsCurrentItem: true
	lighlightMoveDuration: 240
	lighlightRangeMode: ListView.StrictlyEnforceRange

}
*/
