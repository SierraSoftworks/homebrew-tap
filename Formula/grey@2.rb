class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.10"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.10/grey-darwin-arm64"
      sha256 "cc174523e539ed45d162512067a5eba84e945e39cc128866f2b0595d12bb057a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.10/grey-darwin-amd64"
      sha256 "3aa73ac6e7774c9afea4af03f1effc803364b75fc62cf01d8b7d8d171e852fde"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.10/grey-linux-arm64"
      sha256 "592ebb7475d9c7d7a26bb320019b92e9465f3ab4637aabaf3cb81b30676aaf35"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.10/grey-linux-amd64"
      sha256 "86f705af1ea7519a6f489975e825ffb7f95455ffc4e2481fcb12ec31ba8399a7"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
