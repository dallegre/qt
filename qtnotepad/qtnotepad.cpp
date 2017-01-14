//qt was installed with "pacman -S qt4" (arch)
//
//tutorial is at doc.qt.io/qt-4.8/gettingstartedqt.html
//
//then type the commands:
//
//qtmake-qt4 -project
//qtmake-qt4
//make
//
//to compile
//make sure that qtnoepad.cpp is in its own directory because 
//qtmake and make will put a bunch of other crap in there

#include <QApplication>
#include <QTextEdit>

int main(int argv, char **args){

	QApplication app(argv, args);

	QTextEdit textEdit;
	textEdit.show();

	return app.exec();

}
