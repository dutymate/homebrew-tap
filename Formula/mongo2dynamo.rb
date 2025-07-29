class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.1/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "c7b8fb44e8471036388c68600a89584976788ba456e03649195bb3b44597734f"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.1/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "ad4245bf16175067def56f09b760266dc0a8c595dd5f59937081046cd6a2e4c5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.1/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "cb04ce4ec81083e9c97fc251c2673c545a8dec2a42da4bb77a766495dcef6dd2"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.1/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "249c021bf0b05e57a42dafd7d400b249bf4bf6653fa6ef7396c9bb5452507da1"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
