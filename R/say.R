
#' Pick-me-up whale
#'
#' @param what text string; pick me up message, if blank randomly chosen
#'
#' @return a cute whale wholesome message
#' @export
#'
#' @examples
#' say("You're whale-come!")
say <- function(what){
  #Defining the whale ASCII
  whale = "\n            ------ \n           %s \n            ------ \n               \\\   \n                \\\  \n                 \\\
     .-'
'--./ /     _.---.
'-,  (__..-`       \\
   \\          .     |
    `,.__.   ,__.--/
     '._/_.'___.-`
"
  #Finding the position of where to print message
  what_pos_start <-
    regexpr('%s', whale)[1] - 1

  what_pos_end <- what_pos_start + 3

  #If what isn't supplied...
  if(missing(what)){
    what <- phrases %>% sample(size = 1) #See here's the pipe!
  }

  #Combining positions, message and whale together
  out <- paste0(substr(whale, 1, what_pos_start), #Top of speech bubble
                what, #User specified message
                substr(whale, what_pos_end, nchar(whale))) #Bottom of speech bubble + whale

  #Return whale message
  message(out)
}
