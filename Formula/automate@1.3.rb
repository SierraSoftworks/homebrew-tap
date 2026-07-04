class AutomateAT13 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.16"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.16/automate-darwin-arm64"
      sha256 "3a1f75755ec9a03dc81d98d935b5402a2295f5f43933c67a7ab8e02c51b2e9fe"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.16/automate-darwin-amd64"
      sha256 "9564e24e47069582a2e5a29a9c750ee81f715d74feeb2db58c7100d2347da2a5"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.16/automate-linux-arm64"
      sha256 "b56f1c7245d21308932dd83519f7b8cf116d92b6d17af7738d45d8c4e9fb6db5"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.16/automate-linux-amd64"
      sha256 "268998f62aebda21dae710d22c33d614d287014ceb7fc83ab54df6903ce5efe9"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
