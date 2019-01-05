$fn = 30;

delka = 100;

r=5;
t="MARUŠKA";
dd=65;

rotate([180,0,0]) difference() {
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
    translate([delka-dd,.33*r,2*r-.3]) scale(.33) rotate([0,0,180]) linear_extrude(height = 1) {
        text(t, font = "Sans Bold:style=bold");
    }
}

*rotate([180,0,0]) translate([delka-dd,.33*r,2*r-.3]) scale(.33) rotate([0,0,180]) linear_extrude(height = 1) {
    text(t, font = "Sans Bold:style=bold");
}

module Hexagone(cle,h) {
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