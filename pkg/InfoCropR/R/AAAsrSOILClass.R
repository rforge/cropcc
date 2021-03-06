# srSOIL [subRoutines: SUBR_SOIL]
#-------------
setClass(Class="srSOILClass",
         
         representation = representation(
           
            DINDEX = "numeric",
            
            # Bulk density (pedo-transfer function)
            BDC1   = "numeric",
            BDC2   = "numeric",
            BDC3   = "numeric",
            
            WCFCC1 = "numeric",
            WCFCC2 = "numeric",
            WCFCC3 = "numeric",
            
            WCWPC1 = "numeric",
            WCWPC2 = "numeric",
            WCWPC3 = "numeric",
            
            WCSTC1 = "numeric",
            WCSTC2 = "numeric",
            WCSTC3 = "numeric",
            
            # Air dry (pedo-transfer function)
            WCAD1  = "numeric",
            WCAD2  = "numeric",
            WCAD3  = "numeric",
            
            # Hydraulic conductivity (pedo-transfer function)
            KSATC1 = "numeric",
            KSATC3 = "numeric"

         ),
         
         prototype = prototype( 
            
            DINDEX = 10957, 
           
            BDC1   = 1.307,
            BDC2   = 1.307,
            BDC3   = 1.307,
            
            WCFCC1 = 0.3145818,
            WCFCC2 = 0.3145818,
            WCFCC3 = 0.3145818,
                       
            WCWPC1 = 0.1523112,
            WCWPC2 = 0.1523112,
            WCWPC3 = 0.1523112,
            
            WCSTC1 = 0.5067925,
            WCSTC2 = 0.5067925,
            WCSTC3 = 0.5067925,
            
            WCAD1  = 0.08205525,
            WCAD2  = 0.08205525,
            WCAD3  = 0.08205525,
            
            KSATC1 = 138,
            KSATC3 = 138
            
         ),
         
         validity = function(object)
         {
            TRUE
         }
)