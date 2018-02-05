class Image
  attr_accessor :pixel
  def initialize(pixel)
    @pixel = pixel
  end
  def output_image
    @pixel.each do |x|
      x.each do |cell|
        print cell
      end
      print "\n"
    end
  end
end

image = Image.new [
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
]
image.output_image
