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
import QtQuick			2.8
import QtQuick.Layouts	1.3
import JASP.Controls	1.0
import JASP.Widgets		1.0
import JASP				1.0

Form
{

  info: qsTr("This analysis just adds one to the input. \
  It's purpose is to show an easy example of manual input.") // Used for populating the info tab

  Text
  {
      text: qsTr("This example shows how to manually introduce an input and perform a simple operation on it")
  }

	IntegerField
	{
		info: qsTr("This is the number that will be used in the operation")

		name: "my_number"              // This will map to options$my_number in R
		label: qsTr("Type a number")   // qsTr allows for future translations

		// We can add some extra control parameters
		min: 1
		defaultValue: 10
		fieldWidth: 50
		max: 1000
	}

}
