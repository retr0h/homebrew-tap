# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoGilt < Formula
  desc "A GIT layering tool"
  homepage "https://github.com/retr0h/go-gilt"
  version "2.0.2"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.2/go-gilt_2.0.2_darwin_arm64"
      sha256 "d24315ac92ada57b1687056cba183c03dc89969065ea8e6810d97695d4890a45"

      def install
        bin.install "go-gilt_2.0.2_darwin_arm64" => "go-gilt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.2/go-gilt_2.0.2_darwin_amd64"
      sha256 "5c043f0d524dd94d97456a0fa577a54667f082cc0691186444b06a0c75cb780c"

      def install
        bin.install "go-gilt_2.0.2_darwin_amd64" => "go-gilt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.2/go-gilt_2.0.2_linux_arm64"
      sha256 "2bc4d64c608425cbcf93fec71577ebd1313b97981a3989f3b42efad0167ea51b"

      def install
        bin.install "go-gilt_2.0.2_linux_arm64" => "go-gilt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.2/go-gilt_2.0.2_linux_amd64"
      sha256 "7ee7da099b0b71cfb80526bd34c53df9ca4743126935b1f95be86e2de05b9748"

      def install
        bin.install "go-gilt_2.0.2_linux_amd64" => "go-gilt"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
