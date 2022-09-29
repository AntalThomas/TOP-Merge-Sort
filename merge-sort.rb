def merge_sort(arr)
    if arr.length <= 1
        return arr
    else
        mid = (arr.length / 2).floor
        left = merge_sort(arr[0..mid - 1])
        right = merge_sort(arr[mid..arr.length])
        merge(left, right)
    end
end

def merge(left, right)
    if left.empty?
        return right
    elsif right.empty?
        return left
    elsif left[0] < right[0]
        [left[0]] + merge(left[1..left.length], right)
    else
        [right[0]] + merge(left, right[1..right.length])
    end
end

arr = [2, 6, 2, 44, 36, 9, 7, 5, 777]

p merge_sort(arr)