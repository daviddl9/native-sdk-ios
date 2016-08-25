//
//  PBMerchantApi.swift
//  Pods
//
//  Created by Médéric Petit on 8/25/2559 BE.
//
//

import UIKit

public class PBMerchantApi: PBBaseApi {

    private class func merchantEndPointWithPath(path:String) -> String {
        return PBEndPoint.MERCHANT_END_POINT + path
    }
    
    public class func availableBranchForGoodsGroup(goodsGroup:String, completionBlock:PBAvailableMerchantBranchCompletionBlock, failureBlock:PBFailureErrorBlock) {
        let params = ["goods_group":goodsGroup]
        PBRestController.request(.POST, endPoint: merchantEndPointWithPath("availableBranchGoodsGroup"), parameters: params, completionBlock: { (apiResponse) in
            let branches = PBBranch.pbBranchesFromApiResponse(apiResponse)
            let merchant = PBMerchant(apiResponse: apiResponse)
            completionBlock(branches: branches, merchant: merchant)
            }, failureBlock:failureBlock)
    }
    
}
