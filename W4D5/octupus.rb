array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

def sluggish(array)
    array.each.with_index do |ele, i|
        found_bigger = false
        array.each.with_index do |ele2, i2|
            if ele2.length > ele.length
                found_bigger = true
            end
        end
        return ele if found_bigger == false
    end
end

def dominant(array)
    sorted = false
    while !sorted
        sorted = true
        (0...array.length-1).each do |i|
            if array[i].length > array[i+1].length
                array[i], array[i+1] = array[i+1], array[i]
                sorted = false
            end
        end
    end
    array[-1]       
end

def clever(array)
    largest = array[0]
    array.each do |ele|
        if ele.length > largest.length
            largest = ele
        end
    end
    largest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up" ]

new_tiles_data_structure = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, 
"left" => 6,  "left-up" => 7}


def slow_dance(direction, array)
    array.each.with_index do |ele, i|
        if ele == direction
            return i
        end
    end
end

def fast_dance(direction, hash)
    hash[direction]
end
