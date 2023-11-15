cask "garden" do
  arch arm: "aarch64", intel: "amd64"
  version "0.0.5"
  sha256 arm: "f70c56062880923c3379635a9d83efe4d04388f5f26c06d3f1d7f60e03758404",
         intel: "fb21e42feed06ba95b5e2104e55eb7a527e21879b7367f1f5cd4044d0f39e128"
  url "https://github.com/nextjournal/garden-cli/releases/download/v#{version}/garden-macos-#{arch}.tar.gz",
      verified: "https://github.com/nextjournal/garden-cli"
  name "application.garden command line interface"
  name "garden"
  desc "CLI for application.garden"
  homepage "https://application.garden"
  binary "garden"
end
