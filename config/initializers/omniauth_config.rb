OmniAuth.config.test_mode = true
omniauth_hash = {
	provider: "stripe_connect",
	uid: "acct_18JmeADieMiwgttL",
	info: {
		name: "revvseller@gmail.com",
		email: "revvseller@gmail.com",
		nickname: nil,
		scope: "read_write",
		livemode: :false,
		stripe_publishable_key:"pk_test_t2hKtFOxD1FHUVv39xmZ1fg3"
	},
	credentials: {
		token:"sk_test_KeOh8WA8NjCZ5UXsVDeTp6hD",
		expires: :false,
		refresh_token: "rt_8azWoTzLEoUTq02ZOghERpbSZR3vAbir2J5lVHfPZsNt1gDK"
	}
}
OmniAuth.config.add_mock(:stripe, omniauth_hash)