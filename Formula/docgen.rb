# typed: false
# frozen_string_literal: true

# Homebrew formula for docgen CLI
class Docgen < Formula
  desc "CLI tool for generating professional business documents with Typst"
  homepage "https://github.com/casoon/typst-business-templates"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-apple-darwin.tar.gz"
      sha256 "b7bf4d3766b7cc82e06df376b05ee460f69e8187cee63a4ccca1cebbd1ae9188"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-apple-darwin.tar.gz"
      sha256 "059c622c6ca432dac1e50c1091473c7147aac2a9a6b3d16da082f6f6c2e01394"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "159210cf867bf722ec28acde071a50c0375f2f41bc5e4c203daab63b4ff1180e"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b8d10236d0517c8c4e6c895a7f13f0a32d8cf530a176969814450d60693bbb0"
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
