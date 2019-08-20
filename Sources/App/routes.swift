import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get { request in
        return "It works!"
    }

    let guideShopController = GuideShopController()
    router.get("guideShops", use: guideShopController.list)
    router.post("guideShop", use: guideShopController.insert)
    router.post("guideShops", use: guideShopController.bulkInsert)
    router.delete("guideShop", Int.parameter, use: guideShopController.delete)
}
