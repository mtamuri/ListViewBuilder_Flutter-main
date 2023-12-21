

total = 2000
count = 50


while count < total:
    hadith = input("Enter hadith: ")
    quotationHadith = " ' " + hadith + " ' "
    
    # Save quotationHadith as a text file
    with open("quotationHadith.txt", "a",  encoding='utf-8') as file:
        file.write(quotationHadith)
        
       # file.write(str(count + 1))
        file.write("\n")

    count += 1
