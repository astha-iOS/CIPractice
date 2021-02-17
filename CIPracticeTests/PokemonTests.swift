//
//  PokemonTests.swift
//  iOSUnitTestsIntro
//
//  Created by Theodore Bendixson on 7/17/16.
//  Copyright © 2016 X-Team. All rights reserved.
//

import XCTest
@testable import CIPractice

class PokemonTests: XCTestCase {
  
  var squirtle: Pokemon!
  var charmander: Pokemon!
  var psyduck: Pokemon!
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    squirtle = Pokemon(type: .water, attackType: .water)
    charmander = Pokemon(type: .fire, attackType: .fire)
    psyduck = Pokemon(type: .water, attackType: .water)
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
    squirtle = nil
    charmander = nil
    psyduck = nil
  }
  
  func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
    
    //1. Have Squirtle Attack Charmander
    squirtle.attack(enemy: charmander)
    
    //Ouch!
    
    //2. Now Have Squirtle Attack Psyduck
    squirtle.attack(enemy: psyduck)
    psyduck.attack(enemy: charmander)
    
    XCTAssertLessThanOrEqual(charmander.health, psyduck.health)
    XCTAssertTrue(charmander.health < psyduck.health)
  }
}
