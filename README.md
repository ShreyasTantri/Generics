# Swift Generics – Quick Notes

## What We Covered

* **Generics**: Write reusable, type-safe code using placeholders like `T`
* **Generic Structs**: Data structures that work with any concrete type
* **Generic Constraints**: Restrict generic types using protocols
* **`where` Clause**: Express readable and scalable constraints

---

## Examples

```swift
struct Box<T> {
    let value: T
}
```

```swift
func findMax<T: Comparable>(_ a: T, _ b: T) -> T {
    a > b ? a : b
}
```

```swift
func compare<T>(_ a: T, _ b: T) where T: Equatable {
    print(a == b)
}
```

---

## Key Points

* Generics are resolved at **compile time**
* Protocols define **capabilities**
* Constraints make generic code safe
* `where` clause improves clarity
