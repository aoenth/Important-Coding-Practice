// IslandProblem.playground
// Given a rectangular array of ones and zeros, find the number of connected 1's, aka "islands"
// Code written by Kevin Peng with SIGNIFICANT help from Benjamin Hsu
// August 14, 2017

import Foundation

let island = [[1, 0, 1],
              [0, 1, 0],
              [1, 0, 1]]

var map: [[Int]] = []

for i in 0..<island.count {
    map.append([Int](repeatElement(0, count: island[0].count)))
}

func findIslands(x: Int, y: Int, onIsland: Bool, _ island: [[Int]], _ map: [[Int]], count: Int) -> Int {
    var map = map
    if onIsland {
        // down, right, up, left
        map[x][y] = 1
        
        if y + 1 < map[0].count {
            if island[x][y + 1] == 1 && map[x][y + 1] == 0 {
                // move there
                return findIslands(x: x, y: y + 1, onIsland: true, island, map, count: count)
            }
        }
        if x + 1 < map.count {
            if island[x + 1][y] == 1 && map[x + 1][y] == 0 {
                // move there
                return findIslands(x: x + 1, y: y, onIsland: true, island, map, count: count)
            }
        }
        if y - 1 > -1 {
            if island[x][y - 1] == 1 && map[x][y - 1] == 0 {
                // move there
                return findIslands(x: x, y: y - 1, onIsland: true, island, map, count: count)
            }
        }
        if x - 1 > -1 {
            if island[x - 1][y] == 1 && map[x - 1][y] == 0 {
                // move there
                return findIslands(x: x - 1, y: y, onIsland: true, island, map, count: count)
            }
        }
        return findIslands(x: x, y: x, onIsland: false, island, map, count: count + 1)
        
        
    } else {
        for i in 0..<island.count {
            for j in 0..<island[0].count {
                if map[i][j] == 0 && island[i][j] == 1 {
                    return findIslands(x: i, y: j, onIsland: true, island, map, count: count)
                }
            }
        }
        return count
    }
}

findIslands(x: 0, y: 0, onIsland: false, island, map, count: 0)
