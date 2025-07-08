class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "d2692365dff25a95651dbcd830438b1966c7e353e3da1e8fb7720ac7574b1779"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "643a84eb6a04d59e714c2be9d776058b3f3320d65f29adb17eb04128670aa911"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "0e0ee2ced8b92bdca670f211c6d4850014cfc32c82e34ee1684d2065d07f0844"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "839f56e91d65ebcd9ab5f53fff9d03103922c73eac40187721b796d1041d4537"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
