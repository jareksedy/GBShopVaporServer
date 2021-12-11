//
//  ReviewsController.swift
//  
//
//  Created by Ярослав on 12.12.2021.
//

import Vapor

class ReviewsController {
    func getReviews(_ req: Request) throws -> EventLoopFuture<[ReviewResponse]> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
            ReviewResponse(userId: 123, reviewText: "Потрясающий девайс. Юзаю ежедневно."),
            ReviewResponse(userId: 345, reviewText: "Фигня какая-то, девайс не понравился."),
        ]
        
        return req.eventLoop.future(response)
    }
    
    func addReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Review.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Ваш отзыв был передан на модерацию.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Review.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: nil,
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}
