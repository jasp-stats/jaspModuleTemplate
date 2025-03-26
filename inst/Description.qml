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
	icon        : "exampleIcon.png" // Located in /inst/icons/
	preloadData: true
	requiresData: true


	GroupTitle
	{
		title:	qsTr("Basic functions")
	}

	Analysis
	{
	  title: qsTr("Add one")      // Title for window
	  menu: qsTr("Add one")       // Title for ribbon
	  func: "addOne"        // Function to be called
      qml: "integer.qml"    // Design input window
	}

	Analysis
	{
	  title: "Load data"
	  menu: "Load data"
	  func: "processData"
	  qml: "data.qml"
	}

	Analysis
	{
	  title: "Tabular results"
	  menu: "Tabular results"
	  func: "processTable"
	  qml: "table.qml"
	}

	GroupTitle
	{
		title:	qsTr("Plotting")
	}

	Analysis
	{
	  title: "Plot a parabola"
	  func: "parabola"
	  qml: "parabola.qml"
	}
}
