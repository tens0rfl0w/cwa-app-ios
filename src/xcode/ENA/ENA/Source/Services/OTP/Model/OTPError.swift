////
// 🦠 Corona-Warn-App
//

import Foundation

enum OTPError: Error {
	case generalError
	case invalidResponseError
	case internalServerError
	case otpAlreadyUsedThisMonth
	case otherServerError
	case apiTokenAlreadyIssued
	case apiTokenExpired
	case apiTokenQuotaExceeded
	case deviceTokenInvalid
	case deviceTokenRedeemed
	case deviceTokenSyntaxError

	var description: String {
		switch self {
		case .generalError:
			return "generalError"
		case .invalidResponseError:
			return "invalidResponseError"
		case .internalServerError:
			return "internalServerError"
		case .otpAlreadyUsedThisMonth:
			return "otpAlreadyUsedThisMonth"
		case .otherServerError:
			return "otherServerError"
		case .apiTokenAlreadyIssued:
			return "apiTokenAlreadyIssued"
		case .apiTokenExpired:
			return "apiTokenExpired"
		case .apiTokenQuotaExceeded:
			return "apiTokenQuotaExceeded"
		case .deviceTokenInvalid:
			return "deviceTokenInvalid"
		case .deviceTokenRedeemed:
			return "deviceTokenRedeemed"
		case .deviceTokenSyntaxError:
			return "deviceTokenSyntaxError"
		}
	}
}

// Do not edit this cases as they are decoded as they are from the server.
enum OTPServerErrorCode: String, Codable {
	case API_TOKEN_ALREADY_ISSUED
	case API_TOKEN_EXPIRED
	case API_TOKEN_QUOTA_EXCEEDED
	case DEVICE_BLOCKED
	case DEVICE_TOKEN_INVALID
	case DEVICE_TOKEN_REDEEMED
	case DEVICE_TOKEN_SYNTAX_ERROR
	case APK_CERTIFICATE_MISMATCH
	case APK_PACKAGE_NAME_MISMATCH
	case ATTESTATION_EXPIRED
	case JWS_SIGNATURE_VERIFICATION_FAILED
	case NONCE_MISMATCH
	case SALT_REDEEMED
}
