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
	preloadData: true
	requiresData: true


	GroupTitle
	{
		title:	qsTr("Basic functions")
	}

	Analysis
	{
	  title: "Add one"      // Title for window
	  menu: "Add one"       // Title for ribbon
		func: "AddOne"        // Function to be called
		qml: "integer.qml"    // Design input window
	}

	Analysis
	{
	  title: "Load data"
	  menu: "Load data"
	  func: "ProcessData"
	  qml: "data.qml"
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
