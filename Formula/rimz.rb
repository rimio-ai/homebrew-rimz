class Rimz < Formula
  desc "Routes your attention across a fleet of coding agents"
  homepage "https://github.com/rimio-ai/rimz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.4.2/rimz-aarch64-apple-darwin.tar.gz"
      sha256 "d4a4c0cf9641c2b7cc62447f5b9bb0d219a3ffbad1ae60033d18931e1cc7aa73"
    end
    on_intel do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.4.2/rimz-x86_64-apple-darwin.tar.gz"
      version "0.4.2"
      sha256 "61743779ad055678af71ae7742685af2925d13f9971583560de4e4bf20827d04"
    end
  end

  def install
    bin.install "rimz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rimz --version")
  end
end
