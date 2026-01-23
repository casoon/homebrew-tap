# typed: false
# frozen_string_literal: true

# Homebrew formula for docgen CLI
class Docgen < Formula
  desc "CLI tool for generating professional business documents with Typst"
  homepage "https://github.com/casoon/typst-business-templates"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-apple-darwin.tar.gz"
      sha256 "3d817ee1637d3d00e6e82ecfc4997e7f61cab9ba08a009766567021f109ecdab"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-apple-darwin.tar.gz"
      sha256 "934bc5a9ce29abdffe27e63f50186d94482dfa7c7d6213e5e3bb34c0588ccf10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9df7e30f63b2327e5d91002ecc9498922824dd9837c69602d72f8b413df2ee44"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6330837f368393ac881fa878b2a75a27f2c2a517da5c224493339a2dd64b2dc"
    end
  end

  depends_on "typst"

  def install
    bin.install "docgen"
  end

  test do
    system "#{bin}/docgen", "--version"
  end
end
