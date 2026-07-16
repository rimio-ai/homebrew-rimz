class Rimz < Formula
  desc "Routes your attention across a fleet of coding agents"
  homepage "https://github.com/rimio-ai/rimz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.3/rimz-aarch64-apple-darwin.tar.gz"
      sha256 "c99b654eeab3a634e00bdd942efe6fc09a19ba509490940febb0908dc5a6e332"
    end
    on_intel do
      url "https://github.com/rimio-ai/rimz/releases/download/v0.3/rimz-x86_64-apple-darwin.tar.gz"
      version "0.3"
      sha256 "901409e0a9ca8a51703aa57134fee8d087b727efc774496740c1b3ce14128114"
    end
  end

  def install
    bin.install "rimz"
  end

  test do
    system bin/"rimz", "--version"
  end
end
