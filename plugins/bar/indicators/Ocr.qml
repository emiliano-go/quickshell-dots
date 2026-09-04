import QtQuick
import Quickshell.Io
import qs.Ui

BarIndicator {
  id: root

  active: false
  activeText: "󰴑"
  inactiveText: "󰴑"
  activeTooltipText: "OCR"
  inactiveTooltipText: "OCR Screen Text"

  onPressed: function() {
    if (root.bar)
      root.bar.run("omarchy-capture-text")
  }
}
