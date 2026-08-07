class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.7"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.7/automate-darwin-arm64"
      sha256 "f3e7204d543c3f35350065363ff42e12aa18806dd170c7ce39a86e785d272688"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.7/automate-darwin-amd64"
      sha256 "4e642e05c819e49e4d2350de314552124a2c8ebc77768694cf5c473f996699e0"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.7/automate-linux-arm64"
      sha256 "c6f0d0f44989aef32eee5579f8156ea4d5dc4a793bbcd53a471a51eab9c8c658"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.7/automate-linux-amd64"
      sha256 "9503fcd13832aa3b902b4f8ecf6d7807594a1c83c6053f962ef49a7f702c1d54"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
