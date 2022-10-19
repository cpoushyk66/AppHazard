import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, ScrollView} from 'react-native';
import React, {useState, useEffect} from 'react';
import ServiceContainer from './components/ServiceContainer';
import Navbar from './components/Navbar';

export default function App() {

  const [userApps, setUserApps] = useState(null)
  const [currentUser, setCurrentUser] = useState(null)

  useEffect(() => {
    fetch("http://localhost:3000/services")
    .then(res => res.json())
    .then(data => setUserApps(data))
  }, [])

  return (
    <ScrollView style={styles.app}>
      <Navbar />
      <View style={styles.container}>
        <Text>Open up App.js to start working on your app!</Text>
        <StatusBar style="auto" />
        <ServiceContainer services={userApps}/>
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  app: {
    backgroundColor: "#FFEFEB"
  }
});
