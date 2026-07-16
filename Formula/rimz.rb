class Rimz < Formula
  desc "Routes your attention across a fleet of coding agents"
  homepage "https://github.com/rimio-ai/rimz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.3/rimz-aarch64-apple-darwin.tar.gz"
      sha256 "39618a1cf602479a79141f3ffba99a9464f27de02d032c88bcce876388e095cf"
    end
    on_intel do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.3/rimz-x86_64-apple-darwin.tar.gz"
      version "0.3"
      sha256 "da5b0d387fd78e1f5dca032730188dec8cd637cfc4d1db83e1286eecf9f569b4"
    end
  end

  def install
    bin.install "rimz"
  end

  test do
    system bin/"rimz", "--version"
  end
end
