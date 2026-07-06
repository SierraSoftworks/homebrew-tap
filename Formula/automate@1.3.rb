class AutomateAT13 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.17"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.17/automate-darwin-arm64"
      sha256 "20ff5652274c061f8f69e17b4766cb7cc4e39824317c9eb238693357adcc6148"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.17/automate-darwin-amd64"
      sha256 "15605303b864419c8a529592f7b148f2aa7c0684250d08432337a550941c0b1b"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.17/automate-linux-arm64"
      sha256 "faa3b93d87b104340b7d61c7b5fd0a506c5f11fcfede2724e21f7a138453832a"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.17/automate-linux-amd64"
      sha256 "b2af83910188640f6c69440be0b0182d1982e4bae83b19dd407ca71fe40bee62"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
