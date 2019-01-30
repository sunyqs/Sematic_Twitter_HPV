###text cleaning
library(tm)
library(readr)
garden_hose_api_scrapped_en_tweets_key_fields <- read_csv("~/Documents/tweet/garden_hose_api_scrapped_en_tweets_key_fields.csv")
names(garden_hose_api_scrapped_en_tweets_key_fields)
time=garden_hose_api_scrapped_en_tweets_key_fields[,c("created_at","retweet_count","text","user_screen_name")]
useful=time[grep("@",time$text),]
tweet09=useful[grep("2009" , useful$created_at),]
tweet09Jul=tweet09[grep("Jul",tweet09$created_at),]
tweet09Aug=tweet09[grep("Aug",tweet09$created_at),]
tweet09Sep=tweet09[grep("Sep",tweet09$created_at),]
tweet09Oct=tweet09[grep("Oct",tweet09$created_at),]
tweet09Nov=tweet09[grep("Nov",tweet09$created_at),]
tweet09Dec=tweet09[grep("Dec",tweet09$created_at),]
timeseries=c(nrow(tweet09Jul),nrow(tweet09Aug),nrow(tweet09Sep),nrow(tweet09Oct),nrow(tweet09Nov),nrow(tweet09Dec))
tweet10=useful[grep("2010" , useful$created_at),]
tweet10Jan=tweet10[grep("Jan",tweet10$created_at),]
tweet10Feb=tweet10[grep("Feb",tweet10$created_at),]
tweet10Mar=tweet10[grep("Mar",tweet10$created_at),]
tweet10Apr=tweet10[grep("Apr",tweet10$created_at),]
tweet10May=tweet10[grep("May",tweet10$created_at),]
tweet10Jun=tweet10[grep("Jun",tweet10$created_at),]
tweet10Jul=tweet10[grep("Jul",tweet10$created_at),]
tweet10Aug=tweet10[grep("Aug",tweet10$created_at),]
tweet10Sep=tweet10[grep("Sep",tweet10$created_at),]
tweet10Oct=tweet10[grep("Oct",tweet10$created_at),]
tweet10Nov=tweet10[grep("Nov",tweet10$created_at),]
tweet10Dec=tweet10[grep("Dec",tweet10$created_at),]
timeseries=c(timeseries,c(nrow(tweet10Jan),nrow(tweet10Feb),nrow(tweet10Mar),nrow(tweet10Apr),nrow(tweet10May),nrow(tweet10Jun),nrow(tweet10Jul),nrow(tweet10Aug),nrow(tweet10Sep),nrow(tweet10Oct),nrow(tweet10Nov),nrow(tweet10Dec)))
tweet11=useful[grep("2011" , useful$created_at),]
tweet11Jan=tweet11[grep("Jan",tweet11$created_at),]
tweet11Feb=tweet11[grep("Feb",tweet11$created_at),]
tweet11Mar=tweet11[grep("Mar",tweet11$created_at),]
tweet11Apr=tweet11[grep("Apr",tweet11$created_at),]
tweet11May=tweet11[grep("May",tweet11$created_at),]
tweet11Jun=tweet11[grep("Jun",tweet11$created_at),]
tweet11Jul=tweet11[grep("Jul",tweet11$created_at),]
tweet11Aug=tweet11[grep("Aug",tweet11$created_at),]
tweet11Sep=tweet11[grep("Sep",tweet11$created_at),]
tweet11Oct=tweet11[grep("Oct",tweet11$created_at),]
tweet11Nov=tweet11[grep("Nov",tweet11$created_at),]
tweet11Dec=tweet11[grep("Dec",tweet11$created_at),]
timeseries=c(timeseries,c(nrow(tweet11Jan),nrow(tweet11Feb),nrow(tweet11Mar),nrow(tweet11Apr),nrow(tweet11May),nrow(tweet11Jun),nrow(tweet11Jul),nrow(tweet11Aug),nrow(tweet11Sep),nrow(tweet11Oct),nrow(tweet11Nov),nrow(tweet11Dec)))
tweet12=useful[grep("2012" , useful$created_at),]
tweet12Jan=tweet12[grep("Jan",tweet12$created_at),]
tweet12Feb=tweet12[grep("Feb",tweet12$created_at),]
tweet12Mar=tweet12[grep("Mar",tweet12$created_at),]
tweet12Apr=tweet12[grep("Apr",tweet12$created_at),]
tweet12May=tweet12[grep("May",tweet12$created_at),]
tweet12Jun=tweet12[grep("Jun",tweet12$created_at),]
tweet12Jul=tweet12[grep("Jul",tweet12$created_at),]
tweet12Aug=tweet12[grep("Aug",tweet12$created_at),]
tweet12Sep=tweet12[grep("Sep",tweet12$created_at),]
tweet12Oct=tweet12[grep("Oct",tweet12$created_at),]
tweet12Nov=tweet12[grep("Nov",tweet12$created_at),]
tweet12Dec=tweet12[grep("Dec",tweet12$created_at),]
timeseries=c(timeseries,c(nrow(tweet12Jan),nrow(tweet12Feb),nrow(tweet12Mar),nrow(tweet12Apr),nrow(tweet12May),nrow(tweet12Jun),nrow(tweet12Jul),nrow(tweet12Aug),nrow(tweet12Sep),nrow(tweet12Oct),nrow(tweet12Nov),nrow(tweet12Dec)))
tweet13=useful[grep("2013" , useful$created_at),]
tweet13Jan=tweet13[grep("Jan",tweet13$created_at),]
tweet13Feb=tweet13[grep("Feb",tweet13$created_at),]
tweet13Mar=tweet13[grep("Mar",tweet13$created_at),]
tweet13Apr=tweet13[grep("Apr",tweet13$created_at),]
tweet13May=tweet13[grep("May",tweet13$created_at),]
tweet13Jun=tweet13[grep("Jun",tweet13$created_at),]
tweet13Jul=tweet13[grep("Jul",tweet13$created_at),]
tweet13Aug=tweet13[grep("Aug",tweet13$created_at),]
tweet13Sep=tweet13[grep("Sep",tweet13$created_at),]
tweet13Oct=tweet13[grep("Oct",tweet13$created_at),]
tweet13Nov=tweet13[grep("Nov",tweet13$created_at),]
tweet13Dec=tweet13[grep("Dec",tweet13$created_at),]
timeseries=c(timeseries,c(nrow(tweet13Jan),nrow(tweet13Feb),nrow(tweet13Mar),nrow(tweet13Apr),nrow(tweet13May),nrow(tweet13Jun),nrow(tweet13Jul),nrow(tweet13Aug),nrow(tweet13Sep),nrow(tweet13Oct),nrow(tweet13Nov),nrow(tweet13Dec)))
tweet14=useful[grep("2014" , useful$created_at),]
tweet14Jan=tweet14[grep("Jan",tweet14$created_at),]
tweet14Feb=tweet14[grep("Feb",tweet14$created_at),]
tweet14Mar=tweet14[grep("Mar",tweet14$created_at),]
tweet14Apr=tweet14[grep("Apr",tweet14$created_at),]
tweet14May=tweet14[grep("May",tweet14$created_at),]
tweet14Jun=tweet14[grep("Jun",tweet14$created_at),]
tweet14Jul=tweet14[grep("Jul",tweet14$created_at),]
tweet14Aug=tweet14[grep("Aug",tweet14$created_at),]
tweet14Sep=tweet14[grep("Sep",tweet14$created_at),]
tweet14Oct=tweet14[grep("Oct",tweet14$created_at),]
tweet14Nov=tweet14[grep("Nov",tweet14$created_at),]
tweet14Dec=tweet14[grep("Dec",tweet14$created_at),]
timeseries=c(timeseries,c(nrow(tweet14Jan),nrow(tweet14Feb),nrow(tweet14Mar),nrow(tweet14Apr),nrow(tweet14May),nrow(tweet14Jun),nrow(tweet14Jul),nrow(tweet14Aug),nrow(tweet14Sep),nrow(tweet14Oct),nrow(tweet14Nov),nrow(tweet14Dec)))
tweet15=useful[grep("2015" , useful$created_at),]
tweet15Jan=tweet15[grep("Jan",tweet15$created_at),]
tweet15Feb=tweet15[grep("Feb",tweet15$created_at),]
timeseries=c(timeseries,c(nrow(tweet15Jan),nrow(tweet15Feb)))
timeseries=ts(timeseries, frequency=12, start=c(2009,7))
timeseries
plot(timeseries)

#library(ROAuth)
#twitter mining
# table(time$retweet_count)
#selected <- which(time$retweet_count >= 9)
#dates <- strptime(time$created_at,format="%Y-%m-%d")
#plot(time$retweet_count, type="l", col="grey",xlab="Date", ylab="Times retweeted")
#colors <- rainbow(10)[1:length(selected)]
#points(time$created_at[selected],time$retweet_count[selected],pch=19, col=colors)
#text(time$created_at[selected], time$retweet_count[selected],time$text[selected], col=colors, cex=.9)

try=sub(".*@"," ",useful$text )
try=sub(" ","@",try)
del=try[grep("@ ",try)]
diff=!(try %in% del)
rownum=which(diff=="FALSE")
useful=useful[-c(which(diff=="FALSE")),]
try=try[!(try %in% del)]
try=sub(" .*"," ",try)
try=sub("@","",try)
try=sub(" ","",try)
try=sub(":","", try)
try=sub(")","", try)
#try1=sub("",NA, try)

#RT @
rtuseful=time[grep("RT @",time$text),]
rttweet09=rtuseful[grep("2009" , rtuseful$created_at),]
rttweet09Jul=rttweet09[grep("Jul",rttweet09$created_at),]
rttweet09Aug=rttweet09[grep("Aug",rttweet09$created_at),]
rttweet09Sep=rttweet09[grep("Sep",rttweet09$created_at),]
rttweet09Oct=rttweet09[grep("Oct",rttweet09$created_at),]
rttweet09Nov=rttweet09[grep("Nov",rttweet09$created_at),]
rttweet09Dec=rttweet09[grep("Dec",rttweet09$created_at),]
rttimeseries=c(nrow(rttweet09Jul),nrow(rttweet09Aug),nrow(rttweet09Sep),nrow(rttweet09Oct),nrow(rttweet09Nov),nrow(rttweet09Dec))
rttweet10=useful[grep("2010" , rtuseful$created_at),]
rttweet10Jan=rttweet10[grep("Jan",rttweet10$created_at),]
rttweet10Feb=rttweet10[grep("Feb",rttweet10$created_at),]
rttweet10Mar=rttweet10[grep("Mar",rttweet10$created_at),]
rttweet10Apr=rttweet10[grep("Apr",rttweet10$created_at),]
rttweet10May=rttweet10[grep("May",rttweet10$created_at),]
rttweet10Jun=rttweet10[grep("Jun",rttweet10$created_at),]
rttweet10Jul=rttweet10[grep("Jul",rttweet10$created_at),]
rttweet10Aug=rttweet10[grep("Aug",rttweet10$created_at),]
rttweet10Sep=rttweet10[grep("Sep",rttweet10$created_at),]
rttweet10Oct=rttweet10[grep("Oct",rttweet10$created_at),]
rttweet10Nov=rttweet10[grep("Nov",rttweet10$created_at),]
rttweet10Dec=rttweet10[grep("Dec",rttweet10$created_at),]
rttimeseries=c(rttimeseries,c(nrow(rttweet10Jan),nrow(rttweet10Feb),nrow(rttweet10Mar),nrow(rttweet10Apr),nrow(rttweet10May),nrow(rttweet10Jun),nrow(rttweet10Jul),nrow(rttweet10Aug),nrow(rttweet10Sep),nrow(rttweet10Oct),nrow(rttweet10Nov),nrow(rttweet10Dec)))
rttweet11=useful[grep("2011" , rtuseful$created_at),]
rttweet11Jan=rttweet11[grep("Jan",rttweet11$created_at),]
rttweet11Feb=rttweet11[grep("Feb",rttweet11$created_at),]
rttweet11Mar=rttweet11[grep("Mar",rttweet11$created_at),]
rttweet11Apr=rttweet11[grep("Apr",rttweet11$created_at),]
rttweet11May=rttweet11[grep("May",rttweet11$created_at),]
rttweet11Jun=rttweet11[grep("Jun",rttweet11$created_at),]
rttweet11Jul=rttweet11[grep("Jul",rttweet11$created_at),]
rttweet11Aug=rttweet11[grep("Aug",rttweet11$created_at),]
rttweet11Sep=rttweet11[grep("Sep",rttweet11$created_at),]
rttweet11Oct=rttweet11[grep("Oct",rttweet11$created_at),]
rttweet11Nov=rttweet11[grep("Nov",rttweet11$created_at),]
rttweet11Dec=rttweet11[grep("Dec",rttweet11$created_at),]
rttimeseries=c(rttimeseries,c(nrow(rttweet11Jan),nrow(rttweet11Feb),nrow(rttweet11Mar),nrow(rttweet11Apr),nrow(rttweet11May),nrow(rttweet11Jun),nrow(rttweet11Jul),nrow(rttweet11Aug),nrow(rttweet11Sep),nrow(rttweet11Oct),nrow(rttweet11Nov),nrow(rttweet11Dec)))
rttweet12=rtuseful[grep("2012" , rtuseful$created_at),]
rttweet12Jan=rttweet12[grep("Jan",rttweet12$created_at),]
rttweet12Feb=rttweet12[grep("Feb",rttweet12$created_at),]
rttweet12Mar=rttweet12[grep("Mar",rttweet12$created_at),]
rttweet12Apr=rttweet12[grep("Apr",rttweet12$created_at),]
rttweet12May=rttweet12[grep("May",rttweet12$created_at),]
rttweet12Jun=rttweet12[grep("Jun",rttweet12$created_at),]
rttweet12Jul=rttweet12[grep("Jul",rttweet12$created_at),]
rttweet12Aug=rttweet12[grep("Aug",rttweet12$created_at),]
rttweet12Sep=rttweet12[grep("Sep",rttweet12$created_at),]
rttweet12Oct=rttweet12[grep("Oct",rttweet12$created_at),]
rttweet12Nov=rttweet12[grep("Nov",rttweet12$created_at),]
rttweet12Dec=rttweet12[grep("Dec",rttweet12$created_at),]
rttimeseries=c(rttimeseries,c(nrow(rttweet12Jan),nrow(rttweet12Feb),nrow(rttweet12Mar),nrow(rttweet12Apr),nrow(rttweet12May),nrow(rttweet12Jun),nrow(rttweet12Jul),nrow(rttweet12Aug),nrow(rttweet12Sep),nrow(rttweet12Oct),nrow(rttweet12Nov),nrow(rttweet12Dec)))
rttweet13=rtuseful[grep("2013" , rtuseful$created_at),]
rttweet13Jan=rttweet13[grep("Jan",rttweet13$created_at),]
rttweet13Feb=rttweet13[grep("Feb",rttweet13$created_at),]
rttweet13Mar=rttweet13[grep("Mar",rttweet13$created_at),]
rttweet13Apr=rttweet13[grep("Apr",rttweet13$created_at),]
rttweet13May=rttweet13[grep("May",rttweet13$created_at),]
rttweet13Jun=rttweet13[grep("Jun",rttweet13$created_at),]
rttweet13Jul=rttweet13[grep("Jul",rttweet13$created_at),]
rttweet13Aug=rttweet13[grep("Aug",rttweet13$created_at),]
rttweet13Sep=rttweet13[grep("Sep",rttweet13$created_at),]
rttweet13Oct=rttweet13[grep("Oct",rttweet13$created_at),]
rttweet13Nov=rttweet13[grep("Nov",rttweet13$created_at),]
rttweet13Dec=rttweet13[grep("Dec",rttweet13$created_at),]
rttimeseries=c(rttimeseries,c(nrow(rttweet13Jan),nrow(rttweet13Feb),nrow(rttweet13Mar),nrow(rttweet13Apr),nrow(rttweet13May),nrow(rttweet13Jun),nrow(rttweet13Jul),nrow(rttweet13Aug),nrow(rttweet13Sep),nrow(rttweet13Oct),nrow(rttweet13Nov),nrow(rttweet13Dec)))
rttweet14=rtuseful[grep("2014" , rtuseful$created_at),]
rttweet14Jan=rttweet14[grep("Jan",rttweet14$created_at),]
rttweet14Feb=rttweet14[grep("Feb",rttweet14$created_at),]
rttweet14Mar=rttweet14[grep("Mar",rttweet14$created_at),]
rttweet14Apr=rttweet14[grep("Apr",rttweet14$created_at),]
rttweet14May=rttweet14[grep("May",rttweet14$created_at),]
rttweet14Jun=rttweet14[grep("Jun",rttweet14$created_at),]
rttweet14Jul=rttweet14[grep("Jul",rttweet14$created_at),]
rttweet14Aug=rttweet14[grep("Aug",rttweet14$created_at),]
rttweet14Sep=rttweet14[grep("Sep",rttweet14$created_at),]
rttweet14Oct=rttweet14[grep("Oct",rttweet14$created_at),]
rttweet14Nov=rttweet14[grep("Nov",rttweet14$created_at),]
rttweet14Dec=rttweet14[grep("Dec",rttweet14$created_at),]
rttimeseries=c(rttimeseries,c(nrow(rttweet14Jan),nrow(rttweet14Feb),nrow(rttweet14Mar),nrow(rttweet14Apr),nrow(rttweet14May),nrow(rttweet14Jun),nrow(rttweet14Jul),nrow(rttweet14Aug),nrow(rttweet14Sep),nrow(rttweet14Oct),nrow(rttweet14Nov),nrow(rttweet14Dec)))
rttweet15=rtuseful[grep("2015" , rtuseful$created_at),]
rttweet15Jan=rttweet15[grep("Jan",rttweet15$created_at),]
rttweet15Feb=rttweet15[grep("Feb",rttweet15$created_at),]
rttimeseries=c(rttimeseries,c(nrow(rttweet15Jan),nrow(rttweet15Feb)))
rttimeseries=ts(rttimeseries, frequency=12, start=c(2009,7))
rttimeseries
plot(rttimeseries)

rttry=sub(".*RT @"," ",rtuseful$text )
rttry=sub(" ","@",rttry)
rtdel=rttry[grep("@ ",rttry)]
rtdiff=!(rttry %in% rtdel)
rtuseful=rtuseful[-c(which(rtdiff=="FALSE")),]
rttry=rttry[!(rttry %in% rtdel)]
rttry=sub(" .*"," ",rttry)
rttry=sub("@","",rttry)
rttry=sub(" ","",rttry)
rttry=sub(":","", rttry)
rttry=sub(")","", rttry)

#network
library(igraph)
nodes=data.frame(useful$user_screen_name, try)
names(nodes)=c("outgoing","incoming")
network=graph.data.frame(d=nodes[1:2],directed=T)
net=simplify(network,remove.loops = T, remove.multiple = T )
plot(net,vertex.size=1,vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1, edge.attrbutes)

#retweet network
rtnodes=data.frame(rtuseful$user_screen_name, rttry)
names(rtnodes)=c("outgoing","incoming")
rtnetwork=graph.data.frame(d=rtnodes[1:2],directed=F)
rtnet=simplify(rtnetwork,remove.loops = T, remove.multiple = T )
plot(rtnet,vertex.size=1,vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

rtc=clusters(rtnet)
rtorder=max(rtc$csize)
which(rtc$csize==max(rtc$csize))
v=which(rtc$membership==5)
rtslc=subgraph(rtnet,v)
plot(rtslc,vertex.size=4,vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.width=.5)


names(nodes)=c("source","target")
nodes=na.omit(nodes)
nodes[36,2]
write.csv(nodes,file="nodes.cvs",row.names=F)

try09=sub(".*@"," ",tweet09$text )
try09=sub(" ","@",try09)
try09=sub(" .*"," ",try09)
try09=sub("@","",try09)
try09=sub(" ","",try09)

nodes09=data.frame(tweet09$user_screen_name,try09)
network09=graph.data.frame(d=nodes09[1:2],directed=T)
net09=simplify(network09,remove.loops = T, remove.multiple = T )
plot(net09,vertex.size=3,vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)


try10=sub(".*@"," ",tweet10$text )
try10=sub(" ","@",try10)
try10=sub(" .*"," ",try10)
try10=sub("@","",try10)
try10=sub(" ","",try10)

nodes10=data.frame(tweet10$user_screen_name,try10)
network10=graph.data.frame(d=nodes10[1:2],directed=T)
net10=simplify(network10,remove.loops = T, remove.multiple = T )
plot(net10,vertex.size=3, vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

#retweet network 2010
rttry10=sub(".*RT @"," ",rttweet10$text )
rttry10=sub(" ","@",rttry10)
rtdel10=rttry10[grep("@ ",rttry10)]
rtdiff10=!(rttry10 %in% rtdel10)
rttweet10=rttweet10[-c(which(rtdiff10=="FALSE")),]
rttry10=rttry10[!(rttry10 %in% rtdel10)]
rttry10=sub(" .*"," ",rttry10)
rttry10=sub("@","",rttry10)
rttry10=sub(" ","",rttry10)
rttry10=sub(":","",rttry10)
rttry10=sub(")","",rttry10)

rtnodes10=data.frame(rttweet10$user_screen_name,rttry10)
rtnetwork10=graph.data.frame(d=rtnodes10[1:2],directed =F)
rtnet10=simplify(rtnetwork10,remove.loops = T, remove.multiple = T )
plot(rtnet10,vertex.size=3, vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.width=1)

#retweet network 2010Dec
rttry10Dec=sub(".*RT @"," ",rttweet10Dec$text )
rttry10Dec=sub(" ","@",rttry10Dec)
rtdel10Dec=rttry10Dec[grep("@ ",rttry10Dec)]
rtdiff10Dec=!(rttry10Dec %in% rtdel10Dec)
rttweet10Dec=rttweet10Dec[-c(which(rtdiff10Dec=="FALSE")),]
rttry10Dec=rttry10Dec[!(rttry10Dec %in% rtdel10Dec)]
rttry10Dec=sub(" .*"," ",rttry10Dec)
rttry10Dec=sub("@","",rttry10Dec)
rttry10Dec=sub(" ","",rttry10Dec)
rttry10Dec=sub(":","",rttry10Dec)
rttry10Dec=sub(")","",rttry10Dec)

rtnodes10Dec=data.frame(rttweet10Dec$user_screen_name,rttry10Dec)
rtnetwork10Dec=graph.data.frame(d=rtnodes10Dec[1:2],directed =F)
rtnet10Dec=simplify(rtnetwork10Dec,remove.loops = T, remove.multiple = T )
plot(rtnet10Dec,vertex.size=3, vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.width=1)


try11=sub(".*@"," ",tweet11$text )
try11=sub(" ","@",try11)
try11=sub(" .*"," ",try11)
try11=sub("@","",try11)
try11=sub(" ","",try11)

nodes11=data.frame(tweet11$user_screen_name,try11)
network11=graph.data.frame(d=nodes11[1:2],directed=T)
net11=simplify(network11,remove.loops = T, remove.multiple = T )
plot(net11,vertex.size=3,vertex.color=c( "pink", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

try12=sub(".*@"," ",tweet12$text )
try12=sub(" ","@",try12)
try12=sub(" .*"," ",try12)
try12=sub("@","",try12)
try12=sub(" ","",try12)

nodes12=data.frame(tweet12$user_screen_name,try12)
network12=graph.data.frame(d=nodes12[1:2],directed=T)
net12=simplify(network12,remove.loops = T, remove.multiple = T )
plot(net12,vertex.size=1,vertex.color=c( "pink", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

try13=sub(".*@"," ",tweet13$text )
try13=sub(" ","@",try13)
try13=sub(" .*"," ",try13)
try13=sub("@","",try13)
try13=sub(" ","",try13)

nodes13=data.frame(tweet13$user_screen_name,try13)
network13=graph.data.frame(d=nodes13[1:2],directed=T)
net13=simplify(network13,remove.loops = T, remove.multiple = T )
plot(net13,vertex.size=3,vertex.color=c( "pink", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

try14=sub(".*@"," ",tweet14$text )
try14=sub(" ","@",try14)
try14=sub(" .*"," ",try14)
try14=sub("@","",try14)
try14=sub(" ","",try14)

nodes14=data.frame(tweet14$user_screen_name,try14)
network14=graph.data.frame(d=nodes14[1:2],directed=T)
net14=simplify(network14,remove.loops = T, remove.multiple = T )
plot(net14,vertex.size=1,vertex.color=c( "pink", "skyblue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

try15=sub(".*@"," ",tweet15$text )
try15=sub(" ","@",try15)
try15=sub(" .*"," ",try15)
try15=sub("@","",try15)
try15=sub(" ","",try15)

nodes15=data.frame(tweet15$user_screen_name,try15)
network15=graph.data.frame(d=nodes15[1:2],directed=T)
net15=simplify(network15,remove.loops = T, remove.multiple = T )
plot(net10,vertex.size=3,vertex.color=c( "pink", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

try09Jul=sub(".*@"," ",tweet09Jul$text )
try09Jul=sub(" ","@",try09Jul)
try09Jul=sub(" .*"," ",try09Jul)
try09Jul=sub("@","",try09Jul)
try09Jul=sub(" ","",try09Jul)

nodes09Jul=data.frame(tweet09Jul$user_screen_name,try09Jul)
network09Jul=graph.data.frame(d=nodes09Jul[1:2],directed=T)
net09Jul=simplify(network09Jul,remove.loops = T, remove.multiple = T )
plot(net09Jul,vertex.size=3,vertex.color=c( "pink", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

try09Aug=sub(".*@"," ",tweet09Aug$text )
try09Aug=sub(" ","@",try09Aug)
try09Aug=sub(" .*"," ",try09Aug)
try09Aug=sub("@","",try09Aug)
try09Aug=sub(" ","",try09Aug)

nodes09Aug=data.frame(tweet09Aug$user_screen_name,try09Aug)
network09Aug=graph.data.frame(d=nodes09Aug[1:2],directed=T)
net09Aug=simplify(network09Aug,remove.loops = T, remove.multiple = T )
plot(net09Aug,vertex.size=3,vertex.color=c( "pink", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)

try13Aug=sub(".*@"," ",tweet13Aug$text )
try13Aug=sub(" ","@",try13Aug)
try13Aug=sub(" .*"," ",try13Aug)
try13Aug=sub("@","",try13Aug)
try13Aug=sub(" ","",try13Aug)

nodes13Aug=data.frame(tweet13Aug$user_screen_name,try13Aug)
network13Aug=graph.data.frame(d=nodes13Aug[1:2],directed=T)
net13Aug=simplify(network13Aug,remove.loops = T, remove.multiple = T )
plot(net13Aug,vertex.size=3,vertex.color=c( "pink", "blue"), vertex.label=NA, edge.curved=.1,edge.arrow.size=.1)


# user type
numberver=which(garden_hose_api_scrapped_en_tweets_key_fields$original_user_verified=="TRUE")
verifieduser=garden_hose_api_scrapped_en_tweets_key_fields[c(which(garden_hose_api_scrapped_en_tweets_key_fields$original_user_verified=="TRUE")),]
usefulver=verifieduser[grep("@",verifieduser$text),]
usefulversim=usefulver[,c("created_at","retweet_count","text","user_screen_name")]
vertry=sub(".*@"," ",usefulversim$text )
vertry=sub(" ","@",vertry)
verdel=vertry[grep("@ ",vertry)]
verdiff=!(vertry %in% verdel)
usefulver=usefulver[-c(which(verdiff=="FALSE")),]
vertry=vertry[!(vertry %in% verdel)]
vertry=sub(" .*"," ",vertry)
vertry=sub("@","",vertry)
vertry=sub(" ","",vertry)
vertry=sub(":","", vertry)
vertry=sub(")","", vertry)

vernodes=data.frame(usefulver$user_screen_name, vertry)
names(vernodes)=c("outgoing","incoming")
vernetwork=graph.data.frame(d=vernodes[1:2],directed=F)
vernet=simplify(vernetwork,remove.loops = T, remove.multiple = T )
plot(vernet,vertex.size=1,vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.width=.5)

verc=clusters(vernet)
order=max(verc$csize)
which(verc$csize==max(verc$csize))
v=which(verc$membership==1)
slc=subgraph(vernet,v)
plot(slc,vertex.size=4,vertex.color=c( "red", "blue"), vertex.label=NA, edge.curved=.1,edge.width=.5)

# Semantic
time10=time[grep("2010" , time$created_at),]
time11=time[grep("2011" , time$created_at),]
time12=time[grep("2012" , time$created_at),]
time13=time[grep("2013" , time$created_at),]
time14=time[grep("2014" , time$created_at),]
time15=time[grep("2015" , time$created_at),]

library(SnowballC)

#For 2010
text10=VectorSource(time10$text)
text10=Corpus(text10)
text10=tm_map(text10, content_transformer(function(x) iconv(enc2utf8(x), sub = "byte")))
text10=tm_map(text10, tolower)
# remove punctuation
text10=tm_map(text10, removePunctuation)
# remove numbers
text10=tm_map(text10,removeNumbers)
# remove URL
removeURL=function(x) gsub("http[[:alnum:]]*", "", x)
text10=tm_map(text10, removeURL)
# remove stopwords
text10=tm_map(text10,removeWords,stopwords(kind="en"))
#stemming words
text10=tm_map(text10, stemDocument)
text10=tm_map(text10, stripWhitespace)
#prepoccess
text10=tm_map(text10, PlainTextDocument) 
#Document-Term Matrix
dtm10=DocumentTermMatrix(text10)
#Matrix
tdm10=TermDocumentMatrix((text10))
#frequency and order
#freq10=colSums(as.matrix(dtm10))
#ord10=order(freq10)
#frequent term and association
fterm10=findFreqTerms(dtm10, lowfreq=100)
findAssocs(dtm10, 'hpv', 0.10)
#wordcloud
library(RColorBrewer)
library(wordcloud)
m10=as.matrix(dtm10)
# calculate the frequency of words
v10=sort(colSums(m10), decreasing=TRUE)
names10=names(v10)
d10=data.frame(word=names10, freq=v10)
wordcloud(d10$word,d10$freq, min.freq=100, max.words=100, scale=c(3,0.45),colors=brewer.pal(6, "Dark2") )

#For 2011
text11=VectorSource(time11$text)
text11=Corpus(text11)
text11=tm_map(text11, content_transformer(function(x) iconv(enc2utf8(x), sub = "byte")))
text11=tm_map(text11, tolower)
# remove punctuation
text11=tm_map(text11, removePunctuation)
# remove numbers
text11=tm_map(text11,removeNumbers)
# remove stopwords
text11=tm_map(text11,removeWords,stopwords("english"))
#stemming words
text11=tm_map(text11, stemDocument)
text11=tm_map(text11, stripWhitespace)
#prepoccess
text11=tm_map(text11, PlainTextDocument) 
#Document-Term Matrix
dtm11=DocumentTermMatrix(text11)
#Term-Document Matrix
tdm11=TermDocumentMatrix((text11))
#frequent term and association
fterm11=findFreqTerms(dtm11, lowfreq=100)
findAssocs(dtm11, 'hpv', 0.10)
#wordcloud
m11=as.matrix(dtm11)
# calculate the frequency of words
v11=sort(colSums(m11), decreasing=TRUE)
names11=names(v11)
d11=data.frame(word=names11, freq=v11)
wordcloud(d11$word,d11$freq, min.freq=100, max.words = 100, scale=c(3,0.45),colors=brewer.pal(6, "Dark2") )

#For 2012
text12=VectorSource(time12$text)
text12=Corpus(text12)
text12=tm_map(text12, content_transformer(function(x) iconv(enc2utf8(x), sub = "byte")))
text12=tm_map(text12, tolower)
# remove punctuation
text12=tm_map(text12, removePunctuation)
# remove numbers
text12=tm_map(text12,removeNumbers)
# remove stopwords
text12=tm_map(text12,removeWords,stopwords("english"))
#stemming words
text12=tm_map(text12, stemDocument)
text12=tm_map(text12, stripWhitespace)
#prepoccess
text12=tm_map(text12, PlainTextDocument) 
#Document-Term Matrix
dtm12=DocumentTermMatrix(text12)
#Term-Document Matrix
tdm12=TermDocumentMatrix((text12))
#frequent term and association
fterm12=findFreqTerms(dtm12, lowfreq=100)
findAssocs(dtm12, 'hpv', 0.10)
#wordcloud
m12=as.matrix(dtm12)
# calculate the frequency of words
v12=sort(colSums(m12), decreasing=TRUE)
names12=names(v12)
d12=data.frame(word=names12, freq=v12)
wordcloud(d12$word,d12$freq, min.freq=100, max.words = 100, scale=c(3,0.45), colors=brewer.pal(6, "Dark2"))

#For 2013
text13=VectorSource(time13$text)
text13=Corpus(text13)
text13=tm_map(text13, content_transformer(function(x) iconv(enc2utf8(x), sub = "byte")))
text13=tm_map(text13, tolower)
# remove punctuation
text13=tm_map(text13, removePunctuation)
# remove numbers
text13=tm_map(text13,removeNumbers)
# remove stopwords
text13=tm_map(text13,removeWords,stopwords("english"))
#stemming words
text13=tm_map(text13, stemDocument)
text13=tm_map(text13, stripWhitespace)
#prepoccess
text13=tm_map(text13, PlainTextDocument) 
#Document-Term Matrix
dtm13=DocumentTermMatrix(text13)
#Term-Document Matrix
tdm13=TermDocumentMatrix((text13))
#frequent term and association
fterm13=findFreqTerms(dtm13, lowfreq=100)
findAssocs(dtm13, 'hpv', 0.10)
#wordcloud
m13=as.matrix(dtm13)
# calculate the frequency of words
v13=sort(colSums(m13), decreasing=TRUE)
names13=names(v13)
d13=data.frame(word=names13, freq=v13)
wordcloud(d13$word,d13$freq,max.words = 100, min.freq=100, scale=c(3, 0.45),colors=brewer.pal(6, "Dark2"))

#For 2014
text14=VectorSource(time14$text)
text14=Corpus(text14)
text14=tm_map(text14, content_transformer(function(x) iconv(enc2utf8(x), sub = "byte")))
text14=tm_map(text14, tolower)
# remove punctuation
text14=tm_map(text14, removePunctuation)
# remove numbers
text14=tm_map(text14,removeNumbers)
# remove stopwords
text14=tm_map(text14,removeWords,stopwords("english"))
#stemming words
text14=tm_map(text14, stemDocument)
text14=tm_map(text14, stripWhitespace)
#prepoccess
text14=tm_map(text14, PlainTextDocument) 
#Document-Term Matrix
dtm14=DocumentTermMatrix(text14)
#Term-Document Matrix
tdm14=TermDocumentMatrix((text14))
#frequent term and association
fterm14=findFreqTerms(dtm14, lowfreq=100)
findAssocs(dtm14, 'hpv', 0.10)
#wordcloud
m14=as.matrix(dtm14)
# calculate the frequency of words
v14=sort(colSums(m14), decreasing=TRUE)
names14=names(v14)
d14=data.frame(word=names14, freq=v14)
wordcloud(d14$word,d14$freq, min.freq=100, scale=c(3,0.4), max.words = 100, colors=brewer.pal(6, "Dark2"))
