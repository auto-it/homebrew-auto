class Auto < Formula
  desc "Generate releases based on semantic version labels on pull requests."
  homepage "https://intuit.github.io/auto/home.html"
  url "https://github.com/intuit/auto/releases/download/v7.15.2/auto-macos.gz"
  sha256 "5b1026f18b8274be869245ed63427bf8ddac0739c67be12c4a769ac948824eeb"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dynamic"
    system "make", "install"
  end

  test do
    system "#{bin}/auto", "--version"
  end
end