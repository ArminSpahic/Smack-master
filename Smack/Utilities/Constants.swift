//
//  Constants.swift
//  Smack
//
//  Created by Armin Spahic on 11/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Succes: Bool) -> ()

// URL CONSTANTS
let BASE_URL = "https://smackchattyas.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"



