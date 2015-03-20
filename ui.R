# CC-BY Niko Partanen, Freiburg Research Project in Saami Studies / Izhva Komi Language Documentation Project
# Funded by Kone Foundation

library(shiny)

shinyUI(navbarPage("", position = "fixed-bottom",
        tabPanel("Transliteration",
        titlePanel(title = em(h1("Kildin Saami - Skolt Saami transliteration"), 
                              align = "right"), 
                   windowTitle = "Transliteration tool"),
        includeCSS("www/saami_theme.css"),
        
sidebarLayout(
        sidebarPanel(
                HTML('<textarea id="text" rows="10" cols="38"></textarea>'),
                helpText(p("This program converts between Kildin and Skolt Saami orthographies.")),
                
                selectInput("inputText", 
                            label = p("Select input:"),
                            choices = list("Kildin Orthography"),
                            selected = "Kildin Orthography"),
                selectInput("outputModel", 
                            label = p("Select output:"),
                            choices = list("Skolt orthography" = "patterns/skolt_kildin.csv")),
                downloadButton(outputId = "downloadData", label = "Download file")
        ),
        mainPanel(htmlOutput("text"))
)),
        tabPanel("Information",
                p("This web application has been built by the Freiburg Research Group in Saami Studies. We have been using the Shiny web framework for R. The application is a technical test carried out in order to help a collegue who works with Udmurt. The work was done within the", a("Izhva Komi Language Documentation project", style = "color:blue", href = "https://izvakomi.github.io/"), "."),
                p("One can ask what a project that works with the northernmost Komi dialect has to do with very southern Udmurt dialects. However, as the Permic languages are a relatively tight-knit group, the best context to understand these languages may very well be the context of all different variants of the Permic languages, both within Komi and Udmurt."),
                p("Another point to consider is that the", a("open source code", style = "color:blue", href = "https://github.com/izvakomi/transliterate_udm"), "behind this program can be very easily adjusted to any other language with similar issues, namely the need to convert texts from one different transliteration system to another. Currently we are doing this work with our data using project-internal Perl and R scripts, but in principle these models could also be easily added to a web application such as this, if someone would have a project-external need for exactly the same transliteration patterns. The patterns themselves are stored as .csv files in their own folder in the GitHub repository and can be easily modified."),
                p("The project is funded by", a("Kone Foundation", style = "color:blue", href = "http://www.koneensaatio.fi/en/"), "and the project is led by Rogier Blokland, Michael Riessler and Marina Fedina. This application was written by Niko Partanen. (nikotapiopartanen@gmail.com)")
        )
))
