import QtQuick
import qs.Ui

BarWidget {
  id: root
  moduleName: "quickshell.menu"

  implicitWidth: button.implicitWidth
  implicitHeight: button.implicitHeight

  WidgetButton {
    id: button
    anchors.fill: parent
    bar: root.bar
    text: "\ue900"
    fontFamily: "quickshell"
    horizontalMargin: 5.5
    onPressed: function(button) {
      if (!root.bar) return
      if (button === Qt.RightButton) root.bar.run("xdg-terminal-exec")
      else root.bar.run("quickshell-shell shell toggle quickshell.menu '{\"menu\":\"root\"}'")
    }
  }
}
