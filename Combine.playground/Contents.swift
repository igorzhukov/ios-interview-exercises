import Combine


/// What will the following code print?
/// 3/
//1/ One Two Three
//2/ Two Three
//3/ Two One Three
//4/ Two
//5/ It won't compile
let publisher = Deferred { () -> Just<Int> in
    print ( "One")
    return Just(1)
}

print( "Two")
let cancelable = publisher
    .sink (receiveValue: { _ in
        print ("Three")
    })

