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
//    var systemUnderTest: TableViewController!
//
//    override func setUp() {
//
//        super.setUp()
//
//        //get the storyboard the ViewController under test is inside
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        //get the ViewController we want to test from the storyboard (note the identifier is the id explicitly set in the identity inspector)
//        systemUnderTest = storyboard.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController
//
//        //load view hierarchy
//        _ = systemUnderTest.view
//    }
//
//    override func tearDown() {
//
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//
//    func testTableViewDataSourceIsProductDataSource() {
//
////        systemUnderTest.loadViewIfNeeded()
//        let table = TableViewController()
//        XCTAssertTrue(table.dataSource is ProductData,
//                      "TableView's data source should be a ProductData")
//    }
            func testProductHasATitle() {
                let product = Prod(title: "Borseca", list_price: "6.99", description: "fruity wine")
                XCTAssertEqual(product.title, "Borseca",
                                   "Product name should be set in initializer")
            }
            func testProductHasAPrice() {
              let product = Prod(title: "Borseca", list_price: "6.99", description: "fruity wine")
              XCTAssertEqual(product.list_price, "6.99",
                                 "Product list price should be set in initializer")
          }
            func testProductHasADescription() {
              let product = Prod(title: "Borseca", list_price: "6.99", description: "Fruity wine")
              XCTAssertEqual(product.description, "Fruity wine",
                                 "Product name should be set in initializer")
          }

        func testDataSourceHasProducts() {
            let dataSource = ProductData()
            
            for number in 0..<20 {
                let product = Prod(title: "Product: \(number)", list_price: "6", description: "nice")
                dataSource.products.append(product)
            }
            XCTAssertEqual(dataSource.products.count, 20,
                           "DataSource should have correct number of kittens")
        }
   
    
    func testNumberOfRows() {
        let tableView = UITableView()
        let datasource = ProductData()
        for number in 0..<20 {
        let product = Prod(title: "Product: \(number)", list_price: "6", description: "nice")
        datasource.products.append(product)
        }
        let numberOfRows = datasource.tableView(tableView, numberOfRowsInSection: 0)
        XCTAssertEqual(numberOfRows, 20,
                       "Number of rows in table should match number of products")
    }
    
    func testCellForRow() {
        let tableView = UITableView()
        let datasource = ProductData()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.estimatedRowHeight = 44
        for _ in 0..<20 {
               let product = Prod(title: "Borseca", list_price: "6", description: "nice")
               datasource.products.append(product)
               }
        let cell = datasource.tableView(tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertEqual(cell.textLabel?.text, "Borseca",
                       "Thie first cell should display name of the first product")
    }
    
    func testHasZeroSectionsWhenZeroProducts() {
        let datasource = ProductData()
        datasource.products = []
      
        let tableView = UITableView()
      
        XCTAssertEqual(datasource.numberOfSections(in: tableView), 0,
                       "TableView should have zero sections when no products are present")
    }
    
    func testHasOneSectionWhenProductsArePresent() {
        let datasource = ProductData()
        let tableView = UITableView()
        for _ in 0..<20 {
        let product = Prod(title: "Borseca", list_price: "6", description: "nice")
        datasource.products.append(product)
        }
        XCTAssertEqual(datasource.numberOfSections(in: tableView), 1,
                       "TableView should have one section when products are present")
    }

}
