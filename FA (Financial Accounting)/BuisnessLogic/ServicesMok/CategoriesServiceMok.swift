
final class CategoriesServiceMok {
    private(set) var categories: [Category] = []

    private func categoriesFromServer() -> [Category] {
        let categories: [Category] = [
            Category(id: 1, name: "Подработка", emoji: "💸", direction: .income),
            Category(id: 2, name: "Зарплата", emoji: "💰", direction: .income),
            Category(id: 3, name: "Аренда квартиры", emoji: "🏠", direction: .outcome),
            Category(id: 4, name: "Одежда", emoji: "👔", direction: .outcome),
            Category(id: 5, name: "На собачку", emoji: "🐕", direction: .outcome),
            Category(id: 6, name: "Ремонт квартиры", emoji: "🔨", direction: .outcome),
            Category(id: 7, name: "Продукты", emoji: "🍬", direction: .outcome),
            Category(id: 8, name: "Спортзал", emoji: "🏋️‍♀️", direction: .outcome),
            Category(id: 9, name: "Медицина", emoji: "💊", direction: .outcome),
            Category(id: 10, name: "Аптека", emoji: "💜", direction: .outcome),
            Category(id: 11, name: "Машина", emoji: "🚗", direction: .outcome),
            Category(id: 12, name: "Деп", emoji: "💰", direction: .outcome)
        ]
        
        return categories
    }
    
    func loadCategories() async throws -> [Category] {
        categories = categoriesFromServer()
        return categories
    }
    
    func selectCategories(by direction: Direction) async throws -> [Category] {
        return categories.filter { $0.direction == direction }
    }
    
    // Добавил метод для получения категории по id, т.к. при изменении Transaction передается categoryId, а вернуть нужно Transaction, где поле - Category
    func category(id: Int) async throws -> Category? {
        let categories = try await loadCategories()
        return categories.first(where: { $0.id == id })
    }
}
