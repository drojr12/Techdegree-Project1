// Manually defining each player's dictionaries with data pertaining to them.
let player1: [ String : Any ] = ["name" : "Joe Smith", "height" : 42, "isExperienced" : true, "guardians" : "Jim and Jan Smith"]
let player2: [ String : Any ] = ["name" : "Jill Tanner", "height" : 36, "isExperienced" : true, "guardians" : "Clara Tanner"]
let player3: [ String : Any ] = ["name" : "Bill Bon", "height" : 43, "isExperienced" : true, "guardians" : "Sara and Jenny Bon"]
let player4: [ String : Any ] = ["name" : "Eva Gordon", "height" : 45, "isExperienced" : false, "guardians" : "Wendy and Mike Gordon"]
let player5: [ String : Any ] = ["name" : "Matt Gill", "height" : 40, "isExperienced" : false, "guardians" : "Charles and Sylvia Gill"]
let player6: [ String : Any ] = ["name" : "Kimmy Stein", "height" : 41, "isExperienced" : false, "guardians" : "Bill and Hillary Stein"]
let player7: [ String : Any ] = ["name" : "Sammy Adams", "height" : 45, "isExperienced" : false, "guardians" : "Jeff Adams"]
let player8: [ String : Any ] = ["name" : "Karl Saygan", "height" : 42, "isExperienced" : true, "guardians" : "Heather Bledsoe"]
let player9: [ String : Any ] = ["name" : "Suzane Greenberg", "height" : 44, "isExperienced" : true, "guardians" : "Henrietta Dumas"]
let player10: [ String : Any ] = ["name" : "Sal Dali", "height" : 41, "isExperienced" : false, "guardians" : "Gala Dali"]
let player11: [ String : Any ] = ["name" : "Joe Kavalier", "height" : 39, "isExperienced" : false, "guardians" : "Sam and Elaine Kavalier"]
let player12: [ String : Any ] = ["name" : "Ben Finkelstein", "height" : 44, "isExperienced" : false, "guardians" : "Aaron and Jill Finkelstein"]
let player13: [ String : Any ] = ["name" : "Diego Soto", "height" : 41, "isExperienced" : true, "guardians" : "Robin and Sarika Soto"]
let player14: [ String : Any ] = ["name" : "Chloe Alaska", "height" : 47, "isExperienced" : false, "guardians" : "David and Jamie Alaska"]
let player15: [ String : Any ] = ["name" : "Arnold Willis", "height" : 43, "isExperienced" : false, "guardians" : "Claire Willis"]
let player16: [ String : Any ] = ["name" : "Phillip Helm", "height" : 44, "isExperienced" : true, "guardians" : "Thomas Helm and Eva"]
let player17: [ String : Any ] = ["name" : "Les Clay", "height" : 42, "isExperienced" : true, "guardians" : "Wynonna Brown"]
let player18: [ String : Any ] = ["name" : "Herschel Krustofski", "height" : 45, "isExperienced" : true, "guardians" : "Hyman and Rachel"]

// Manually adding players to the 'players' array
var players: [[String : Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

var experiencedPlayers: [[String : Any]] = []
var inexperiencedPlayers: [[String : Any]] = []

var teamSharks: [[String : Any]] = []
var teamDragons: [[String : Any]] = []
var teamRaptors: [[String : Any]] = []
var letters: [String] = []

// Checking players array for players that are experienced and inexperienced and appending them to their corresponding arrays
for player in players {
    if player["isExperienced"] as? Bool == true {
        experiencedPlayers.append(player)
    } else if player["isExperienced"] as? Bool == false {
        inexperiencedPlayers.append(player)
    }
}

// Going through the range of experiencedPlayers array and assigning them to teams evenly: 3 experienced players on each team
// Updated logic to flow through the count of the teams instead of a switch statement
for player in experiencedPlayers {
    if teamSharks.count < teamDragons.count {
        teamSharks.append(player)
    } else if teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else {
        teamRaptors.append(player)
    }
}

// Going through the range of inexperiencedPlayers array and assigning them to teams evenly: 3 inexperienced players on each team
// Updated logic to flow through the count of the teams instead of a switch statement
for player in inexperiencedPlayers {
    if teamSharks.count < teamDragons.count {
        teamSharks.append(player)
    } else if teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else {
        teamRaptors.append(player)
    }
}

// Functions for creating each teams personalized letters
func createPersonalizedLetterForSharks() {
    for player in teamSharks {
        letters.append("Dear \(player["guardians"] as! String), \(player["name"] as! String) has been assigned to The Sharks! Your childs first practice is scheduled for March 17th @ 3PM")
    }
}

func createPersonalizedLetterForDragons() {
    for player in teamDragons {
        letters.append("Dear \(player["guardians"] as! String), \(player["name"] as! String) has been assigned to The Dragons! Your childs first practice is scheduled for March 17th @ 1PM")
    }
}

func createPersonalizedLetterForRaptors() {
    for player in teamRaptors {
        letters.append("Dear \(player["guardians"] as! String), \(player["name"] as! String) has been assigned to The Dragons! Your childs first practice is scheduled for March 18th @ 1PM")
    }
}

// Calling the functions listed above
createPersonalizedLetterForSharks()
createPersonalizedLetterForDragons()
createPersonalizedLetterForRaptors()


// Looping through the letters array and printing the content as formatted letters - not just "dumping" the contents of the letters array to the console
for index in 0...letters.count - 1 {
    print(letters[index])
}

























