# transliterate_saami
This is a tool that basically mirrors transliterate_udm, but is adjusted to Kildin Saami - Skolt Saami pair. Currently very much under development.

Certainly easiest to run with command:

    shiny::runGitHub('transliterate_saami', 'izvakomi')

However, you may need to install some packages, maybe at least:

    install.packages("plyr")
    install.packages("dplyr")
    install.packages("shiny")
    install.packages("markdown")
    install.packages("devtools")

And running it from GitHub doesn't exactly work as it should... Same problem occurs also when running the app in browser. It should work at least this way:

    git clone https://github.com/izvakomi/transliterate_saami/

Open transliterate.Rproj file in RStudio.

Open ui.R or server.R file.

Press Run App button.

Of course one can also open the pattern CSV file locally on the computer and modify it there. Running app again makes it update information from that file.

Technical side of this app is being developed and maintained by Niko Partanen, the development of the transliteration patterns for this language pair is led by Michael Rießler.
