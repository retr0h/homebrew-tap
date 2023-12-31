# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoGilt < Formula
  desc "A GIT layering tool"
  homepage "https://github.com/retr0h/go-gilt"
  version "2.0.1"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.1/go-gilt_2.0.1_darwin_amd64"
      sha256 "84d2a2dd04ad7e6fc2cec203917a8417eb846b1f491966b515a6ef8d77e78e1b"

      def install
        bin.install "go-gilt_2.0.1_darwin_amd64" => "go-gilt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.1/go-gilt_2.0.1_darwin_arm64"
      sha256 "feaa386078e26bb3ba009fbdcf16a8d1598c71cdc214fe7bdc187765d126cc15"

      def install
        bin.install "go-gilt_2.0.1_darwin_arm64" => "go-gilt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.1/go-gilt_2.0.1_linux_amd64"
      sha256 "e011a542473b5461c06ecfc91379f2f798d84a1708139eb8120810dad4754830"

      def install
        bin.install "go-gilt_2.0.1_linux_amd64" => "go-gilt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/retr0h/go-gilt/releases/download/v2.0.1/go-gilt_2.0.1_linux_arm64"
      sha256 "6199b0a38113c0e81b2c07e5105dffb504907b392b3b13be3f722e29e1970348"

      def install
        bin.install "go-gilt_2.0.1_linux_arm64" => "go-gilt"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
