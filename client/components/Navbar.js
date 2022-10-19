import React, {useState} from "react";
import {View, TouchableHighlight, Text, Image, StyleSheet} from "react-native"
import Menu from "./Menu";

function Navbar({currentUser}) {

    const [clicked, setClicked] = useState(false)

    return (
        <View style={styles.navbar}>
                    <Text style={styles.text} >APP: Hazard</Text>
                    <Text style={styles.text}>The Emergency App</Text>
            <View style={styles.button}>
                <TouchableHighlight onPress={() => setClicked(!clicked)}>
                        <Image 
                        style={styles.image}
                        source={{uri: "https://www.logolynx.com/images/logolynx/00/00b9c1e4e9ef5c58b11ddecb020b8776.png"}}
                        />
                </TouchableHighlight>
            </View>
            
            <View style={styles.menu}>
                {clicked ? <Menu currentUser={currentUser}/> : null}
            </View>
        </View>
    )
}

const styles = StyleSheet.create({

    navbar: {
        backgroundColor: "#FF775A",
        paddingTop: 25
    },
    text: {
        flex: 1,
        color: "black",
        textAlign: "center",
        fontSize: 50,
    },
    button: {
      backgroundColor: "#FFBEB0",
      height: 50,
      fontSize: ""
      
    },
    image: {
        width: 50,
        height: 50,
    },
    menu: {
        backgroundColor: "#FFCEC4"
    }



})

export default Navbar