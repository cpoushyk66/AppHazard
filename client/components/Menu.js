import React from "react";
import {View, Text} from "react-native"
import LoginController from "./LoginController";

function Menu({currentUser}) {

    return (
        <View>
            {currentUser != null ?
            <View>
            </View>
            :
            <View>
                <Text>Please Log In!</Text>
                <LoginController currentUser={currentUser}/>
            </View>}
        </View>
    )
}

export default Menu