class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.10"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.10/automate-darwin-arm64"
      sha256 "8601a34c1778e17198a6bfe379b6fdce66fbe44c6967fd2302bdc9e3fc724897"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.10/automate-darwin-amd64"
      sha256 "e9d4f1832ef5ef16d143197bb8210406ebf23b15309e5d5d5470fefe50f0ae6a"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.10/automate-linux-arm64"
      sha256 "cc310fbfd06e0ef2c08c01cbf91f08993ea3955da27346f43af025b7e016f841"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.10/automate-linux-amd64"
      sha256 "68711c05942a75054706062715a95a6f8da084394b786c263ecda200a2ce30ed"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
