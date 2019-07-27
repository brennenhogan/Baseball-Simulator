function [Runner1,Runner2,Runner3,HomeScore,AwayScore]=BaserunningFunctionTEST(HittingResult,Runner1,Runner2,Runner3,HomeScore,AwayScore,HalfInning)
%Takes into account the result of the hit and the positions of the runners
%Assume the leading runner is always Runner1... and so forth
switch HittingResult
    
    
    case 'walk'
        if Runner1==0 && Runner2==0 && Runner3==0
            Runner1=1;
        elseif Runner1==1 && Runner2==0 && Runner3==0
            Runner1=2;
            Runner2=1;
        elseif Runner1==2 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=1;
        elseif Runner1==3 && Runner2==2 && Runner3==1
            Runner1=3;
            Runner2=2;
            Runner3=1;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        elseif Runner1==3 && Runner2==2 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=1;
        elseif Runner1==3 && Runner2==0 && Runner3==0
            Runner1=3;
            Runner2=1;
            Runner3=0;
        elseif Runner1==3 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=1;
        elseif Runner1==2 && Runner2==0 && Runner3==0
            Runner1=2;
            Runner2=1;
            Runner3=0;
        end
        
        
    case 'single'
        if Runner1==0 && Runner2==0 && Runner3==0
            Runner1=1;
        elseif Runner1==1 && Runner2==0 && Runner3==0
            Runner1=2;
            Runner2=1;
        elseif Runner1==2 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=1;
        elseif Runner1==3 && Runner2==2 && Runner3==1
            Runner1=3;
            Runner2=2;
            Runner3=1;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        elseif Runner1==3 && Runner2==2 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=1;
        elseif Runner1==3 && Runner2==0 && Runner3==0
            Runner1=3;
            Runner2=1;
            Runner3=0;
        elseif Runner1==3 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=1;
        elseif Runner1==2 && Runner2==0 && Runner3==0
            Runner1=2;
            Runner2=1;
            Runner3=0;
        end
        
        
    case 'double'
        if Runner1==0 && Runner2==0 && Runner3==0
            Runner1=2;
        elseif Runner1==1 && Runner2==0 && Runner3==0
            Runner1=3;
            Runner2=2;
        elseif Runner1==2 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        elseif Runner1==3 && Runner2==2 && Runner3==1
            Runner1=3;
            Runner2=2;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+2;
                case 1
                    HomeScore=HomeScore+2;
            end
            
        elseif Runner1==3 && Runner2==2 && Runner3==0
            Runner1=2;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+2;
                case 1
                    HomeScore=HomeScore+2;
            end
            
        elseif Runner1==3 && Runner2==0 && Runner3==0
            Runner1=2;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        elseif Runner1==3 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=2;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        elseif Runner1==2 && Runner2==0 && Runner3==0
            Runner1=2;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        end
        
        
    case 'triple'
        if Runner1==0 && Runner2==0 && Runner3==0
            Runner1=3;
        elseif Runner1==1 && Runner2==0 && Runner3==0
            Runner1=3;
            Runner2=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        elseif Runner1==2 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+2;
                case 1
                    HomeScore=HomeScore+2;
            end
            
        elseif Runner1==3 && Runner2==2 && Runner3==1
            Runner1=3;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+3;
                case 1
                    HomeScore=HomeScore+3;
            end
            
        elseif Runner1==3 && Runner2==2 && Runner3==0
            Runner1=3;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+2;
                case 1
                    HomeScore=HomeScore+2;
            end
            
        elseif Runner1==3 && Runner2==0 && Runner3==0
            Runner1=3;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        elseif Runner1==3 && Runner2==1 && Runner3==0
            Runner1=3;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+2;
                case 1
                    HomeScore=HomeScore+2;
            end
            
        elseif Runner1==2 && Runner2==0 && Runner3==0
            Runner1=3;
            Runner2=0;
            Runner3=0;
            
            
            switch HalfInning
                case 0
                    AwayScore=AwayScore+1;
                case 1
                    HomeScore=HomeScore+1;
            end
            
        end
        
        
    case 'yabo'
        TotalRuns=Runner1+Runner2+Runner3+1;
        switch TotalRuns
            case 1
                
                
                switch HalfInning
                    case 0
                        AwayScore=AwayScore+1;
                    case 1
                        HomeScore=HomeScore+1;
                end
                
            case 2
                
                
                switch HalfInning
                    case 0
                        AwayScore=AwayScore+2;
                    case 1
                        HomeScore=HomeScore+2;
                end
                
            case 3
                
                
                switch HalfInning
                    case 0
                        AwayScore=AwayScore+3;
                    case 1
                        HomeScore=HomeScore+3;
                end
                
            case 4
                
                
                switch HalfInning
                    case 0
                        AwayScore=AwayScore+4;
                    case 1
                        HomeScore=HomeScore+4;
                end
                
        end
end