class Rimz < Formula
  desc "Routes your attention across a fleet of coding agents"
  homepage "https://github.com/rimio-ai/rimz"
  version "0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.2/rimz-aarch64-apple-darwin.tar.gz"
      sha256 "15052e4efc4d0945127b71ab6378f8fb3ddcf65375e1360a947773cabe471e51"
    end
    on_intel do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.2/rimz-x86_64-apple-darwin.tar.gz"
      sha256 "f0e4c3959ae207c064d050c211767dfe80a719bb5580dc2e2def3277f2b283ec"
    end
  end

  def install
    bin.install "rimz"
  end

  test do
    system bin/"rimz", "--version"
  end
end
