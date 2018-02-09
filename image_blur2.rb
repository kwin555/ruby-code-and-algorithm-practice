class Image
  attr_accessor :pixel
  def initialize(pixel)
    @pixel = pixel
  end

  def output_image
    @pixel.each do |row|
      row.each do |column|
        print column
      end
      print "\n"
    end
  end

  def horizontal_size
    @pixel[0].size
  end

  def vertical_size
    @pixel.size
  end

  def blur()
    puts 'input blur distance'
    distance = gets.chomp.to_i
    distance.times do
      image_transform
    end
  end

  def image_transform
    pixels = []
    # this gets the location of my 1's
    @pixel.each_with_index do |row_elements, row_number|
      row_elements.each_with_index do |element, column_number|
        pixels << [row_number, column_number] if element == 1
      end
    end
    # this uses the location of my 1's to put 1s surround my original 1
    pixels.each do |index|
      row_number = index[0]
      column_number = index[1]
      @pixel[row_number][column_number - 1] = 1 if column_number - 1 >= 0
      @pixel[row_number][column_number + 1] = 1 if \
      column_number + 1 <= horizontal_size - 1
      @pixel[row_number - 1][column_number] = 1 if row_number - 1 >= 0
      @pixel[row_number + 1][column_number] = 1 if \
      row_number + 1 <= vertical_size - 1
    end
  end
end


test_array =[
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    ]

image = Image.new(test_array)
image.blur()
image.output_image
