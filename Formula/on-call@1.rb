class OnCallAT1 < Formula
  desc "Generate fair on-call schedules with a simple, declarative, specification"
  homepage "https://github.com/SierraSoftworks/on-call"
  version "1.1.6"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.6/on-call-darwin-arm64"
      sha256 "a08aee6d47b15cc9e7e1dbf35430ed63d97ea5c153ed22937c1b02c855b0706c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.6/on-call-darwin-amd64"
      sha256 "50e66e78c817fc25fbfdebdaac800d92e35b9bef08c82b6aa9b924339f94c744"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.6/on-call-linux-arm64"
      sha256 "ef04a13d936f545fddba10665fe06d747f485b52c29a3707f5226f082d459b51"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.6/on-call-linux-amd64"
      sha256 "e495e38e362162305b501a35508b0ee76b12c8452ac2f709db59d1334a42cd21"
    end
  end

  def install
    bin.install Dir["*"][0] => "on-call"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/on-call --version 2>&1 || true")
  end
end
