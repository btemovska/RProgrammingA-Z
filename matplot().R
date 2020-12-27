
FieldGoals
#               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant      978  813  775  800  716  740  574  738   31  266
# JoeJohnson      632  536  647  620  635  514  423  445  462  446
# LeBronJames     875  772  794  789  768  758  621  765  767  624
# CarmeloAnthony  756  691  728  535  688  684  441  669  743  358
# DwightHoward    468  526  583  560  510  619  416  470  473  251
# ChrisBosh       549  543  507  615  600  524  393  485  492  343
# ChrisPaul       407  381  630  631  314  430  425  412  406  568
# KevinDurant     306  306  587  661  794  711  643  731  849  238
# DerrickRose     208  208  208  574  672  711  302    0   58  338
# DwayneWade      699  472  439  854  719  692  416  569  415  509

#transpose
t(FieldGoals/Games)
#    KobeBryant JoeJohnson LeBronJames CarmeloAnthony DwightHoward ChrisBosh ChrisPaul KevinDurant DerrickRose DwayneWade
# 2005      978        632         875            756          468       549       407         306         208        699
# 2006      813        536         772            691          526       543       381         306         208        472
# 2007      775        647         794            728          583       507       630         587         208        439
# 2008      800        620         789            535          560       615       631         661         574        854
# 2009      716        635         768            688          510       600       314         794         672        719
# 2010      740        514         758            684          619       524       430         711         711        692
# 2011      574        423         621            441          416       393       425         643         302        416
# 2012      738        445         765            669          470       485       412         731           0        569
# 2013       31        462         767            743          473       492       406         849          58        415
# 2014      266        446         624            358          251       343       568         238         338        509

matplot(FieldGoals/Games, type = "b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend = Players, col=c(1:4, 6), pch = 15:18, horiz = F)


matplot(FieldGoals/FieldGoalAttempts, type = "b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend = Players, col=c(1:4, 6), pch = 15:18, horiz = F)


