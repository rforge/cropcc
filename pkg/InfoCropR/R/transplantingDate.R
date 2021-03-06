#management
transplantingDate <- function(soil, SWBsv, management)
{
  
  #---------- management Data
  DAS     <- management@DAS[length(management@DAS)]
  RAINSW  <- management@RAINSW[length(management@RAINSW)]
  SEEDAG  <- management@SEEDAG[length(management@SEEDAG)]
  XT1     <- management@XT1[length(management@XT1)]
  
  #---------- soil Data
  WCFC1 <- soil@WCFC1[length(soil@WCFC1)]
  
  #---------- SWBsv Data
  WCL1  <- SWBsv@WCL1[length(SWBsv@WCL1)]
  
  #================
  WCLTRP <- WCFC1*0.85
  
  DLYTRP <- INSW(RAINSW - 1, 0, INSW(DAS - SEEDAG, 0, INSW(WCL1 - WCLTRP, 0, 1))) 
  DLYRAN <- DLYTRP                     #Line 122: DLYRAN = INTGRL(ZERO,DLYTRP)
  
  XT  <- INSW(RAINSW - 1, 0, INSW(DLYRAN - 1, 1, 0))
  XT1 <- XT1 + XT                     #Line 124: XT1 = INTGRL(XTIN, XT)
  
  NEWAGE <- INSW(RAINSW - 1, SEEDAG, INSW(DAS - SEEDAG, 0, XT1))
  
  #================
  j <- length(management@NEWAGE) + 1
  management@NEWAGE[j] <- NEWAGE
  management@XT1[j] <- XT1
  
  #----------------
  return(management)
}