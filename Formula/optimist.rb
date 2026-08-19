class Optimist < Formula
  desc "Helps teams design large systems and find what constrains them"
  homepage "http://optimist.sierrasoftworks.com/"
  version "1.1.1"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/optimist/releases/download/v1.1.1/optimist-darwin-arm64"
      sha256 "324bfda73edb00c8091a1742a8b1f7ebf0fa1ce8b0f02c383ebe941816864db5"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/optimist/releases/download/v1.1.1/optimist-darwin-amd64"
      sha256 "750dee84fd4ce5ed3ca0ce5146167aab705ae93749a37c3a6e4be0cc95d2fd6a"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/optimist/releases/download/v1.1.1/optimist-linux-arm64"
      sha256 "35c7175cfdf64dd3a47bead4bbe325217cfc4e03c9891a84bec58c4d4d68d6f8"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/optimist/releases/download/v1.1.1/optimist-linux-amd64"
      sha256 "3bb05080fe233c68218a16754c9fd645f8fd37439e95e524a780b4729790508d"
    end
  end

  def install
    bin.install Dir["*"][0] => "optimist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/optimist --version 2>&1 || true")
  end
end
