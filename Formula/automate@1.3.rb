class AutomateAT13 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.24"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.24/automate-darwin-arm64"
      sha256 "e4cb1bea9be2713748ed8440501e89864005389b72ba58d241176cae5baf657b"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.24/automate-darwin-amd64"
      sha256 "500f39b96f107fd80519efc985d816212ca6a27011d518c63e575b2c786eb9e7"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.24/automate-linux-arm64"
      sha256 "b2c19abab0ff8ea53034468e7dd1316ccbd3b8b6f9aca19f19a5d99eeb9d9939"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.24/automate-linux-amd64"
      sha256 "016403158226b0d674bbf5580a30ad4f5dc71ec33bc2758d14ce4d9c7a1614db"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
