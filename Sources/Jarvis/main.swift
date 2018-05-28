import JarvisCore

let core = JarvisCore()

do {
    try core.run()
} catch {
    print("Whoops! An error occurred: \(error)")
}
