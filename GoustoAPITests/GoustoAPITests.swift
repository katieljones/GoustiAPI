//
//  GoustoAPITests.swift
//  GoustoAPITests
//
//  Created by Katie Jones on 15/10/2020.
//  Copyright © 2020 Katie Jones. All rights reserved.
//

import XCTest
@testable import GoustoAPI

class GoustoAPITests: XCTestCase {

    func testControllerHasTableView() {
        guard let controller = UIStoryboard(name: "Main", bundle: Bundle(for:TableViewController.self)).instantiateInitialViewController() as? TableViewController
            else {
                return XCTFail("Could not instantiate ViewController from main storyboard")
        }
        controller.loadViewIfNeeded()
        
        XCTAssertNotNil(controller,
                        "Controller should have a tableview")
        
    }
    
//    func testTableViewDataSourceIsKittenDataSource() {
//        guard let controller = UIStoryboard(name: "Main", bundle: Bundle(for: TableViewController.self)).instantiateInitialViewController() as? TableViewController else {
//            return XCTFail("Could not instantiate ViewController from main storyboard")
//        }
//
//        controller.loadViewIfNeeded()
//
//        XCTAssertTrue(controller.datasource is ProductDataSource,
//                      "TableView's data source should be a KittenDataSource")
//    }
            func testProductHasATitle() {
                let product = Prod(title: "Borseca")
                XCTAssertEqual(product.title, "Borseca",
                                   "Product name should be set in initializer")
            }

        func testDataSourceHasKittens() {
            let dataSource = ProductData()
            
            for number in 0..<20 {
                let product = Prod(title: "Product: \(number)")
                dataSource.products.append(product)
            }
            XCTAssertEqual(dataSource.products.count, 20,
                           "DataSource should have correct number of kittens")
        }

    


}
