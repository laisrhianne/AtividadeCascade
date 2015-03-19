import bb.cascades 1.2
NavigationPane {
    id: navpane
    Page {
        Container {
            background: Color.White
            Button {
                id: btn
                horizontalAlignment: HorizontalAlignment.Center
                text: "Clique aqui, pessoa linda"
                onClicked: {
                    _list.addList()
                }
            }
            ListView {
                dataModel: _list.model
                onTriggered: {
                    var triggeredItem = dataModel.data(indexPath);

                    if (triggeredItem.colors == "Blue")
                        navpane.push(blue);
                    else if (triggeredItem.colors == "Red")
                        navpane.push(red);
                    else if (triggeredItem.colors == "Yellow")
                        navpane.push(yellow);
                    else if (triggeredItem.colors == "Green")
                        navpane.push(green);
                    else if (triggeredItem.colors == "Black")
                        navpane.push(black)
                }
                listItemComponents: [

                    ListItemComponent {
                        type: "item"
                        Container {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            preferredWidth: 768
                            preferredHeight: 100
                            background: {
                                if (ListItemData.colors == "Blue")
                                    Color.create("#0000FF");

                                else if (ListItemData.colors == "Red")
                                    Color.create("#FF0000");

                                else if (ListItemData.colors == "Yellow")
                                    Color.create("#FFFF00");

                                else if (ListItemData.colors == "Green")
                                    Color.create("#32CD32");

                                else if (ListItemData.colors == "Black")
                                    Color.create("#000000")

                            }

                            Label {
                                text: ListItemData.colors
                                horizontalAlignment: HorizontalAlignment.Center
                                verticalAlignment: VerticalAlignment.Center
                                textStyle.fontFamily: "Impact"
                                textStyle.fontSize: FontSize.PointValue
                                textStyle.fontSizeValue: 12
                                textStyle.color: Color.White
                            }
                        }

                    }
                ]
            }
             Container {
                 horizontalAlignment: HorizontalAlignment.Center
                 verticalAlignment: VerticalAlignment.Bottom
                 
                 Button {
                     text: "Reset Page"
                     onClicked: {
                         _list.clearList();
                     }
                 }
             }
            
            
            
            

        }
    }
    attachedObjects: [
        Blue {
            id: blue
        },
        Red {
            id: red
        },
        Yellow {
            id: yellow
        },
        Green {
            id: green
        },
        Black {
            id: black
        }
    ]
}
