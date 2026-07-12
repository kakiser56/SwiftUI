//
//  main.swift
//  Chaining Closures
//
//  Created by Ron Erez on 28/11/2024.
//

import Foundation

print("Chaining Closures")

struct TaskScheduler {
    let prepare: () -> Void
    let execute: () -> Void
    let cleanUp: () -> Void
    let finish: () -> Void
    
    func start() {
        prepare()
        execute()
        cleanUp()
        finish()
    }
}

let scheduler = TaskScheduler(
    prepare: {},
    execute: {},
    cleanUp: {},
    finish: {}
)

let scheduler2 = TaskScheduler {
    print("Preparing resources...")
} execute: {
    print("Executing tasks...")
} cleanUp: {
    print("Cleaning up resources...")
} finish: {
    print("All tasks finished!")
}

scheduler2.start()

struct NewTaskScheduler {
    let prepare: () -> Void
    let x: Int
    let execute: () -> Void
    let cleanUp: () -> Void
    let finish: () -> Void
    
    func start() {
        prepare()
        execute()
        cleanUp()
        finish()
    }
}

let newScheduler = NewTaskScheduler(prepare: {}, x: 3) {
    
} cleanUp: {
    
} finish: {
    
}

struct NewerTaskScheduler {
    let x: Int
    let y: Int
    let name: String
    let prepare: () -> Void
    let execute: () -> Void
    let cleanUp: () -> Void
    let finish: () -> Void
    
    func start() {
        prepare()
        execute()
        cleanUp()
        finish()
    }
}

let newerScheduler = NewerTaskScheduler(
    x: 3,
    y: 5,
    name: "Hello World!") {
        
    } execute: {
        
    } cleanUp: {
        
    } finish: {
        
    }

