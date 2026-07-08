class AutomateAT13 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.21"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.21/automate-darwin-arm64"
      sha256 "923ba214ed15df7603201f7681e36d4f985c37fe462226570b05198aeaa0c285"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.21/automate-darwin-amd64"
      sha256 "96b58d30d1260b58d725aea38e70515c527c3042091c8a93da332dc242718593"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.21/automate-linux-arm64"
      sha256 "b3b7a5172833695edac20ac8db2da4406baacb7474a90dc7536491834c854849"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.21/automate-linux-amd64"
      sha256 "107f5a39fb4fa632f6be6a45d7d3c39128758f5f9b5fb521ad4d0ef6681a75dc"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
