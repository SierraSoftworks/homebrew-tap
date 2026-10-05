class AutomateAT21 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.5"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.5/automate-darwin-arm64"
      sha256 "c870769cf0983c18f1a3ce0b2a1da3e98e217f740e0f44452f6a8174c6aed68e"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.5/automate-darwin-amd64"
      sha256 "f107e3a14a75512751a23aeaedfe713123e8f49c2e5d5f2fc2089fea78f6ff3c"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.5/automate-linux-arm64"
      sha256 "29f9fabd2762827af66f1e8b63c65daccbf5a9ba8c4a585fa712b6b74f7588f3"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.5/automate-linux-amd64"
      sha256 "b754ae8ebcf6e02d9c798317a17fad8c375cabdd4933da68f80684212e21232e"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
