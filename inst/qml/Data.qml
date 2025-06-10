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

  info: qsTr("This example shows how to load a dataset and perform a simple operation on it. \
      Specifically, it concatenates the values of a column. \n
      e.g.: [1, 2, 3] -> '123'") // Used for populating the info tab

  Text
  {
      text: qsTr("This example shows how to load a dataset and perform a simple operation on it.")
  }

  VariablesForm
  {
    AvailableVariablesList { name: "allVariables" }

    AssignedVariablesList  {
      name: "ts"
      label: qsTr("Times (t)")
      info: qsTr("Vector representing times")
      singleVariable: true
      allowedColumns: ["scale"]
    }
  }

}
