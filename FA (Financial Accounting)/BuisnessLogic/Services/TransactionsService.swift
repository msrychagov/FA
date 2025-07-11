//
//  TransactionsService.swift
//  FA (Financial Accounting)
//
//  Created by Михаил Рычагов on 14.06.2025.
//
import Foundation

final class TransactionsService {
    static var id: Int = 0
    let accountsService: BankAccountsService = BankAccountsService()
    let categoriesService: CategoriesService = CategoriesService()
    private func transactionsFromServer() async throws-> [Transaction] {
        let transactions = [
            Transaction(id: 1,
                        account: BankAccount(id: "g5ldpb73", name: "Основной счёт", balance: 15000.50, currency: "RUB"),
                        category: Category(id: 2, name: "Зарплата", emoji: "💰", isIncome: .income),
                        amount: 1000.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Зарплата за месяц",
                        createdAt: formatter.date(from: "2025-06-24T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-24T23:42:34.083Z")!),
            Transaction(id: 2,
                        account: BankAccount(id: "g5ldpb73", name: "Дополнительный счёт", balance: 1000.00, currency: "USD"),
                        category: Category(id: 1, name: "Одежда", emoji: "👕", isIncome: .outcome),
                        amount: -30.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Покупка футболки",
                        createdAt: formatter.date(from: "2025-06-24T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-24T23:42:34.083Z")!),
            Transaction(id: 3,
                        account: BankAccount(id: "g5ldpb73", name: "Основной счёт", balance: 15000.50, currency: "RUB"),
                        category: Category(id: 3, name: "Подработка", emoji: "💰", isIncome: .income),
                        amount: 500.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:43:34.083Z")!,
                        comment: "Таскал кирпичи",
                        createdAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!),
            Transaction(id: 4,
                        account: BankAccount(id: "g5ldpb73", name: "Дополнительный счёт", balance: 1000.00, currency: "USD"),
                        category: Category(id: 1, name: "Одежда", emoji: "👕", isIncome: .outcome),
                        amount: -30.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Покупка футболки",
                        createdAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!),
            Transaction(id: 5,
                        account: BankAccount(id: "g5ldpb73", name: "Дополнительный счёт", balance: 1000.00, currency: "USD"),
                        category: Category(id: 2, name: "На собаку", emoji: "🐕", isIncome: .outcome),
                        amount: -1000.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Покупка футболки",
                        createdAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!),
            Transaction(id: 6,
                        account: BankAccount(id: "g5ldpb73", name: "Дополнительный счёт", balance: 1000.00, currency: "USD"),
                        category: Category(id: 3, name: "Ремонт", emoji: "🔨", isIncome: .outcome),
                        amount: -30.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Покупка футболки",
                        createdAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!),
            Transaction(id: 7,
                        account: BankAccount(id: "g5ldpb73", name: "Дополнительный счёт", balance: 1000.00, currency: "USD"),
                        category: Category(id: 4, name: "Аптека", emoji: "⛑️", isIncome: .outcome),
                        amount: -30.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Покупка футболки",
                        createdAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!),
            Transaction(id: 8,
                        account: BankAccount(id: "g5ldpb73", name: "Дополнительный счёт", balance: 1000.00, currency: "USD"),
                        category: Category(id: 5, name: "На любимую", emoji: "❤️", isIncome: .outcome),
                        amount: -30.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Покупка футболки",
                        createdAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!),
            Transaction(id: 9,
                        account: BankAccount(id: "g5ldpb73", name: "Дополнительный счёт", balance: 1000.00, currency: "USD"),
                        category: Category(id: 6, name: "Ставки", emoji: "⚽️", isIncome: .outcome),
                        amount: -50000.00,
                        transactionDate: formatter.date(from: "2025-07-11T23:42:34.083Z")!,
                        comment: "Покупка футболки",
                        createdAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!,
                        updatedAt: formatter.date(from: "2025-06-13T23:42:34.083Z")!),
        ]
        
        return transactions
    }
    
    func loadTransactions() async throws -> [Transaction] {
        try await transactionsFromServer()
    }
    
    func fetchTransactions(startDate: Date? = Date.now, endDate: Date? = Date.now) async throws -> [Transaction] {
        let transactions = try await loadTransactions()
        return transactions.filter {
            $0.transactionDate >= startDate! &&
            $0.transactionDate <= endDate!
        }
    }
    
    func createTransaction(accountId: String, categoryId: Int, amount: Decimal, transactionDate: Date, comment: String) async throws -> Transaction {
        TransactionsService.id += 1
        return try await Transaction(id: TransactionsService.id,
                           account: accountsService.bankAccount(id: accountId)!,
                           category: categoriesService.category(id: categoryId)!,
                           amount: amount,
                           transactionDate: transactionDate,
                           comment: comment,
                           createdAt: Date.now,
                           updatedAt: Date.now)
    }
    
    func putTransaction(id: Int, accountId: String, categoryId: Int, amount: Decimal, transactionDate: Date, comment: String) async throws -> Transaction? {
        guard let currentTransaction = try await transaction(id: id),
              let account = try await accountsService.bankAccount(id: accountId),
              let category = try await categoriesService.category(id: categoryId)
        else { return nil }
        return Transaction(id: id,
                           account: account,
                           category: category,
                           amount: amount,
                           transactionDate: transactionDate,
                           comment: comment,
                           createdAt: currentTransaction.createdAt,
                           updatedAt: Date.now)
    }
    
    func deleteTransaction(id: Int) async throws -> [Transaction]{
        var transactions = try await loadTransactions()
        transactions.removeAll { $0.id == id }
        return transactions
    }
    
    // Добавил метод для получения транзакции по id
    func transaction(id: Int) async throws -> Transaction? {
        let transactions = try await loadTransactions()
        return transactions.first(where: { $0.id == id })
    }
    
}
