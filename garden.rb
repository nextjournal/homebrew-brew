class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.8"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.8/garden-linux-aarch64-static.tar.gz"
      sha256 "1a20975a41279d101c5e102dbb0543accd076023377ffca7e96dde855722cfe3"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.8/garden-linux-amd64-static.tar.gz"
      sha256 "1a20975a41279d101c5e102dbb0543accd076023377ffca7e96dde855722cfe3"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.8/garden-macos-aarch64.tar.gz"
      sha256 "c9168622c0f6f0fdba4508f7831dea73a545b9288b47cc1861e3c8a013392c8a"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.8/garden-macos-amd64.tar.gz"
      sha256 "534860f9f215a7165cdc3166578bb1ecdca091db1caa786388c88e927937a540"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
