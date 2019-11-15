class Auto < Formula
  desc "Generate releases based on semantic version labels on pull requests."
  homepage "https://intuit.github.io/auto/home.html"
  url "https://github.com/intuit/auto/releases/download/v7.15.2/auto-macos.gz"
  sha256 "6515358f6306e7acbf2eb3bb35dc54157e8a040a127f0d1d80160dda5cd832fc"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/auto"
  end

  test do
    system "#{bin}/auto", "--version"
  end
end