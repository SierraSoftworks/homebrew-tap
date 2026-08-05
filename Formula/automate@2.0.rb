class AutomateAT20 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.2"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.2/automate-darwin-arm64"
      sha256 "bfd3d7137e7d694cf39d4045ce796b01e4213605b5d2bad2c2cc0cebf1c51782"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.2/automate-darwin-amd64"
      sha256 "3c0c30f493bdead855c557ffca3674087c66e71ce78f1e27d0abcad7af1280f4"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.2/automate-linux-arm64"
      sha256 "88f1a199cacf14cbca7180a91bd9a8ca0381574c8032cd4b1abe7d883dda2b4a"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.2/automate-linux-amd64"
      sha256 "65fc277d04189cd5c90b7323c4bbc4e37eb78c5dc74e49cdb71a3c17bb201efa"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
