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
  info: qsTr("This example shows how to load a dataset and output it as a table")

  Text
  {
      text: "This example shows how to load a dataset and output it as a table"
  }

  VariablesForm
  {
    AvailableVariablesList { name: "allVariables" }

    AssignedVariablesList  {
      name: "ts"
      label: qsTr("Times (t)")
      info: qsTr("This info entry adds documentation to the (i) icon in the analysis file. E.g., Specify variable containing the time.")
      singleVariable: true
      allowedColumns: ["scale"]
    }

    AssignedVariablesList  {
      name: "xs"
      label: qsTr("Positions (x)")
      info: qsTr("This info entry adds documentation to the (i) icon in the analysis file. E.g., Specify variable containing the positions.")
      singleVariable: true
      allowedColumns: ["scale"]
    }
  }

}
