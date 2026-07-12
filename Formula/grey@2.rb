class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.4"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.4/grey-darwin-arm64"
      sha256 "a6a9f99899acf9287b5b03d98b7cacb45a44b31de32446bdd7299bac5e06cfae"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.4/grey-darwin-amd64"
      sha256 "7b25645759245c3e665ce73d2e73bd88dbe148d4e3c893aea59da6efbaa4d808"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.4/grey-linux-arm64"
      sha256 "4df83df19143216ea607e6c27351f88f3f592dab0efd1297d7b074559a18a7fb"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.4/grey-linux-amd64"
      sha256 "bdb7b57747a2154dc8426c35d69bf1647f9b58f6a3dd64cb0d6597c9d296d5c4"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
