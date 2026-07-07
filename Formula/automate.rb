class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.20"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.20/automate-darwin-arm64"
      sha256 "8904b5f5b3c259d28fd9550cb999683d560c5f5330f50d174e28ec337a069823"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.20/automate-darwin-amd64"
      sha256 "25255a12a703641361177765c038bf7520ca406bc2e59f06cc6cda6f2add9dfa"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.20/automate-linux-arm64"
      sha256 "3b4cac05cd9b3cb17d18c08dd9844f8b91dd3629f53ee4868c1e89b4422abdcc"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.20/automate-linux-amd64"
      sha256 "83f270af1f77257dd6116222fa9054240dcdc5e827edae6beff0769a619f31e4"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
