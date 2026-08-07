class Grey < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.5"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.5/grey-darwin-arm64"
      sha256 "b3cd74b6122938bbe0a21a794756b4626940bd6693378515a60e6040be59b745"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.5/grey-darwin-amd64"
      sha256 "b69b52bf4a92ca250e40be9e58a05363f513232590284ec058f0342790da1435"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.5/grey-linux-arm64"
      sha256 "c838b0e85d217eb035b1b2d064f91e4dfc8ff591c046704a397f8a94b1588d8f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.5/grey-linux-amd64"
      sha256 "6f4bb464b2b21c663ab0db7e2ab8a3b0461cf2affff8c20c01dc41d900d185fd"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
