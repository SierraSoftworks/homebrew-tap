class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.3"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.3/automate-darwin-arm64"
      sha256 "d6d7d5a73e349c9561004f893640c9d4d1b9122286445cc772e50eade2b08bf3"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.3/automate-darwin-amd64"
      sha256 "b28e9adeda9e965b561b192b8e93c4c952d4de36cc416182bc7826feaa30379f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.3/automate-linux-arm64"
      sha256 "d2863663891db9c17043a077c23dc15b5bc1ae9000aa25cce94e955b3aa438ba"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.3/automate-linux-amd64"
      sha256 "96bbc4152383cbacd5a57ad754040ce31513016d6dd313bb074131911132ef86"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
