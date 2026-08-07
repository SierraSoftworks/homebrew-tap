class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.8"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.8/automate-darwin-arm64"
      sha256 "20e239d6cad22ba081d1fc1db5b069ec6a466c0042a5c076d0b0597e82b7b4fb"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.8/automate-darwin-amd64"
      sha256 "d78ffb59b4b9cbe14baab776eb0989b4e6e09dbc377cfba49549e6a3cfecfb78"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.8/automate-linux-arm64"
      sha256 "b6f65209e55bbdf1c8865e211faa15c0b1ab28a1ec7de9955f855fc2bf63811b"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.8/automate-linux-amd64"
      sha256 "e44e8594563988c16973d777c4a63ff169d7169ca859e82af9b936d4cf93871a"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
