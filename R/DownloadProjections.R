


dk.salaries$Proj[match(qb.projected$Player, dk.salaries$Name)] <- qb.projected$FPTS

df <- merge(dk.salaries, qb.projected[, c("Player", "FPTS")], by.x = "Name", by.y = "Player", all.x = TRUE)
df <- merge(df, rb.projected[, c("Player", "FPTS")], by.x = "Name", by.y = "Player", all.x = TRUE)
df <- merge(df, wr.projected[, c("Player", "FPTS")], by.x = "Name", by.y = "Player", all.x = TRUE)
df <- merge(df, te.projected[, c("Player", "FPTS")], by.x = "Name", by.y = "Player", all.x = TRUE)
df <- merge(df, k.projected[, c("Player", "FPTS")], by.x = "Name", by.y = "Player", all.x = TRUE)
