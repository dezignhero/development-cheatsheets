var policy: AFSecurityPolicy = AFSecurityPolicy(pinningMode: AFSSLPinningMode.Certificate)
	policy.allowInvalidCertificates = true
	policy.validatesDomainName = false

self.securityPolicy = policy