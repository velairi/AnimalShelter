import UIKit

var str = "Hello, playground"

class AnimalShelter {

    var time: Int = 0
    var dogShelter: [Dog] = []
    var catShelter: [Cat] = []

    static func sayHi() {
        print("HI")
    }

    func addDog(dog: Dog) {
        dog.time = time
        time += 1
        dogShelter.append(dog)
    }

    func addCat(cat: Cat) {
        cat.time = time
        time += 1
        catShelter.append(cat)
    }

    func getDog() -> Dog? {
        return dogShelter.remove(at: 0)
    }

    func getCat() -> Cat? {
        return catShelter.remove(at: 0)
    }

    func getAnimal() -> Animal? {
        if let dog = dogShelter.first, let cat = catShelter.first {
            return dog.time < cat.time ? dogShelter.remove(at: 0) : catShelter.remove(at: 0)
        }

        if dogShelter.first != nil {
            return dogShelter.remove(at: 0)
        } else if catShelter.first != nil {
            return catShelter.remove(at: 0)
        } else {
            return nil
        }
    }
}



class Animal: NSObject {
    var name: String = ""
    var time: Int = 0
}

class Dog: Animal {

}

class Cat: Animal {
}

var dog1 = Dog()
dog1.name = "Golden"
var dog2 = Dog()
dog2.name = "Golden Retriever2"
var dog3 = Dog()
dog3.name = "Golden Retriever3"
var dogs = [Dog]()
var cat1 = Cat()
cat1.name = "Cat1"
var cat2 = Cat()
cat2.name = "Cat2"
var cat3 = Cat()
cat3.name = "Cat3"
var cats = [Cat]()

var animalShelter = AnimalShelter()
animalShelter.addDog(dog: dog1)
animalShelter.addCat(cat: cat1)
animalShelter.addCat(cat: cat2)
animalShelter.addDog(dog: dog2)
animalShelter.addCat(cat: cat3)
animalShelter.addDog(dog: dog3)
animalShelter.getAnimal() == dog1

