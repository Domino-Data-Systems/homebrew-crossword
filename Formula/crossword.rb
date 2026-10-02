class Crossword < Formula
  desc "Generate a topic crossword PDF with a local Ollama model"
  homepage "https://domino-data-systems.github.io/AI-crossword-puzzle-generator/"
  version "0.1.0"
  license "LicenseRef-Domino-Data-Systems"

  on_macos do
    on_arm do
      url "https://github.com/Domino-Data-Systems/homebrew-crossword/releases/download/v0.1.0/crossword-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "82c5b36f9d4a5ec5c01248be83030a5bdf3bfebd62ae6f1871be220544ea9937"
    end
  end

  def install
    bin.install "crossword"
    man1.install "crossword.1"
  end

  test do
    assert_match "topic", shell_output("#{bin}/crossword --help")
  end
end
