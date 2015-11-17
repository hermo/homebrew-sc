class Sc < Formula
  desc "Text-based spreadsheet with VI-like keybindings"
  version "7.16-3"
  homepage "https://tracker.debian.org/pkg/sc"

  stable do
      url "http://anonscm.debian.org/cgit/collab-maint/sc.git", :tag => "v7.16-3"
  end

  def install
    system "make", "all", "sc.1", "psc.1"
    bin.install "sc", "psc"
    man1.install "sc.1", "psc.1"
    doc.install "tutorial.sc"
  end
end
