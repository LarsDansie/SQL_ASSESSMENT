log_file = open("um-server-01.txt") #They're saying that this variable will open that file


def sales_reports(log_file): #now they're calling the function so it will run the above code
    for line in log_file: #creating the for loop to go through in that function
        line = line.rstrip() #this scrapes the stuff you don't want in the parameteres 
        day = line[0:3] #declaring day to be (forgot word but the 0 on the line, like it goes 0 1 2 yada yada) to be day and 3 digits
        if day == "Mon": #if that declaration above is met, so if the 0 is 3 digits equalling Mon as delcared then it will do what it says next
            print(line) #well now is where it actually says to print the entire line but stripped the fat off


sales_reports(log_file) #Honestly, no idea what this means. (I kid, they're just running the function)
