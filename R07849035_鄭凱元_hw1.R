#練習1：畫出自由度為1的卡方分布之機率密度函數及累積分布函數 (cumulative distribution function, c.d.f.)

x <- seq(0, 10, 0.01) # 卡方分布皆大於0
plot(x, dchisq(x, 1)) # pdf
plot(x, pchisq(x, 1)) # cdf

#練習2：迴歸分析需作檢定時，若觀察到的F檢定統計量為 3.2 (右尾檢定)，已知檢定統計量在H0之下服從F分子自由度為3分母自由度為194的分布，試求其p-value?  請畫出此F分布的pdf與cdf.

pf(3.2, 3, 194, lower = F ) # lower = F 可以查看右尾累積機率

x <- seq(0, 10, 0.01)  # F分布皆大於0
plot(x, df(x, 3, 194)) # pdf
plot(x, pf(x, 3, 194)) # cdf

#練習3：迴歸分析需作檢定時，若觀察到的t檢定統計量為 -2.08 (雙尾檢定)，已知檢定統計量在H0之下服從t自由度為136的分布，試求其p-value?

pt(-2.08, 136)*2 # 雙尾所以乘以2

#作業:若觀察到的t檢定統計量為 2.45 時 (雙尾檢定)，其p-value為何?  請畫出此t分布的pdf與cdf.

pt(2.45, 136, lower = F)*2 # p-value

x <- seq(-3, 3, 0.01)
plot(x, dt(x, 136), main = "pdf of t-distrbution with df = 136") # pdf
plot(x, pt(x, 136), main = "cdf of t-distrbution with df = 136") # cdf

