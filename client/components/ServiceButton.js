import React from 'react';
import { Text, View, StyleSheet, Pressable, Image } from 'react-native';

export default function ServiceButton({onPress, pic}) {
  return (
    <Pressable style={styles.pressable} onPress={onPress}>
        <Image
        style={styles.image}
        source={{uri: "http://placekitten.com/g/100/100"}}
      />
    </Pressable>
  );
}

const styles = StyleSheet.create({
  image: {
    width: 100,
    height: 100,
  },
  pressable: {
    color: 'white',
    flex: 4
  },
});