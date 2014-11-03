require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  describe "正常ケース" do
    describe "不等辺三角形の場合" do
      specify { expect(Triangle.type(2, 3, 4)).to eq "不等辺三角形ですね！" }
      specify { expect(Triangle.type(4, 2, 3)).to eq "不等辺三角形ですね！" }
      specify { expect(Triangle.type(3, 4, 2)).to eq "不等辺三角形ですね！" }
    end
    describe "二等辺三角形の場合" do
      specify { expect(Triangle.type(2, 2, 1)).to eq "二等辺三角形ですね！" }
      specify { expect(Triangle.type(2, 1, 2)).to eq "二等辺三角形ですね！" }
      specify { expect(Triangle.type(1, 2, 2)).to eq "二等辺三角形ですね！" }
    end
    describe "正三角形の場合" do
      specify { expect(Triangle.type(1, 1, 1)).to eq "正三角形ですね！" }
      specify { expect(Triangle.type(2, 2, 2)).to eq "正三角形ですね！" }
      specify { expect(Triangle.type(3, 3, 3)).to eq "正三角形ですね！" }
    end
  end

  describe "異常ケース" do
    describe "２辺の和がもう１辺と等しい場合" do
      specify { expect(Triangle.type(1, 2, 3)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(1, 3, 2)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(3, 1, 2)).to eq "三角形じゃないです＞＜" }
    end
    describe "２辺の和がもう１辺を超える場合" do
      specify { expect(Triangle.type(1, 2, 4)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(1, 4, 2)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(4, 1, 2)).to eq "三角形じゃないです＞＜" }
    end
    describe "長さが０の場合" do
      specify { expect(Triangle.type(1, 1, 0)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(1, 0, 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(0, 1, 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(0, 0, 0)).to eq "三角形じゃないです＞＜" }
    end
    describe "長さがマイナスの場合" do
      specify { expect(Triangle.type(1, 1, -1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(1, -1, 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(-1, 1, 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(-1, -1, -1)).to eq "三角形じゃないです＞＜" }
    end
    describe "長さが文字の場合" do
      specify { expect(Triangle.type(1, 1, "c")).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(1, "b", 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type("a", 1, 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type("a", "b", "c")).to eq "三角形じゃないです＞＜" }
    end
    describe "長さがnilの場合" do
      specify { expect(Triangle.type(1, 1, nil)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(1, nil, 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(nil, 1, 1)).to eq "三角形じゃないです＞＜" }
      specify { expect(Triangle.type(nil, nil, nil)).to eq "三角形じゃないです＞＜" }
    end
  end
end
