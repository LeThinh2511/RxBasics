//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
import RxSwift


//executeProcedure(for: "just") {
//    let observable = Observable.just("just observable")
//    observable.subscribe({
//    print($0)
//    })
//}
//
//executeProcedure(for: "of"){
//    let observable = Observable.of(10, 20, 30)
//    observable.subscribe({
//        print($0)
//    }) }

//executeProcedure(for: "from"){
//    let observable = Observable.from([10, 20,30])
//    observable.subscribe { print($0) }
//    observable.subscribe { print($0) }.dispose()
//    observable.subscribe { print($0) }
//
//}

//executeProcedure(for: "from"){
//    let disposeBag = DisposeBag()
//
//    Observable.from([1, 2, 3])
//        .subscribe(onNext: {print($0)},
//                   onCompleted: { print("Completed the events") },
//                   onDisposed: { print("Sequence terminated hence Disposed") }
//    )
//}

//executeProcedure(for: "PublishSubject"){
//    enum CustomError: Error{
//        case defaultError
//    }
//    let pubSubject = PublishSubject<String>()
//    let disposeBag = DisposeBag()
//    pubSubject.subscribe {
//        print($0)
//    }.disposed(by: disposeBag)
//    pubSubject.on(.next("First Event")) //pubSubject.onError(CustomError.defaultError) //pubSubject.onCompleted() pubSubject.onNext("Second Event")
//    let newSubcription = pubSubject.subscribe(onNext: {
//        print("New Subscription", $0)
//    })
//    pubSubject.onNext("I am New!")
//    newSubcription.dispose()
//    pubSubject.onNext("Fourth Event")
//}

//executeProcedure(for: "BehaviorSubject"){
//    let disposeBag = DisposeBag()
//    let behSubject = BehaviorSubject(value: "Test")
//    behSubject.onNext("first Event")
//    let initialSubscripton = behSubject.subscribe(onNext: {
//        print("Line number is \(#line) and value is" , $0)
//    })
//    behSubject.onNext("Second Event")
//
//}

//executeProcedure(for: "ReplaySubject"){
//    let disposeBag = DisposeBag()
//    let repSubject = ReplaySubject<String>.create(bufferSize: 2)
//    repSubject.onNext("First")
//    repSubject.onNext("Second")
//    repSubject.onNext("Third")
//    repSubject.onNext("fourth")
//    repSubject.subscribe(onNext: { print($0)
//    })
//    .disposed(by: disposeBag)
//}

executeProcedure(for: "Variable") {
    let disposeBag = DisposeBag()
    let variable = Variable(1)
    variable.asObservable().subscribe{
    print($0) }
    .disposed(by: disposeBag)
    variable.value = 2
}
