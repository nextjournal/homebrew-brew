cask "garden" do
  arch arm: "aarch64", intel: "amd64"
  version "0.0.4"
  sha256 arm: "a522113487d562944226c6ee42010ee5f5ed53c2f0a8621a390ed294ed5f0821",
         intel: "b5d3e0960e8299ef1be07fc87ec947fa162d16ab89505a3672a9cc8fc249624c"
  url "https://github.com/nextjournal/garden-cli/releases/download/v#{version}/garden-macos-#{arch}.tar.gz",
      verified: "https://github.com/nextjournal/garden-cli"
  name "application.garden command line interface"
  name "garden"
  desc "CLI for application.garden"
  homepage "https://application.garden"
  binary "garden"
end
