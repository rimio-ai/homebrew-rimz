class Rimz < Formula
  desc "Routes your attention across a fleet of coding agents"
  homepage "https://github.com/rimio-ai/rimz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.4/rimz-aarch64-apple-darwin.tar.gz"
      sha256 "aa8a610a0a5a223a7812ec0c294eaab3b44c39d44431d5c8caf506281a244a1b"
    end
    on_intel do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.4/rimz-x86_64-apple-darwin.tar.gz"
      version "0.4"
      sha256 "7342fd7a432652961126715edd534d0555d3a5166938ee3ca80852d2a9ac7476"
    end
  end

  def install
    bin.install "rimz"
  end

  test do
    system bin/"rimz", "--version"
  end
end
