# transliterate_saami
This is a tool that basically mirrors transliterate_udm, but is adjusted to Kildin Saami - Skolt Saami pair. Currently very much under development.

Certainly easiest to run with command:

shiny::runGitHub('transliterate_udm', 'izvakomi')

However, you may need to install some packages, maybe at least:

    install.packages("plyr")
    install.packages("dplyr")
    install.packages("shiny")
    install.packages("markdown")
    install.packages("devtools")

Technical side of this app is being developed and maintained by Niko Partanen, the development of the transliteration patterns for this language pair is led by Michael Rießler.
