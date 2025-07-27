class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "72faf0af568d8c6900119c45dbcd4b8a066bc211a1d77b26936f31ef97073d69"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "a804d0ff24ffc83b2fd8ca6579ea2acadb6142db814f32b2368737c5197b305a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "cdd3b8892b2fb199e77f9e72532a0642d2eaabd8b86ab3df228092ef00d847a0"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.10.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "a61bc898cde49ccc3e52ae1acd41d626f1108e52c833c4a61242994fa53269ad"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
