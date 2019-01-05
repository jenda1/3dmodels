$fn = 50;

delka = 100;

r=5;

//translate([7,-10,0]) cube([6,20,20]);

rotate([0,90,0]) difference () {
    rotate([120,0,0]) difference() {
rotate([120,0,0]) 
        difference() {
translate([0,0,r]) rotate([0,90,0]) difference() {
    intersection() {
        union() {
            cylinder(h=delka-10, r=r+1);
            translate([0,0,delka-10]) cylinder(h=20, r1=r+1, r2=0);
        }
        translate([0,0,delka/2-1]) Hexagone(cle=2*r,h=delka*2);
        
    }
    translate([0,0,5]) cylinder(h=delka*2, r=1.8);
}
translate([7,0,9.7]) scale(2.5) rotate([0,0,180]) Logo();
translate([delka-15,.3*r,2*r-.2]) scale(.33) rotate([0,0,180]) linear_extrude(height = 1) {
       text("Gymnázium, Praha 6, Arabská 14.", font = "Liberation Sans:style=Bold");
//text("G", font = "Liberation Sans:style=Bold");
}
}



translate([delka-15,-0.5* r,.45*r]) scale(.4) rotate([0,0,180]) linear_extrude(height = 1) {
       text("π=11,00100 10000 11111 10110", font = "Liberation Sans:style=Bold");
//text("11", font = "Liberation Sans:style=Bold");


}



}
union() {
    for (x=[10:10:delka-15]) translate([x,r*0.25,r*.4]) cube([.5,5,1]);
    for (x=[5:10:delka-15]) translate([x,r*0.25,r*.4]) cube([.3,2.5,1]);
}
}

module Hexagone(cle,h)
{
	angle = 360/6;		// 6 pans
	cote = cle * cot(angle);

	union()
	{
		rotate([0,0,0])
			cube([cle,cote,h],center=true);
		rotate([0,0,angle])
			cube([cle,cote,h],center=true);
		rotate([0,0,2*angle])
			cube([cle,cote,h],center=true);
	}
}


function cot(x)=1/tan(x);

module Logo() {
intersection() {
difference() {
    cylinder(h=1, r=1,center = false);
    translate([0,0,-.5]) cylinder(h=2,r=.8, center=false);
}

translate([-1,-1.5,-.01]) cube([1.6,3,1]);
}

intersection() {
translate([1.25,-.5,0]) difference() {
    cylinder(h=1, r=2,center = false);
    translate([0,0,-.5]) cylinder(h=2,r=1.8, center=false);
}
translate([-1,-1,-.5]) cube([2,2,2]);
}

intersection() {
translate([-1.25,-.5,0]) difference() {
    cylinder(h=1, r=2,center = false);
    translate([0,0,-.5]) cylinder(h=2,r=1.8, center=false);
}

translate([-1,-1,-.5]) cube([2,2,2]);

}

translate([-.6,-.1,0]) cube([1.2,.2,1]);
}
    