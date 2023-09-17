%dw 2.0
output application/json
---
[
  {
    username: vars.username,
    orderId: vars.data.orderId,
    effectiveDate: vars.data.effectiveDate,
    endDate: vars.data.endDate,
    status: vars.data.status,
    address: vars.data.address,
    product: {
      product: vars.product,
      quantity: vars.quantity,
      unitPrice: vars.unitPrice
    },
    totalAmount: vars.data.totalAmount
  }
]