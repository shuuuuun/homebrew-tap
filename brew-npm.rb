class BrewNpm < Formula
  desc "Install npm packages as Homebrew formula"
  homepage "https://github.com/shuuuuun/brew-npm"
  url "https://github.com/shuuuuun/brew-npm/archive/v0.2.0.tar.gz"
  sha256 "d9b965b53e743f9055ac5658e0c1ba9fa6f5dd4ddca8cf9fcb31de6ac6524799"
  license "MIT"
  head "https://github.com/shuuuuun/brew-npm.git"

  bottle :unneeded

  def install
    lib.install Dir["lib/*"]
    bin.install "exe/brew-npm"
  end

  test do
    system "#{bin}/brew-npm", "help"
  end
end
