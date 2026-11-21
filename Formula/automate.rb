class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.12"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.12/automate-darwin-arm64"
      sha256 "a7b24efdc021ea7a0e073302d4d391ecf4bb8cf270b26388b104b7112a532099"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.12/automate-darwin-amd64"
      sha256 "72f2c8b9150913270841449bb3c2eabdfa45c9c92558c14267218a8bb848ee56"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.12/automate-linux-arm64"
      sha256 "b0143e11878b78a93b714db26b318524ea74d2abe57c4646a17eb0dae4312a7e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.12/automate-linux-amd64"
      sha256 "d0b0c13a85957fb5deb15630bb30f70225ab45a72552cb0eb6b07afd427fe5b5"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
