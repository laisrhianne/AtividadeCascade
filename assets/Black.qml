import bb.cascades 1.4

Page {
    
    Container {
        layout: DockLayout {
        
        }
        background: Color.create("#000000")
        Label {
            horizontalAlignment: HorizontalAlignment.Center
            text: "BLACK"
            textStyle.fontSize: FontSize.PointValue
            textStyle.fontSizeValue: 30
            textStyle.fontFamily: "Impact"
            textStyle.color: Color.White
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            Label {
                text: "#000000"
                textStyle.fontSize: FontSize.PointValue
                textStyle.fontSizeValue: 30
                textStyle.fontFamily: "Impact"
                textStyle.color: Color.White
            }
        }
    }
}
