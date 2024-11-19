package twofer
import "fmt"

// ShareWith should have a comment documenting it.
func ShareWith(name string) string {
    returnName:="you"
    if(name!=""){
	returnName = name
    }
    return fmt.Sprintf("One for %s, one for me.",returnName)
}
