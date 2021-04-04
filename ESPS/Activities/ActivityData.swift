//
//  ActivityData.swift
//  ESPS
//
//  Created by Ramshad Basheer on 10/03/2021.
//

import Foundation

enum ACTIVITY_TYPE {
    case INDOOR
    case OUTDOOR
    case INDOOR_OUTDOOR
}

struct Activity: Identifiable {
    let type: ACTIVITY_TYPE
    let title: String
    let equipments: Array<String>
    let activities: Array<String>
    let id = UUID()
}


let activityData = [
    Activity(type: ACTIVITY_TYPE.INDOOR_OUTDOOR,
             title: "Circuit Training",
             equipments: ["Skippig ropes, hoops or balls, craft materials to make cue cards"],
             activities: ["Set up training station in a circuit around the room. Put cue sings with each station with picture cures and word cues. For example, in four corners of the room have:\n• skipping\n" +
                                "• hoping on the spot on one leg\n" +
                                "• jumping up to touch a balloon suspended from the ceiling\n" +
                                "• twirling a hoop around the waist\n" +
                                "• Allow children to spend at least 60 seconds per station before instructing them to\n" +
                                "move on to the next station. You could have music playing during the circuit training."]),
    Activity(type: ACTIVITY_TYPE.INDOOR_OUTDOOR,
             title: "Frisbee",
             equipments: ["Frisbee or paper plate"],
             activities: ["Get the children to play with a paper plate!",
                               "Get children to throw a frisbee outside. Groups can practise their frisbee skills. Challenge children to try to:\n" +
                                       "• count the number of times they can pass the frisbee to each other without it touching the ground\n" +
                                       "• throw the longest distance\n" +
                                       "• relay around a circle\n" +
                                       "• throw frisbees through goal posts."]),
    Activity(type: ACTIVITY_TYPE.INDOOR,
             title: "Dance Off",
             equipments: ["Space and music"],
             activities: ["Have children make up a routine or dance to music. Get them to make up a theme, for " +
                        "example, football theme songs during football finals week, top of the charts or jungle " +
                        "boogie. Hold a performance at the end of the week for those who want to participate."]),

    Activity(type: ACTIVITY_TYPE.OUTDOOR,
             title: "Frisbee Golf",
             equipments: ["Frisbee"],
             activities: ["Set up a frisbee golf course! Children can ‘hit off’ from a set point (the first tee) and " +
                        "count the number of turns taken to reach a pre-determined target (the first hole).\n" +
                        "Encourage children to make their own scorecards as a craft activity and then they can " +
                        "play ‘9 holes’."]),
    
    Activity(type: ACTIVITY_TYPE.INDOOR_OUTDOOR,
             title: "Ships Ahoy!",
             equipments: ["Not required!"],
             activities: ["Have children line up in the centre of a room (or outdoor area) and instruct them that the room (or outdoor area) is a ship. Tell them that left is the ship’s port and right is the ship’s starboard.\n\n" +
                                    "Directions given are:\n" +
                                    "• Port: group runs to the left\n" +
                                    "• Starboard: group runs to the right\n" +
                                    "• Captain coming: all stand and salute\n" +
                                    "• Scrub the deck: crouch and ‘wash the deck’\n" +
                                    "• Man overboard: all lie face down on the ground • Climb the rigging: all pretend to climb the ladder.\n\n" +
                                    "If someone makes a mistake, they collect a card containing one of the letters P, L, A, N or K. If a child collects all five they have to ‘walk the plank’ before rejoining the group (make them power walk around the ‘ship’)."]),


    Activity(type: ACTIVITY_TYPE.INDOOR_OUTDOOR,
             title: "Triangle Tag",
             equipments: ["Cones to identify playing area"],
             activities: ["Have children form groups of three and join hands. The fourth group member will be outside the circle of three. He or she will be the chaser. Designate one person in the circle as the person that the chaser will try and tag. On the leader’s signal, the chaser will try and tag the designated person. The group holding hands will work together to try and protect the taggee. Play for a designated amount of time. When the taggee is tagged, switch roles.\n"]),

    Activity(type: ACTIVITY_TYPE.INDOOR_OUTDOOR,
             title: "Loop da Hoop",
             equipments: ["One or more plastic hoops"],
             activities: ["Instruct players to hold hands in a circle " +
                        "with a hoop hanging over a pair of hands more between two people. On the leader’s signal, " +
                        "tell the group to pass the hoop around the " +
                        "circle without letting any hands go.\n\n" +
                        "Encourage players to use different strategies to help their neighbours’ position the hoop. The task is finished when the hoop returns to its first position.\n\n" +
                        "With eight or more players, add a second hoop of a different colour across from the first hoop. Once the group has completed the task, score the game by how many hoops a group can pass around in a specified time frame. Continue passing the same hoop/s around successive times until time expires.\n\n" +
                        "Make sure to give feedback to the group about how well they are cooperating or not cooperating."])
    
]
