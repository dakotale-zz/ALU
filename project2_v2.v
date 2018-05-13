module partfa(p, g, s, a, b, cin)
	output p, g, s;
	input a, b, cin;
	xor (s, a, b, cin);
	xor (p, a, b);
	and (g, a, b);
endmodule

module cla(p_up, g_up, cout, p, g, cin);
	output p_up, g_up;
	output [3:0] cout;
	input [3:0] p, g;
	input cin;
	
	and(p_up, p);
	
	and(p3g2, p[3], g[2]);
	and(p3p2g1, p[3], p[2], g[1]);
	and(p3p2p1g0, p[3], p[2], p[1], g[0]);
	and(p3p2p1p0cin, p[3], p[2], p[1], p[0], cin);
	
	or(g_up, g[3], p3g2, p3p2g1, p3p2p1g0);
	or(cout[3],g[3],p3g2,p3p2g1,p3p2p1g0,p3p2p1p0cin);
	
    	and(p2g1,p[2],g[1]);
    	and(p2p1g0,p[2],p[1],g[0]);
    	and(p2p1p0cin,p[2],p[1],p[0],cin);
    	and(p1g0,p[1],g[0]);
    	and(p1p0cin,p[1],p[0],cin);
    	and(p0cin,p[0],cin);

	or(cout[2], g[2],p2g1,p2p1g0,p2p1p0cin);
	or(cout[1],g[1],p1g0,p1p0cin);
	or(cout[0],g[0],p0cin);
endmodule


