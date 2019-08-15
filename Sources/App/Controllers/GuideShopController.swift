//
//  GuideShopController.swift
//  App
//
//  Created by Eduardo Pinto on 15/08/19.
//

import Vapor

final class GuideShopController {
    func get(with request: Request) throws -> Future<[GuideShop]> {
        return GuideShop.query(on: request).all()
    }

    func put(with request: Request) throws -> Future<GuideShop> {
        guard let guideShop = try? request.content.decode(GuideShop.self) else {
            throw Abort(.badRequest)
        }

        return guideShop.save(on: request)
    }

    func delete(with request: Request) throws -> Future<HTTPStatus> {
        let guideShopId = try request.parameters.next(Int.self)
        return GuideShop.find(guideShopId, on: request)
            .unwrap(or: Abort(HTTPResponseStatus.notFound))
            .delete(on: request)
            .transform(to: .ok)
    }
}
