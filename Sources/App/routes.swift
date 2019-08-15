import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get { request in
        return "It works!"
    }

    let guideShopController = GuideShopController()
    router.get("guideShops", use: guideShopController.get)
    router.put("guideShop", use: guideShopController.put)
    router.delete("guideShop", Int.parameter, use: guideShopController.delete)
}
