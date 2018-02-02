x=216.2;
y=18.5;
v=1;
h=50;

difference() {
    cube([x+2*v,2*y+2*v,h]);
    translate([v,v,v]) cube([x,y,h]);
    translate([v,v+y+v,-.1]) cube([x,y+v,h+v]);
  
    translate([25.8,y*2,20]) {
        rotate(a=[90,0,0]) cylinder(h=20,r=7);
    };
    translate([25.8,y*2,30]) {
        rotate(a=[90,0,0]) cylinder(h=20,r=7);
    };
    
    translate([25.8-7,y*2,20]) {
        rotate(a=[90,0,0]) cube([14,10,20]);
    };
};      


