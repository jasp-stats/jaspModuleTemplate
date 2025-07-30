//
// Copyright (C) 2013-2018 University of Amsterdam
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public
// License along with this program.  If not, see
// <http://www.gnu.org/licenses/>.
//
import QtQuick
import QtQuick.Layouts
import JASP.Controls
import JASP.Widgets
import JASP

Form
{

  info: qsTr("This analysis shows you different interface elements of JASP, such as tick marks, text boxes, ... \\
  Its purpose is pedagogical, and its target audience is that of JASP module developers. \\
  \\
  From the technical point of view, the most challenging part of JASP module development is the communication between the QML interface and the R backend. \\
  Playing with the current JASP analysis while simultaneously inspecting the R code in the files `./inst/qml/Interface.qml` and `./R/examples.R` is a good way to learn how this communication works. \\
  \\
  The source code is available at [github.com/jasp-stats/jaspModuleTemplate](https://github.com/jasp-stats/jaspModuleTemplate)")

  Text
  {
      text: qsTr("This analysis shows you different interface elements of JASP")
  }

	Group
	{
		title: qsTr("Logical controls")

		CheckBox
		{
			info: qsTr("This is a tick mark that can be used to control the flow of the analysis")

			name: "my_tick_mark"
			label: qsTr("Tick mark")

			// We can add some extra control parameters
			checked: false
		}
	}

	Group
	{
		title: qsTr("Keyboard inputs")

		IntegerField
		{
			info: qsTr("This is the number that will be used in the operation")

			name: "my_integer"                // This will map to options$my_integer in R
			label: qsTr("Input an integer")   // qsTr allows for future translations

			// We can add some extra control parameters
			min: 1
			defaultValue: 10
			fieldWidth: 50
			max: 1000
		}
	}

}
