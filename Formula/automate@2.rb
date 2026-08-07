class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.5"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.5/automate-darwin-arm64"
      sha256 "3be98d30fd92784252c086e0025cf7d70782b9c195791cd828fc94bd5ad9314d"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.5/automate-darwin-amd64"
      sha256 "3737dbc18fcba624a7695c27597a3b5f8cf7ad1373acf011a645067ef58ba7e2"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.5/automate-linux-arm64"
      sha256 "fdff7e07cc76c043e90eca314ed07cf485737d6bef475039070a4a3a6d268e41"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.5/automate-linux-amd64"
      sha256 "6df56e4b86f09e6f52b8b10397c778018f851bfa617e6a45b1daba761318d197"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
