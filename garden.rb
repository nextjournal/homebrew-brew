class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.0.9"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.9/garden-linux-aarch64-static.tar.gz"
      sha256 "2e8813a98cc44fe4a5f49833b079f2d09c6ee754374e5ebbddd1bbfb060683e5"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.9/garden-linux-amd64-static.tar.gz"
      sha256 "2e8813a98cc44fe4a5f49833b079f2d09c6ee754374e5ebbddd1bbfb060683e5"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.9/garden-macos-aarch64.tar.gz"
      sha256 "32d37f29b8423de8c347bdd404663f54610093be7e5f3cd9a87a38afd1d877e8"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.9/garden-macos-amd64.tar.gz"
      sha256 "d6b362762139b0a9c6f4bd900f54638a70e66c15f89fdf441bacfbbc5a49d58f"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
