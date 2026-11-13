class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.11"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.11/automate-darwin-arm64"
      sha256 "c5d4414802ec278a663491f29952af2bcba3566df9b87694b69f585c7b16ddff"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.11/automate-darwin-amd64"
      sha256 "8fabf6daa7423b441ff2078b26cb905b7376b1aed02133345ff7abdeedbb0f09"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.11/automate-linux-arm64"
      sha256 "16184c4d41a5bcbf4a338ade4ba00fd4600b8d5ba839217df2790f76ba80b523"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.11/automate-linux-amd64"
      sha256 "9c9fbff9f4557339736f15cdba861e0a217e481df1c14519b671544460d95f11"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
