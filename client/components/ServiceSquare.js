import React, {useState} from "react";
import { StyleSheet, Text, Image, TouchableHighlight, View } from "react-native";

function ServiceSquare({service}) {
    
    return (
        <View style={styles.container}>
            <TouchableHighlight>
                <View style={styles.button}>
                    <Image 
                        style={styles.image}
                        source={{uri: 'https://i.etsystatic.com/8930320/r/il/181697/624462904/il_fullxfull.624462904_4rs3.jpg'}}
                        />
                    <Text>{service.service_type}</Text>
                </View>
            </TouchableHighlight>
        </View>
    )
}

const styles = StyleSheet.create({
    container: {
      flex: 1,
      justifyContent: "center",
      paddingHorizontal: 10
    },
    button: {
      alignItems: "center",
      backgroundColor: "#DDDDDD",
      padding: 10
    },
    image: {
        width: 100,
        height: 100
    }
  });

export default ServiceSquare