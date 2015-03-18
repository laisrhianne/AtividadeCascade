import bb.cascades 1.4

Page {
    
    Container {
        layout: DockLayout {
        
        }
        background: Color.create("#FFFF00")
        Label {
            horizontalAlignment: HorizontalAlignment.Center
            text: "YELLOW"
            textStyle.fontSize: FontSize.PointValue
            textStyle.fontSizeValue: 30
            textStyle.fontFamily: "Impact"
            textStyle.color: Color.Black
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            Label {
                text: "#FFFF00"
                textStyle.fontSize: FontSize.PointValue
                textStyle.fontSizeValue: 30
                textStyle.fontFamily: "Impact"
                textStyle.color: Color.Black
            }
        }
    }
}
