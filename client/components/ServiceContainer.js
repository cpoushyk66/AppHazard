import React, {useEffect, useState} from "react";
import {View, StyleSheet} from 'react-native'
import ServiceSquare from "./ServiceSquare";

function ServiceContainer({services}) {

    function renderServices() {
        return services.map(service => <ServiceSquare service={service} />)
    }

    return (
        <View style={styles.container}>
            {services != null ? renderServices() : null}
        </View>
    )
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        flexDirection: "row",
        flexWrap: "wrap",
        
    }
  });

export default ServiceContainer