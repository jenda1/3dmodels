$fn = 30;

delka = 100;

r=5;

//translate([7,-10,0]) cube([6,20,20]);

rotate([120,00,0]) difference () {
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
translate([7,0,9.6]) scale(.25) rotate([0,0,180]) Logo();
//translate([7,0,9.7]) scale(2.5) rotate([0,0,180]) Logo();
translate([delka-75,.25*r,2*r-.3]) scale(.33) rotate([0,0,180]) linear_extrude(height = 1) {
    text("Argo", font = "Sans Bold:style=bold");
//text
      // text("Gymnázium, Praha 6, Arabská 14.", font = "Liberation Sans:style=Bold");
//text("G", font = "Liberation Sans:style=Bold");
}
}



translate([delka-45,-0.5* r,.45*r]) scale(.4) rotate([0,0,180]) linear_extrude(height = 1) {
       //text("🎒🛏👞🔦🌧️🐍-🚰🍴", font = "Unifont Upper:style=Bold");
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
       union() {
         difference() {
             cylinder(h=10, r=10);
             translate([0,0,-.1]) cylinder(h=10.2, r=9);
         }
         translate([0,0,1]) cylinder(h=10.1, r=9.1);
         translate([0,0,.5]) polyhedron(
         points=[
        [0,9,0], [-4,-8,0], [0,-4,0], [4,-8,0],
        [0,9,10], [-4,-8,10],[0,-4,10],[4,-8,10]
        ],
        faces=[  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]); // left
    }
}

module Logo2() {
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
    