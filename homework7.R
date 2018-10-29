marvel = read.csv('F:\\UIUC\\590DV\\homework7\\marvel-wikia-data.csv',header = TRUE, stringsAsFactors = FALSE)
dc = read.csv('F:\\UIUC\\590DV\\homework7\\dc-wikia-data.csv',header = TRUE, stringsAsFactors = FALSE)
mg = length(marvel$ALIGN[which(marvel$ALIGN=='Good Characters')])
mb = length(marvel$ALIGN[which(marvel$ALIGN=='Bad Characters')])
mn = length(marvel$ALIGN[which(marvel$ALIGN=='Neutral Characters')])
dg = length(dc$ALIGN[which(dc$ALIGN=='Good Characters')])
db = length(dc$ALIGN[which(dc$ALIGN=='Bad Characters')])
dn = length(dc$ALIGN[which(dc$ALIGN=='Neutral Characters')])
dt = length(dc$ALIGN[which(dc$ALIGN=='Reformed Criminals')])
md = data.frame(m = c(mg,mb,mn,mt = c(0)),d = c(dg,db,dn,dt),stringsAsFactors = FALSE)
a = c(sum(md$m),sum(md$d))
count1= matrix(a,nrow = 1,ncol = 2 )
barplot(count1,
        col = c('lightblue','darkgreen'),
        main = 'Characters in Marvel and DC',
        xlab = 'Company',ylab = 'Number',beside = TRUE,names.arg = c('Marvel','DC'),legend.text = c('MARVEL','DC'))
b = c(md$m,md$d)
counts = matrix(b,nrow = 4,ncol = 2 )
barplot(counts,
        col = c('red','yellow','green','blue'),
        main = 'Characters in Marvel and DC',
        xlab = 'Company',ylab = 'Number',beside = TRUE,names.arg = c('Marvel','DC'),legend.text = c('GOOD','BAD','NEUTRAL','Reformed'),width = 0.01)
d = c(mb/mg,db/dg)
barplot(d,
        col = c('lightblue','darkgreen'),
        main = 'Characters in Marvel and DC',
        xlab = 'Company',ylab = 'One Good take down Bad',beside = TRUE,names.arg = c('Marvel','DC'),legend.text = c('MARVEL','DC'),width = 0.1)
