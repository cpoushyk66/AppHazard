import React, {useState} from "react";
import {StyleSheet, View, Text, TextInput} from "react-native"
function LoginController({currentUser}) {

    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")

    return (
        <View style={styles.form}>
            <Text style={styles.label}>Enter Username:</Text>
            <TextInput 
                style={styles.input}
                onChangeText={setUsername}
                placeholder={"username..."}
                value={username}
            />
            <Text style={styles.label} >Enter Password: </Text>
            <TextInput
                style={styles.input}
                onChangeText={setPassword}
                placeholder={"password..."}
                value={password}
            />

        </View>
    )
}

const styles = StyleSheet.create({

    form: {
        backgroundColor: "#FF9E89",
        flex: 1,
        flexDirection: "row",

    },
    input: {
        backgroundColor: "white",
        borderColor: "black",
        flex: 1,
        textAlign: "center",
        padding: 5
        
    },
    label: {
        flex: 1,
        textAlign: "center",
        padding: 5,
        borderRightColor: "black",
        borderRightWidth: 2,
        borderLeftColor: "black",
        borderLeftWidth: 2
    }

})

export default LoginController