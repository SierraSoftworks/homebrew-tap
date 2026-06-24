class AutomateAT1 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.15"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.15/automate-darwin-arm64"
      sha256 "913e093a2a2f1245004688bcc647ad9b97c88f5669c00f42e47b7c73914a9739"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.15/automate-darwin-amd64"
      sha256 "2e54114e75560767ba4982e150f98ed8722d343d0d38fe73ee1677659e7b6153"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.15/automate-linux-arm64"
      sha256 "b9a95ffc13e65161cb030c96c60a3d751b2a3cd8220d711f18e08cac42751da9"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.15/automate-linux-amd64"
      sha256 "a24265e72ac177fe5ced913d1f1858c4814e648d18f78e0af289af1848abfdd4"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
