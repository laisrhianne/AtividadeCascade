import bb.cascades 1.2
NavigationPane {
    id: navpane
    Page {
        Container {
            background: Color.White
            Button {
                id:btn
                horizontalAlignment: HorizontalAlignment.Center
                text: "Clique aqui, pessoa linda"
                onClicked: {
                    _list.addList()
                }
            }
            ListView {
                dataModel: _list.model
                onTriggered: {
                    if (ListItemData.colors == "Blue")
                    navpane.push(blue);
                    else if (ListItemData.colors == "Red")
                    navpane.push(red)
                    else if (ListItemData.colors == "Yellow")
                    navpane.push(yellow)
                    else if (ListItemData.colors == "Green")
                    navpane.push(green)
                    else if (ListItemData.colors == "Black")
                    navpane.push(black)
                }
                                listItemComponents:[
                                    
                                    ListItemComponent {
                                        type: "item"
                                        Container {
                                            horizontalAlignment: HorizontalAlignment.Center
                                            verticalAlignment: VerticalAlignment.Center
                                            preferredWidth: 50
                                            background: {
                                                if (ListItemData.colors == "Blue") 
                                                    Color.create("#0000FF")
                                                
                                                else if (ListItemData.colors == "Red")
                                                    Color.create("#FF0000")
                                                
                                                else if (ListItemData.colors == "Yellow")
                                                    Color.create("#FFFF00")
                                                
                                                else if (ListItemData.colors == "Green")
                                                    Color.create("#32CD32")
                                                
                                                else if (ListItemData.colors == "Black")
                                                    Color.create("#000000")
                                            
                                            }
                                            
                                            Label {
                                                text: ListItemData.colors
                                            }
                                        }
                                    
                                    }
                                ]
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
