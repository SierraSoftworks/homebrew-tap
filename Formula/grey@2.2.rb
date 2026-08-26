class GreyAT22 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.13"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.13/grey-darwin-arm64"
      sha256 "8ac92123379202ca27ec97f8668dd6cc327a0ff843926558e947c494c8ea5aa3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.13/grey-linux-arm64"
      sha256 "b8340e96e869cc3083611307633c863c85a7ccd44e0173a327954567df6de9ab"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.13/grey-linux-amd64"
      sha256 "2b23e4433ca6dc23cd61fc44944c459327b40bb9a1b619d6fb8c2a41203d9c53"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
