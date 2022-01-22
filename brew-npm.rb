class BrewNpm < Formula
  desc "Install npm packages as Homebrew formula"
  homepage "https://github.com/shuuuuun/brew-npm"
  url "https://github.com/shuuuuun/brew-npm/archive/v0.3.0.tar.gz"
  sha256 "cda3089ab7fcce8be41c1f40dbf298bf74e8bb36fe40065ed05981bbca1a78c1"
  license "MIT"
  head "https://github.com/shuuuuun/brew-npm.git"

  def install
    lib.install Dir["lib/*"]
    bin.install "exe/brew-npm"
  end

  test do
    system "#{bin}/brew-npm", "help"
  end
end
