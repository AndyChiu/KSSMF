//鍵帽矽膠模具組 Stem模具 物品放置固定座
//用於建立磁磚鍵帽或者任意平面物體當作鍵帽用

// Keycaps Stem Silicone Molds Fixtures

module OneU(){
    size_calibration=15.9/16.3; //尺寸校準,依照自己印表機調整, 為 實際/設定值 的比例
    PlatformSize=16.3/size_calibration; //放置物品的平台的長寬尺寸(方形)
    GrooveSize=13.4; //矽膠座的長寬
    GrooveSizeH=6.8; //矽膠座的高度
    //BodySize=22; //外框尺寸: 矽膠座含底部花瓣長寬
    BodySize=PlatformSize+2; //改以承接平台尺寸加2mm當作外框尺寸 
   
    echo(str(" 尺寸校準=", size_calibration,"修正後尺寸=", PlatformSize));
    PlatformHight=9; //平台高度

difference() { 
    //主體
    translate([0,0,PlatformHight/2]) 
        cube([BodySize,BodySize,PlatformHight],center=true);  

    //底部(花瓣)
    translate([0,0,2.3/2]) 
        cube([22.7,22.7,2.3],center=true);  

    //中央凹槽(矽膠座空間)
    translate([0,0,GrooveSizeH/2]) 
        cube([GrooveSize,GrooveSize,GrooveSizeH],center=true);

    //上方放置區 
    translate([0,0,2.3+GrooveSizeH-1]) 
        #cube([PlatformSize,PlatformSize,5],center=true);

    //固定位置只剩四周,讓其他面不會沾黏到溢出的環氧樹酯
    translate([0,0,PlatformHight/2]) 
        cube([10,PlatformSize,PlatformHight],center=true);
    translate([0,0,PlatformHight/2]) 
        cube([PlatformSize,10,PlatformHight],center=true);
    
    };
}


OneU();
