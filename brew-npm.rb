class BrewNpm < Formula
  desc "Install npm packages as Homebrew formula"
  homepage "https://github.com/shuuuuun/brew-npm"
  url "https://github.com/shuuuuun/brew-npm/archive/v0.1.0.tar.gz"
  sha256 "8b06b8a7b09ceae9d3491c3c5a954d7f3fe1c5d22c57f18f4289e2444a1dac41"
  license "MIT"
  head "https://github.com/shuuuuun/brew-npm.git"

  bottle :unneeded

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/brew-npm"
  end

  test do
    system "#{bin}/brew-npm", "help"
  end
end
