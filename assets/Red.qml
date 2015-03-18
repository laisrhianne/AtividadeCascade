import bb.cascades 1.4

Page {
    
    Container {
        layout: DockLayout {
        
        }
        background: Color.create("#FF0000")
        Label {
            horizontalAlignment: HorizontalAlignment.Center
            text: "RED"
            textStyle.fontSize: FontSize.PointValue
            textStyle.fontSizeValue: 30
            textStyle.fontFamily: "Impact"
            textStyle.color: Color.White
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            Label {
                text: "#FF0000"
                textStyle.fontSize: FontSize.PointValue
                textStyle.fontSizeValue: 30
                textStyle.fontFamily: "Impact"
                textStyle.color: Color.White
            }
        }
    }
}
