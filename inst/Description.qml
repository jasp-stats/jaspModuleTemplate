import QtQuick		2.12
import JASP.Module	1.0

Description
{
	name		: "jaspModule"
	title		: qsTr("Jasp Module")
	description	: qsTr("Examples for module builders")
	version		: "0.1"
	author		: "JASP Team"
	maintainer	: "JASP Team <info@jasp-stats.org>"
	website		: "https://jasp-stats.org"
	license		: "GPL (>= 2)"
	requiresData: false


	GroupTitle
	{
		title:	qsTr("Basic functions")
	}

	Analysis
	{
	  menu: "Add one"       // Title for ribbon
		title: "Add one"      // Title for window
		func: "AddOne"        // Function to be called
		qml: "integer.qml"    // Design input window
	}

	GroupTitle
	{
		title:	qsTr("Plotting")
	}

	Analysis
	{
	  title: "Plot a parabola"
	  func: "Parabola"
	  qml: "parabola.qml"
	}
}
