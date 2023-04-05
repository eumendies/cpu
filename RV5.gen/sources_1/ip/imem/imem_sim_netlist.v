// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr  5 15:00:24 2023
// Host        : LAPTOP-7D1D3GGC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/vivado/RV5/RV5/RV5.gen/sources_1/ip/imem/imem_sim_netlist.v
// Design      : imem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module imem
   (a,
    spo);
  input [8:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [8:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [19:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:20] = \^spo [31:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \^spo [17];
  assign spo[16] = \<const0> ;
  assign spo[15:14] = \^spo [15:14];
  assign spo[13] = \<const0> ;
  assign spo[12] = \^spo [12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9:7] = \^spo [9:7];
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \^spo [4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "9" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "512" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "imem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6864)
`pragma protect data_block
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
XNQ1mXd8ynTkxspQ9tZtTa/HYaO5atKJ
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
