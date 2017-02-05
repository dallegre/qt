import QtQuick 2.0

Rectangle {

	id: textArea
	
	function paste(){ textEdit.paste() }
	function copy(){ textEdit.copy() }
	function selectAll(){ textEdit.selectAll() }

	width: 400; height: 400

	property color fontColor: "black"	//changed from white to black so you can see the darn stuff
	property alias textContent: textEdit.text

	Flickable {

		id: flickArea
		width: parent.width
		height: parent.height
		anchors.fill: parent

		boundsBehavior: Flickable.StopAtBounds
		flickableDirection: Flickable.HorizontalFlick
		interactive: true

		//move content coordinates to make the text area visible
		//when scrolled with keyboard strokes
		//not sure exactly what that means

		function ensureVisible(r) {

			if(contentX >= r.x)
				contentX = r.x;		//guess this is javascript??
			else if(contentX + width <= r.x + r.width)
				contentX = r.x + r.width - width;
			if(contentY >= r.y)
				contentY = r.y;		//guess this is javascript??
			else if(contentY + height <= r.y + r.height)
				contentY = r.y + r.height - height;
		
		}	
						
		TextEdit {
		
			id: textEdit
			anchors.fill: parent
			width: parent.width
			height: parent.height
			color: fontColor
			focus: true
			wrapMode: TextEdit.Wrap
			font.pointSize: 10
			onCursorRectangleChanged: flickArea.ensureVisible(cursorRectangle)
			selectByMouse: true

		}

	}

}
