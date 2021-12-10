//
//  DataController.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import Foundation
import CoreData


// MARK: - DataController

class DataController {

    // MARK: - Properties

    let persistentContainer: NSPersistentContainer!
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }

    var backgroundContext: NSManagedObjectContext!


    // MARK: - Methods

    init(modelName: String) {

        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion: (() -> Void)? = nil) {

        persistentContainer.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }

            self.backgroundContext = self.persistentContainer.newBackgroundContext()

            self.configureContexts()
            
            completion?()
        }
    }

    func configureContexts() {
        viewContext.automaticallyMergesChangesFromParent = true
        backgroundContext.automaticallyMergesChangesFromParent = true

        viewContext.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump
        backgroundContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
    }

    /**
     Save changes of main managed object context if available.

     No need to precheck whether context has changes.
     */
    func saveViewContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                fatalError("Could not save main context: \(error.localizedDescription)")
            }
        }
    }

    /**
     Save changes of background managed object context if available.

     No need to precheck whether context has changes.
     */
    func saveBackgroundContext() {
        if backgroundContext.hasChanges {
            do {
                try backgroundContext.save()
            } catch {
                fatalError("Could not save background context: \(error.localizedDescription)")
            }
        }
    }
}
