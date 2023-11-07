class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  url "https://github.com/nextjournal/garden-cli/releases/download/0.0.2/garden.tar.gz"
  version "0.0.2"
  sha256 "3b19f0241dd3aeb4ca0965d3424e124159cb672517899ba9be2b713a7851329b"

  depends_on "borkdude/brew/babashka"

  binary "garden"

  test do
    system "#{bin}/garden", "--version"
  end
end
