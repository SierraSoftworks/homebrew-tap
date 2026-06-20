class OnCallAT11 < Formula
  desc "Generate fair on-call schedules with a simple, declarative, specification"
  homepage "https://github.com/SierraSoftworks/on-call"
  version "1.1.5"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.5/on-call-darwin-arm64"
      sha256 "cce06249fb95f650f9bdcec9aec671bda20de28372afab28003b89f5ef941d29"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.5/on-call-darwin-amd64"
      sha256 "1419be94dd4490c2993ff22621fff7c0627538e77905be2e502304559358221a"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.5/on-call-linux-arm64"
      sha256 "bbf300668cbac58406cac0edb0bc167bfcc06528e1a59796f9b4b16f14b8e787"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.5/on-call-linux-amd64"
      sha256 "572b8ffab9bc29734b13441e755eda707103f684cbb84197e9f918c0fe19ee1f"
    end
  end

  def install
    bin.install Dir["*"][0] => "on-call"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/on-call --version 2>&1 || true")
  end
end
