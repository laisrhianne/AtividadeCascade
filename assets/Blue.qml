import bb.cascades 1.4

Page {
    
    Container {
        layout: DockLayout {
            
        }
        background: Color.create("#0000FF")
        Label {
            horizontalAlignment: HorizontalAlignment.Center
            text: "BLUE"
            textStyle.fontSize: FontSize.PointValue
            textStyle.fontSizeValue: 30
            textStyle.fontFamily: "Impact"
            textStyle.color: Color.White
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            Label {
                text: "#0000FF"
                textStyle.fontSize: FontSize.PointValue
                textStyle.fontSizeValue: 30
                textStyle.fontFamily: "Impact"
                textStyle.color: Color.White
            }
        }
    }
}
