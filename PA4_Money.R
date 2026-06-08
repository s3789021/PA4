# PA4_Money.R
# Caleb Money
# 6/7/2026
# write script that reproduces steps 1-10 from textbook section 7.3

# define x and y vectors for plot
x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
       -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)
# Step 1: create empty plotting region
plot(x,y,type="n",main="")
# Step 2: make double horizontal lines
abline(h=c(-5,5),col="red",lty=2,lwd=2)
# Step 3: add shorter vert lines
segments(x0=c(5,15),y0=c(-5,-5),x1=c(5,15),y1=c(5,5),col="red",lty=3,
         lwd=2)
# Step 4: add positive coords from x and y, magenta color
points(x[y>=5],y[y>=5],pch=4,col="darkmagenta",cex=2)
# Step 5: add coords where y<+-5
points(x[y<=-5],y[y<=-5],pch=3,col="darkgreen",cex=2)
# Step 6: add blue "sweet spot" points
points(x[(x>=5&x<=15)&(y>-5&y<5)],y[(x>=5&x<=15)&(y>-5&y<5)],pch=19,
       col="blue")
# Step 7: identify remaining points in data set (with x<5 OR >15, -5<y<15)
points(x[(x<5|x>15)&(y>-5&y<5)],y[(x<5|x>15)&(y>-5&y<5)])
# Step 8: draw lines connecting coords in x and y (dash-dot-dash style)
lines(x,y,lty=4)
# Step 9: add arrow pointing to sweet spot
arrows(x0=8,y0=14,x1=11,y1=2.5)
# Step 10: print label at top of arrow
text(x=8,y=15,labels="sweet spot")
# Finally, add legend
legend("bottomleft",
       legend=c("overall process","sweet","standard",
                "too big","too small","sweet y range","sweet x range"),
       pch=c(NA,19,1,4,3,NA,NA),lty=c(4,NA,NA,NA,NA,2,3),
       col=c("black","blue","black","darkmagenta","darkgreen","red","red"),
       lwd=c(1,NA,NA,NA,NA,2,2),pt.cex=c(NA,1,1,2,2,NA,NA))