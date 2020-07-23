class BrewNpm < Formula
  desc "Install npm packages as Homebrew formula"
  homepage "https://github.com/shuuuuun/brew-npm"
  url "https://github.com/shuuuuun/brew-npm/archive/v0.1.1.tar.gz"
  sha256 "cc618c82f2c5fed5a0b7cf63ebaf19e4411f74afc8940f934be60af2eb13f17b"
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
