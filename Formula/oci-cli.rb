class OciCli < Formula
  include Language::Python::Virtualenv

  desc "Oracle Cloud Infrastructure CLI"
  homepage "https://docs.cloud.oracle.com/iaas/Content/API/Concepts/cliconcepts.htm"
  url "https://files.pythonhosted.org/packages/37/2a/802b77b9abe1c49f51a6c0e759f351c31040c703a5fc05b40f21dee0812b/oci-cli-3.30.1.tar.gz"
  sha256 "e7d96c069b790d018a4aa0b5207b1556b66020d6da34621343ef8cc3d676a319"
  license any_of: ["UPL-1.0", "Apache-2.0"]
  revision 1
  head "https://github.com/oracle/oci-cli.git", branch: "master"

  bottle do
    rebuild 1
    sha256 cellar: :any,                 arm64_ventura:  "2305f0a87f2e7a30e1bfd82ab1bf024e7b2c10bd93da7f159d213c31ab04cc7f"
    sha256 cellar: :any,                 arm64_monterey: "1437f128c6b4dc320a255b7f26bd441de0c8526f999f4d6d1446c4b225837a24"
    sha256 cellar: :any,                 arm64_big_sur:  "e4067e436ce4b9500a5cd3fe53d37d2166c795c3c907b3aaf601b639a61a32b6"
    sha256 cellar: :any,                 ventura:        "14a00b57383da96e12f9500c13d4b4cd38950223d2c6082c958c209765489970"
    sha256 cellar: :any,                 monterey:       "392521cb06fb72715daf204707dd49b1574bdf212ffd21b83fc83d0c445b95ad"
    sha256 cellar: :any,                 big_sur:        "0114b92918b494e7fed6563d8a3bd2f6162b96935a6229acea0aa0988bcfa99d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "173c71806641394eb9bb06aa1bdbaef4bded1fec49f96694713c6b37cf1fe125"
  end

  depends_on "cffi"
  depends_on "python-certifi"
  depends_on "python-cryptography"
  depends_on "python@3.11"
  depends_on "pyyaml"
  depends_on "six"

  resource "arrow" do
    url "https://files.pythonhosted.org/packages/7f/c0/c601ea7811f422700ef809f167683899cdfddec5aa3f83597edf97349962/arrow-1.2.3.tar.gz"
    sha256 "3934b30ca1b9f292376d9db15b19446088d12ec58629bc3f0da28fd55fb633a1"
  end

  resource "circuitbreaker" do
    url "https://files.pythonhosted.org/packages/92/ec/7f1dd19e3878f5391afb508e6a2fd8d9e5b176ca2992b90b55926c7341d8/circuitbreaker-1.4.0.tar.gz"
    sha256 "80b7bda803d9a20e568453eb26f3530cd9bf602d6414f6ff6a74c611603396d2"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/dd/cf/706c1ad49ab26abed0b77a2f867984c1341ed7387b8030a6aa914e2942a0/click-8.0.4.tar.gz"
    sha256 "8458d7b1287c5fb128c90e23381cf99dcde74beaf6c7ff6384ce84d6fe090adb"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "oci" do
    url "https://files.pythonhosted.org/packages/4d/6b/507039f4c049e1270bb783c10e4b2a90f880d442e802c29368e2cb15fce5/oci-2.109.0.tar.gz"
    sha256 "f44d3e5212dfc903bcca1dd0811379924709c1a2ada9341e6ca51b320ddac6e4"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/59/68/4d80f22e889ea34f20483ae3d4ca3f8d15f15264bcfb75e52b90fb5aefa5/prompt_toolkit-3.0.29.tar.gz"
    sha256 "bd640f60e8cecd74f0dc249713d433ace2ddc62b65ee07f96d358e0b152b6ea7"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/be/df/75a6525d8988a89aed2393347e9db27a56cb38a3e864314fac223e905aef/pyOpenSSL-23.2.0.tar.gz"
    sha256 "276f931f55a452e7dea69c7173e984eb2a4407ce413c918aa34b55f82f9b8bac"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/5e/32/12032aa8c673ee16707a9b6cdda2b09c0089131f35af55d443b6a9c69c1d/pytz-2023.3.tar.gz"
    sha256 "1d8ce29db189191fb55338ee6d0387d82ab59f3d00eac103412d64e0ebd0c588"
  end

  resource "terminaltables" do
    url "https://files.pythonhosted.org/packages/9b/c4/4a21174f32f8a7e1104798c445dacdc1d4df86f2f26722767034e4de4bff/terminaltables-3.1.0.tar.gz"
    sha256 "f3eb0eb92e3833972ac36796293ca0906e998dc3be91fbe1f8615b331b853b81"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    version_out = shell_output("#{bin}/oci --version")
    assert_match version.to_s, version_out

    assert_match "Usage: oci [OPTIONS] COMMAND [ARGS]", shell_output("#{bin}/oci --help")
    assert_match "", shell_output("#{bin}/oci session validate", 1)
  end
end
