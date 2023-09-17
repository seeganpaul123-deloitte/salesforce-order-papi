%dw 2.0
output application/x-www-form-urlencoded
---
{
	From: "+14259547866",
	To: payload.phone_no,
	Body: "Your OTP is "++ vars.otp as String
}