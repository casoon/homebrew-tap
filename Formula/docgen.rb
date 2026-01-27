# typed: false
# frozen_string_literal: true

# Homebrew formula for docgen CLI
# This file should be copied to your homebrew-tap repository
class Docgen < Formula
  desc "CLI tool for generating professional business documents with Typst"
  homepage "https://github.com/casoon/typst-business-templates"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-apple-darwin.tar.gz"
      sha256 "b9c5e776f8c77a8af1b93b0ccddb8cef06b5aed959e4a0b0a53a6d5be7c29cea"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-apple-darwin.tar.gz"
      sha256 "a3d53cee18e3c99b2a949d4fd50cecc9fe01e50821d7d5dad10dce8b1449b0ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb8fec4d9d8d0a24b5d5ad3db4a0e53a0f9b03f23c70be96354f2baed94a0eda"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c47a7bcd64dc3e6ebeda0dc70a24a47ec87a3a58c4a659d5ed1e3c603b9d3e5"
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
