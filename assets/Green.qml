import bb.cascades 1.4

Page {
    
    Container {
        layout: DockLayout {
        
        }
        background: Color.create("#32CD32")
        Label {
            horizontalAlignment: HorizontalAlignment.Center
            text: "GREEN"
            textStyle.fontSize: FontSize.PointValue
            textStyle.fontSizeValue: 30
            textStyle.fontFamily: "Impact"
            textStyle.color: Color.Black
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            Label {
                text: "#32CD32"
                textStyle.fontSize: FontSize.PointValue
                textStyle.fontSizeValue: 30
                textStyle.fontFamily: "Impact"
                textStyle.color: Color.Black
            }
        }
    }
}
