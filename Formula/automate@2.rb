class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.7"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.7/automate-darwin-arm64"
      sha256 "3c7dbc9f31daa7b12d87ba68b98f4b022a577194c5aeccd1a866320de3a90cf8"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.7/automate-darwin-amd64"
      sha256 "ee772019c0ca68345ddbf60f0bad1d0389831119062927f1a886272491e0a0a3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.7/automate-linux-arm64"
      sha256 "0e56caed4d5869440d96db196077365d3beb36a8f73d167036d888d76cb8acc2"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.7/automate-linux-amd64"
      sha256 "c212c500da2b6ad96cfb105cb24d7581e4fdf2a255dda37164858df13b7bb3e6"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
