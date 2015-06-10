options(shiny.maxRequestSize=30*1024^2)

shinyServer(function(input, output) {
  output$contents <- renderText({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, it will be a data frame with 'name',
    # 'size', 'type', and 'datapath' columns. The 'datapath'
    # column will contain the local filenames where the data can
    # be found.
    
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    df <- read.table(inFile$datapath, header=FALSE, sep="\t", quote="")
    
    
    
    
    #first SNP
    
    rownumber=match('rs9375195',df$V1)#returns the first location of SNP
    
    
    translate <- c("A" = 1, "AA" = 2, "AC" = 1, "AG" = 1, "AT" = 1, "C" = 0, "CC" = 0, "CG" = 0, "CT" = 0, "DD" = 0, "DI" = 0, "G" = 0, "GG" = 0, "GT" = 0, "I" = 0, "II" = 0, "T" = 0, "TT" = 0)
    count1a=as.numeric(translate[as.character(df[rownumber, ]$V4)])  # same thing but with column name
    
    count1b=2-count1a
    
    #second SNP
    
    rownumber=match('rs898388',df$V1)#returns the first location of SNP
    
    translate <- c("A" = 1, "AA" = 2, "AC" = 1, "AG" = 1, "AT" = 1, "C" = 0, "CC" = 0, "CG" = 0, "CT" = 0, "DD" = 0, "DI" = 0, "G" = 0, "GG" = 0, "GT" = 0, "I" = 0, "II" = 0, "T" = 0, "TT" = 0)
    count2a=as.numeric(translate[as.character(df[rownumber, ]$V4)])  # same thing but with column name
    
    count2b=2-count2a
    
    
    #third SNP
    
    rownumber=match('rs11686372',df$V1)#returns the first location of SNP
    
    translate <- c("A" = 1, "AA" = 2, "AC" = 1, "AG" = 1, "AT" = 1, "C" = 0, "CC" = 0, "CG" = 0, "CT" = 0, "DD" = 0, "DI" = 0, "G" = 0, "GG" = 0, "GT" = 0, "I" = 0, "II" = 0, "T" = 0, "TT" = 0)
    count3a=as.numeric(translate[as.character(df[rownumber, ]$V4)])  # same thing but with column name
    
    count3b=2-count3a
    
    #fourth SNP
    
    rownumber=match('rs236322',df$V1)#returns the first location of SNP
    
    translate <- c("A" = 0, "AA" = 0, "AC" = 0, "AG" = 1, "AT" = 0, "C" = 0, "CC" = 0, "CG" = 1, "CT" = 0, "DD" = 0, "DI" = 0, "G" = 1, "GG" = 2, "GT" = 1, "I" = 0, "II" = 0, "T" = 0, "TT" = 0)
    count4a=as.numeric(translate[as.character(df[rownumber, ]$V4)])  # same thing but with column name
    count4b=2-count4a
    
    #fifth SNP
    
    rownumber=match('rs7923609',df$V1)#returns the first location of SNP
    
    translate <- c("A" = 0, "AA" = 0, "AC" = 0, "AG" = 1, "AT" = 0, "C" = 0, "CC" = 0, "CG" = 1, "CT" = 0, "DD" = 0, "DI" = 0, "G" = 1, "GG" = 2, "GT" = 1, "I" = 0, "II" = 0, "T" = 0, "TT" = 0)
    count5a=as.numeric(translate[as.character(df[rownumber, ]$V4)])  # same thing but with column name
    
    count5b=2-count5a
    
    #sixth SNP
    
    rownumber=match('rs4251691',df$V1)#returns the first location of SNP
    
    
    translate <- c("A" = 0, "AA" = 0, "AC" = 1, "AG" = 0, "AT" = 0, "C" = 1, "CC" = 2, "CG" = 1, "CT" = 1, "DD" = 0, "DI" = 0, "G" = 0, "GG" = 0, "GT" = 0, "I" = 0, "II" = 0, "T" = 0, "TT" = 0)
    count6a=as.numeric(translate[as.character(df[rownumber, ]$V4)])  # same thing but with column name
    
    count6b=2-count6a
    
    
    counttotbeneficial=count1a+count2a+count3a+count4a+count5a+count6a
    counttotdetrimental=count1b+count2b+count3b+count4b+count5b+count6b
    counttotbeneficial 
    
    
    
  })
})