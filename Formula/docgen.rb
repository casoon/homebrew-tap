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
      sha256 "7fdd282bd81a57c5596d2f506bbdc4ae428e5cf2b75a9519c7897249f6dac9f6"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-apple-darwin.tar.gz"
      sha256 "673154b1b47aff6a18b59e03f335a7f2414413cc8c6a38ebc3ca17864cf794bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4e5cb1788e4cb2ebd552622f36f32d711c85de8bdcb59a581cd2ba070b10254"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38cf326b99f739b4a78c6427f94a036be76fa577204f2c20e0ec88f6418549ac"
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
