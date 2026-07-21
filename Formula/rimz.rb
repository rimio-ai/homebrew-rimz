class Rimz < Formula
  desc "Routes your attention across a fleet of coding agents"
  homepage "https://github.com/rimio-ai/rimz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.4.1/rimz-aarch64-apple-darwin.tar.gz"
      sha256 "e5258e88d925fff496e83f222dfc07e9e86470e1bcfafd0a4e68812e49d26238"
    end
    on_intel do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.4.1/rimz-x86_64-apple-darwin.tar.gz"
      version "0.4.1"
      sha256 "7f892be73f9b8e6b2a6a616c6bf8b6eb86cc313592beca24d55ea601568279e6"
    end
  end

  def install
    bin.install "rimz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rimz --version")
  end
end
