import React, { Component } from 'react';
import { AppRegistry, Text, View, StyleSheet, Image, TextInput, ImageBackground, TouchableHighlight, Alert, Dimensions, ScrollView } from 'react-native';
import Constants from 'expo-constants';

let deviceHeight = Dimensions.get('window').height;
let deviceWidth = Dimensions.get('window').width;

export default class App extends Component {
    
    state = {
        home: 'block',
        calendar: 'none',
        stats: 'none',
        schedule: 'none',
        freeTimer: 'none',
        timer: 'none',
        defaultTimer: null,
        counter: 0
    };
    
    homePress = () => {
        this.setState({
            home: 'block',
            calendar: 'none',
            stats: 'none',
            schedule: 'none',
            freeTimer: 'none',
            timer: 'none'
        })
    }
    
    calendarPress = () => {
        this.setState({
            home: 'none',
            calendar: 'block',
            stats: 'none',
            schedule: 'none',
            freeTimer: 'none',
            timer: 'none'
        })
    }
    
    statsPress = () => {
        this.setState({
            home: 'none',
            calendar: 'none',
            stats: 'block',
            schedule: 'none',
            freeTimer: 'none',
            timer: 'none'
        })
    }
    
    schedulePress = () => {
        this.setState({
            home: 'none',
            calendar: 'none',
            stats: 'none',
            schedule: 'block',
            freeTimer: 'none',
            timer: 'none'
        })
    }
    
    freePress = () => {
        this.setState({
            home: 'none',
            calendar: 'none',
            stats: 'none',
            schedule: 'none',
            freeTimer: 'block',
            timer: 'none'
        })
    }
    
    startPress = () => {
        this.setState({
            home: 'none',
            calendar: 'none',
            stats: 'none',
            schedule: 'none',
            freeTimer: 'none',
            timer: 'block'
        })
    }
    
    render() {
        return (
            <View style={styles.container}>
                <View style={{display: this.state.home}}>
                    <View style={styles.display}>
                    
                        <View style={styles.textContainer}>
                            <Text style={styles.title}>
                                Welcome!
                            </Text>
                            <Text style={styles.paragraph}>
                                Select a way to study
                            </Text>
                        </View>
                        
                        <TouchableHighlight style={styles.selectButton}
                            onPress={this.schedulePress}
                        >
                            <Text style={styles.paragraph}>
                                Schedule for me
                            </Text>
                        
                        </TouchableHighlight>
                        
                        <TouchableHighlight style={styles.selectButton}
                            onPress={this.freePress}
                        >
                            <Text style={styles.paragraph}>
                                Free timer
                            </Text>
                        
                        </TouchableHighlight>
                    </View>
                </View>
                
                <View style={{display: this.state.schedule}}>
                    <View style={styles.display}>
                        <View style={styles.textContainer}>
                            <Text style={styles.paragraph}>
                                Here's your current study plan
                            </Text>
                        </View>
                        
                        <TouchableHighlight style={styles.selectButton}
                            onPress={() => {
                                alert('timer started')
                            }}
                        >
                            <Text style={styles.paragraph}>
                                Start
                            </Text>
                        </TouchableHighlight>
                    </View>
                </View>
                
                <View style={{display: this.state.freeTimer}}>
                    <View style={styles.display}>
                        <View style={styles.textContainer}>
                            <Text style={styles.paragraph}>
                                Click start when you're ready
                            </Text>
                        </View>
                        <TouchableHighlight style={styles.selectButton}
                            onPress={this.startPress}
                        >
                            <Text style={styles.paragraph}>
                                Start
                            </Text>
                        </TouchableHighlight>
                    </View>
                </View>
                
                <View style={{display: this.state.timer}}>
                    <View style={styles.display}>
                    
                        <TouchableHighlight style={styles.selectButton}
                            onPress={() => {
                                alert('timer paused')
                            }}
                        >
                            <Text style={styles.paragraph}>
                                Pause
                            </Text>
                        </TouchableHighlight>
                        
                        <TouchableHighlight style={styles.selectButton}
                            onPress={() => {
                                alert('timer stopped')
                            }}
                        >
                            <Text style={styles.paragraph}>
                                Stop
                            </Text>
                        </TouchableHighlight>
                    </View>
                </View>
                
                <View style={{display: this.state.calendar}}>
                    <View style={styles.display}>
                    
                    </View>
                </View>
                
                <View style={{display: this.state.stats}}>
                    <View style={styles.display}>
                    
                    </View>
                </View>
                
                <View style={styles.navBar}>
                    <View style={styles.buttonContainer}>
                        <TouchableHighlight style={styles.navButton}
                            onPress={this.homePress}
                        >
                            <Image
                                source={{ uri: 'https://codehs.com/uploads/4ee8e05d6fe553e4031224ed4ab8f866' }}
                                style={{ height: 38, width: 45 }}
                            />
                            
                        </TouchableHighlight>
                        
                        <TouchableHighlight style={styles.navButton}
                            onPress={this.calendarPress}
                        >
                            <Image
                                source={{ uri: 'https://codehs.com/uploads/d7d7e131ed1f6ccf869bf9ee5c0acf5d' }}
                                style={{ height: 41, width: 47 }}
                            />
                            
                        </TouchableHighlight>
                        
                        <TouchableHighlight style={styles.navButton}
                            onPress={this.statsPress}
                        >
                            <Image
                                source={{ uri: 'https://codehs.com/uploads/db07b79e6f6270b3de25a60e307514e1' }}
                                style={{ height: 40, width: 45 }}
                            />
                            
                        </TouchableHighlight>
                    </View>
                </View>
            </View>
        )
    }
}

const styles = StyleSheet.create({
    container: {
        height: deviceHeight,
        width: deviceWidth,
    },
    
    display: {
        height: 5.3*(deviceHeight/6),
        width: deviceWidth,
        alignItems: 'center'
    },
    
    navBar: {
        height: deviceHeight/7.5,
        width: deviceWidth,
        borderWidth: 1,
        borderColor: 'black'
    },
    
    buttonContainer: {
        height: deviceHeight/6,
        width: deviceWidth,
        flexDirection: 'row',
        justifyContent: 'space-around'
    },
    
    navButton: {
        height: deviceHeight/10.5,
        width: deviceWidth/5,
        borderWidth: 1,
        marginTop: 8,
        borderRadius: 15,
        justifyContent: 'center',
        alignItems: 'center'
    },
    
    textContainer: {
        textAlign: 'center',
        marginTop: 30
    },
    
    title: {
        fontSize: 45,
        fontWeight: 'bold',
        fontFamily: 'gotham',
        marginBottom: 30
    },
    
    paragraph: {
        fontSize: 25,
        fontFamily: 'gotham'
    },
    
    selectButton: {
        height: deviceHeight/8,
        width: deviceWidth/1.7,
        borderWidth: 1,
        borderRadius: 25,
        marginTop: 40,
        textAlign: 'center',
        justifyContent: 'center'
    }
});
