%dw 2.0
output application/json
---
{
    "accountId": vars.salecforceId,
    "pricebookId": "01s5j00000OWMQRAA5",
    "effectiveDate": now() as Date,
    "endDate": (((now() as Number) + 7776000)as DateTime as String {format: "yyyy-MM-dd"}) as Date,
    "status": "Draft",
    "address": {
        "street": vars.payload.address.street,
        "city": vars.payload.address.city,
        "state": vars.payload.address.state,
        "country": vars.payload.address.country
    },
    "product": {
        "productId": vars.productId,
        "pricebookEntryId": vars.pricebookEntryId,
        "quantity": vars.payload.product.quantity,
        "unitPrice": vars.unitPrice
    }
}