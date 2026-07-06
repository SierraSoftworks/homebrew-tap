class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.19"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.19/automate-darwin-arm64"
      sha256 "b9b011e1124008c1dc3cdd193f3972f7512d61ef242f63ef977a2ebc4e708bfb"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.19/automate-darwin-amd64"
      sha256 "a7484ae1bb41283134bdbdbf430ba784099a11e5f869034619dff5c4d29598a8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.19/automate-linux-arm64"
      sha256 "65ce221b509ee3fe209402195006735a3813f629502d4500161d815352b3c48b"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.19/automate-linux-amd64"
      sha256 "df59b97966730e367c53f7944b5db3b6929ef4bd9364e923e560001575053cc9"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
