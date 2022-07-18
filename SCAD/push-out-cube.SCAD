//頂出鍵帽工具

GrooveSize=13.4;
GrooveSizeH=6.8;

difference() { 
    //主體
    translate([0,0,0]) 
        cube([GrooveSize-1,GrooveSize-1,GrooveSizeH*1.3],center=true); 
    
     translate([0,0,0]) 
        cube([8,8,GrooveSizeH*2],center=true);    
    }
