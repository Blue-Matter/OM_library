
library(DLMtool)
setup()

ATF_OM<-iSCAM2DLM(iSCAMdir="E:/DFODLM/Stocks/Arrowtooth Flounder/Supporting analyses")
ATF_OM@cpars$Find<-array(trlnorm(ATF_OM@nsim*ATF_OM@nyears,ATF_OM@cpars$Find,0.1),c(ATF_OM@nsim,ATF_OM@nyears))
ATF_OM@cpars$dep<-rnorm(ATF_OM@nsim,mean(ATF_OM@D),mean(ATF_OM@D)*0.1)
plot(ATF_OM)

ATF<-runMSE(ATF_OM)