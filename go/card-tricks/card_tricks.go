package cards

// FavoriteCards returns a slice with the cards 2, 6 and 9 in that order.
func FavoriteCards() []int {
	favCards:=[]int{2,6,9}
    return favCards
}

// GetItem retrieves an item from a slice at given position.
// If the index is out of range, we want it to return -1.
func GetItem(slice []int, index int) int {
        var result = -1
    
	for v:= range slice{
        if index<=v && index>=0{
              result = slice[index]
            }
        
    }
    return result
    
}

// SetItem writes an item to a slice at given position overwriting an existing value.
// If the index is out of range the value needs to be appended.
func SetItem(slice []int, index, value int) []int {
    var result [] int 
	for v:= range slice{
        result = append(slice,value)
        if index<=v && index>=0{
            slice[index]=value
            result = slice
        }
        
    }
    return result
}

// PrependItems adds an arbitrary number of values at the front of a slice.
func PrependItems(slice []int, values ...int) []int {
	result := slice
     for v:= range values{
         if v>=0{
         result = append(values,slice...)
             }
     }
    return result
}

// RemoveItem removes an item from a slice by modifying the existing slice.
func RemoveItem(slice []int, index int) []int {
 if index < 0 || index >= len(slice) {
        return slice
    }
    
    return append(slice[:index], slice[index+1:]...)
}
