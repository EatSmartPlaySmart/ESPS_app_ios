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
                                    "play ‘9 holes’."])
]
