class Image
  attr_accessor :image_data

  def initialize(image_data)
    self.image_data = image_data
  end

  def to_s
    image_data.map do |row|
      row.join(', ')
    end.join("\n")
  end

  def width
    image_data[0].size
  end

  def height
    image_data.size
  end

  def blur
    # puts 'input blur distance'
    # distance = gets.chomp.to_i
    distance = 2
    distance.times do
      blur_once
    end
  end

  def blur_once
    on_pixels = []
    # this gets the location of my 1's
    @image_data.each_with_index do |row_elements, row_number|
      row_elements.each_with_index do |element, column_number|
        on_pixels << [row_number, column_number] if element == 1
      end
    end
    # this uses the location of my 1's to put 1s surround my original 1
    on_pixels.each do |index|
      row_number = index[0]
      column_number = index[1]
      @image_data[row_number][column_number - 1] = 1 if column_number - 1 >= 0
      @image_data[row_number][column_number + 1] = 1 if \
      column_number + 1 <= height - 1
      @image_data[row_number - 1][column_number] = 1 if row_number - 1 >= 0
      @image_data[row_number + 1][column_number] = 1 if \
      row_number + 1 <= width - 1
    end
  end
end


test_array = [
  [1, 0, 0, 0, 0, 0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
]

image = Image.new(test_array)
image.blur

puts image
