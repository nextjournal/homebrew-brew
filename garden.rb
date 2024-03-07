class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.3"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.3/garden-linux-aarch64-static.tar.gz"
      sha256 "be8124e167a1e12405b238cdb7f93a71ce2d2af3860d3170ef5ca45834d10b30"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.3/garden-linux-amd64-static.tar.gz"
      sha256 "be8124e167a1e12405b238cdb7f93a71ce2d2af3860d3170ef5ca45834d10b30"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.3/garden-macos-aarch64.tar.gz"
      sha256 "960fd513ede3da9d99b63b480ad5c2c87165cf63b6c5ddbd85ed2c02b3ecd25b"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.3/garden-macos-amd64.tar.gz"
      sha256 "834b5429ffa5db2e1088471b62a596ff678013e660f6a7b4946a7b9184d65e07"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
