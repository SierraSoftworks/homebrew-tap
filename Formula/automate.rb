class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.11"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.11/automate-darwin-arm64"
      sha256 "aff587bd073c323fd5ab476e92e8f37a1eaa03a903300a0ec8b0ffa6d2f5e1dc"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.11/automate-darwin-amd64"
      sha256 "9d3f091f6b45f189e258896cd18086cedb4ae605a9a9c911545d29328040b202"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.11/automate-linux-arm64"
      sha256 "a6d7941304ff424da33e0a115ae123b6a6fcb7c8c614b28aa1d5894175361468"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.11/automate-linux-amd64"
      sha256 "725893e095c3551699dd0b9b154233b606ef6f6b80845bdc3a0be7737fe4a43e"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
