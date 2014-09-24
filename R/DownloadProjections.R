# Many thanks to fantasyfootballanalytics.net

#Load libraries
library(XML)

#Download fantasy football projections from FantasyPros.com
qb.projected <- readHTMLTable("http://www.fantasypros.com/nfl/projections/qb.php", stringsAsFactors = FALSE)$data
rb.projected <- readHTMLTable("http://www.fantasypros.com/nfl/projections/rb.php", stringsAsFactors = FALSE)$data
wr.projected <- readHTMLTable("http://www.fantasypros.com/nfl/projections/wr.php", stringsAsFactors = FALSE)$data
te.projected <- readHTMLTable("http://www.fantasypros.com/nfl/projections/te.php", stringsAsFactors = FALSE)$data
k.projected <- readHTMLTable("http://www.fantasypros.com/nfl/projections/k.php", stringsAsFactors = FALSE)$data

save(qb.projected, rb.projected, wr.projected, te.projected, k.projected, 
     file = paste0(getwd(), "/GitHub/FantasyFootball/Data/Projections-", Sys.Date(), ".RData"))