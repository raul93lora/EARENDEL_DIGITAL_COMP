// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Mar 24 2025 11:29:46

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "Shift_Register_Elec_Config" view "INTERFACE"

module Shift_Register_Elec_Config (
    electr_config_in,
    enable_config,
    RST_N,
    sr_finish,
    CLK,
    serial_out,
    enable_desp);

    input [54:0] electr_config_in;
    output enable_config;
    input RST_N;
    output sr_finish;
    input CLK;
    output serial_out;
    input enable_desp;

    wire N__4838;
    wire N__4837;
    wire N__4836;
    wire N__4827;
    wire N__4826;
    wire N__4825;
    wire N__4818;
    wire N__4817;
    wire N__4816;
    wire N__4809;
    wire N__4808;
    wire N__4807;
    wire N__4800;
    wire N__4799;
    wire N__4798;
    wire N__4791;
    wire N__4790;
    wire N__4789;
    wire N__4782;
    wire N__4781;
    wire N__4780;
    wire N__4773;
    wire N__4772;
    wire N__4771;
    wire N__4764;
    wire N__4763;
    wire N__4762;
    wire N__4755;
    wire N__4754;
    wire N__4753;
    wire N__4746;
    wire N__4745;
    wire N__4744;
    wire N__4737;
    wire N__4736;
    wire N__4735;
    wire N__4728;
    wire N__4727;
    wire N__4726;
    wire N__4719;
    wire N__4718;
    wire N__4717;
    wire N__4710;
    wire N__4709;
    wire N__4708;
    wire N__4701;
    wire N__4700;
    wire N__4699;
    wire N__4692;
    wire N__4691;
    wire N__4690;
    wire N__4683;
    wire N__4682;
    wire N__4681;
    wire N__4674;
    wire N__4673;
    wire N__4672;
    wire N__4665;
    wire N__4664;
    wire N__4663;
    wire N__4656;
    wire N__4655;
    wire N__4654;
    wire N__4647;
    wire N__4646;
    wire N__4645;
    wire N__4638;
    wire N__4637;
    wire N__4636;
    wire N__4629;
    wire N__4628;
    wire N__4627;
    wire N__4620;
    wire N__4619;
    wire N__4618;
    wire N__4611;
    wire N__4610;
    wire N__4609;
    wire N__4602;
    wire N__4601;
    wire N__4600;
    wire N__4593;
    wire N__4592;
    wire N__4591;
    wire N__4584;
    wire N__4583;
    wire N__4582;
    wire N__4575;
    wire N__4574;
    wire N__4573;
    wire N__4566;
    wire N__4565;
    wire N__4564;
    wire N__4557;
    wire N__4556;
    wire N__4555;
    wire N__4548;
    wire N__4547;
    wire N__4546;
    wire N__4539;
    wire N__4538;
    wire N__4537;
    wire N__4530;
    wire N__4529;
    wire N__4528;
    wire N__4521;
    wire N__4520;
    wire N__4519;
    wire N__4512;
    wire N__4511;
    wire N__4510;
    wire N__4503;
    wire N__4502;
    wire N__4501;
    wire N__4494;
    wire N__4493;
    wire N__4492;
    wire N__4485;
    wire N__4484;
    wire N__4483;
    wire N__4476;
    wire N__4475;
    wire N__4474;
    wire N__4467;
    wire N__4466;
    wire N__4465;
    wire N__4458;
    wire N__4457;
    wire N__4456;
    wire N__4449;
    wire N__4448;
    wire N__4447;
    wire N__4440;
    wire N__4439;
    wire N__4438;
    wire N__4431;
    wire N__4430;
    wire N__4429;
    wire N__4422;
    wire N__4421;
    wire N__4420;
    wire N__4413;
    wire N__4412;
    wire N__4411;
    wire N__4404;
    wire N__4403;
    wire N__4402;
    wire N__4395;
    wire N__4394;
    wire N__4393;
    wire N__4386;
    wire N__4385;
    wire N__4384;
    wire N__4377;
    wire N__4376;
    wire N__4375;
    wire N__4368;
    wire N__4367;
    wire N__4366;
    wire N__4359;
    wire N__4358;
    wire N__4357;
    wire N__4350;
    wire N__4349;
    wire N__4348;
    wire N__4341;
    wire N__4340;
    wire N__4339;
    wire N__4332;
    wire N__4331;
    wire N__4330;
    wire N__4323;
    wire N__4322;
    wire N__4321;
    wire N__4314;
    wire N__4313;
    wire N__4312;
    wire N__4305;
    wire N__4304;
    wire N__4303;
    wire N__4296;
    wire N__4295;
    wire N__4294;
    wire N__4277;
    wire N__4274;
    wire N__4271;
    wire N__4268;
    wire N__4265;
    wire N__4262;
    wire N__4259;
    wire N__4256;
    wire N__4253;
    wire N__4250;
    wire N__4247;
    wire N__4244;
    wire N__4241;
    wire N__4238;
    wire N__4235;
    wire N__4232;
    wire N__4229;
    wire N__4226;
    wire N__4223;
    wire N__4220;
    wire N__4217;
    wire N__4214;
    wire N__4211;
    wire N__4208;
    wire N__4207;
    wire N__4206;
    wire N__4205;
    wire N__4204;
    wire N__4203;
    wire N__4202;
    wire N__4201;
    wire N__4200;
    wire N__4199;
    wire N__4198;
    wire N__4197;
    wire N__4196;
    wire N__4195;
    wire N__4194;
    wire N__4193;
    wire N__4192;
    wire N__4191;
    wire N__4190;
    wire N__4189;
    wire N__4188;
    wire N__4187;
    wire N__4186;
    wire N__4185;
    wire N__4184;
    wire N__4183;
    wire N__4182;
    wire N__4181;
    wire N__4180;
    wire N__4179;
    wire N__4178;
    wire N__4177;
    wire N__4176;
    wire N__4175;
    wire N__4174;
    wire N__4173;
    wire N__4172;
    wire N__4171;
    wire N__4170;
    wire N__4169;
    wire N__4168;
    wire N__4167;
    wire N__4166;
    wire N__4165;
    wire N__4164;
    wire N__4163;
    wire N__4162;
    wire N__4161;
    wire N__4154;
    wire N__4145;
    wire N__4136;
    wire N__4127;
    wire N__4126;
    wire N__4125;
    wire N__4124;
    wire N__4123;
    wire N__4122;
    wire N__4121;
    wire N__4120;
    wire N__4119;
    wire N__4118;
    wire N__4117;
    wire N__4116;
    wire N__4109;
    wire N__4102;
    wire N__4097;
    wire N__4086;
    wire N__4075;
    wire N__4070;
    wire N__4059;
    wire N__4042;
    wire N__4039;
    wire N__4032;
    wire N__4031;
    wire N__4030;
    wire N__4029;
    wire N__4026;
    wire N__4021;
    wire N__4004;
    wire N__4001;
    wire N__3998;
    wire N__3993;
    wire N__3990;
    wire N__3981;
    wire N__3978;
    wire N__3973;
    wire N__3970;
    wire N__3947;
    wire N__3944;
    wire N__3941;
    wire N__3938;
    wire N__3935;
    wire N__3932;
    wire N__3929;
    wire N__3926;
    wire N__3923;
    wire N__3920;
    wire N__3919;
    wire N__3918;
    wire N__3917;
    wire N__3916;
    wire N__3915;
    wire N__3914;
    wire N__3913;
    wire N__3912;
    wire N__3911;
    wire N__3910;
    wire N__3907;
    wire N__3904;
    wire N__3903;
    wire N__3902;
    wire N__3899;
    wire N__3896;
    wire N__3895;
    wire N__3894;
    wire N__3893;
    wire N__3892;
    wire N__3891;
    wire N__3890;
    wire N__3889;
    wire N__3888;
    wire N__3887;
    wire N__3884;
    wire N__3881;
    wire N__3878;
    wire N__3875;
    wire N__3872;
    wire N__3871;
    wire N__3870;
    wire N__3869;
    wire N__3868;
    wire N__3867;
    wire N__3866;
    wire N__3865;
    wire N__3862;
    wire N__3859;
    wire N__3858;
    wire N__3857;
    wire N__3856;
    wire N__3855;
    wire N__3854;
    wire N__3853;
    wire N__3852;
    wire N__3851;
    wire N__3850;
    wire N__3849;
    wire N__3848;
    wire N__3847;
    wire N__3844;
    wire N__3841;
    wire N__3836;
    wire N__3827;
    wire N__3824;
    wire N__3821;
    wire N__3820;
    wire N__3817;
    wire N__3816;
    wire N__3815;
    wire N__3814;
    wire N__3813;
    wire N__3812;
    wire N__3811;
    wire N__3810;
    wire N__3809;
    wire N__3808;
    wire N__3807;
    wire N__3806;
    wire N__3805;
    wire N__3804;
    wire N__3801;
    wire N__3800;
    wire N__3799;
    wire N__3798;
    wire N__3797;
    wire N__3796;
    wire N__3795;
    wire N__3792;
    wire N__3791;
    wire N__3788;
    wire N__3783;
    wire N__3772;
    wire N__3767;
    wire N__3754;
    wire N__3749;
    wire N__3742;
    wire N__3737;
    wire N__3732;
    wire N__3725;
    wire N__3722;
    wire N__3717;
    wire N__3714;
    wire N__3707;
    wire N__3700;
    wire N__3691;
    wire N__3686;
    wire N__3683;
    wire N__3672;
    wire N__3665;
    wire N__3662;
    wire N__3657;
    wire N__3652;
    wire N__3647;
    wire N__3638;
    wire N__3629;
    wire N__3626;
    wire N__3621;
    wire N__3610;
    wire N__3587;
    wire N__3584;
    wire N__3581;
    wire N__3580;
    wire N__3579;
    wire N__3578;
    wire N__3577;
    wire N__3576;
    wire N__3575;
    wire N__3574;
    wire N__3573;
    wire N__3572;
    wire N__3571;
    wire N__3570;
    wire N__3569;
    wire N__3568;
    wire N__3567;
    wire N__3566;
    wire N__3565;
    wire N__3564;
    wire N__3527;
    wire N__3524;
    wire N__3521;
    wire N__3520;
    wire N__3519;
    wire N__3518;
    wire N__3517;
    wire N__3516;
    wire N__3515;
    wire N__3514;
    wire N__3513;
    wire N__3512;
    wire N__3511;
    wire N__3510;
    wire N__3509;
    wire N__3508;
    wire N__3507;
    wire N__3506;
    wire N__3505;
    wire N__3504;
    wire N__3467;
    wire N__3464;
    wire N__3461;
    wire N__3458;
    wire N__3455;
    wire N__3452;
    wire N__3449;
    wire N__3446;
    wire N__3443;
    wire N__3440;
    wire N__3437;
    wire N__3434;
    wire N__3431;
    wire N__3428;
    wire N__3425;
    wire N__3422;
    wire N__3419;
    wire N__3416;
    wire N__3413;
    wire N__3410;
    wire N__3407;
    wire N__3404;
    wire N__3401;
    wire N__3398;
    wire N__3395;
    wire N__3392;
    wire N__3389;
    wire N__3386;
    wire N__3383;
    wire N__3380;
    wire N__3377;
    wire N__3374;
    wire N__3371;
    wire N__3368;
    wire N__3365;
    wire N__3362;
    wire N__3359;
    wire N__3356;
    wire N__3353;
    wire N__3350;
    wire N__3347;
    wire N__3344;
    wire N__3341;
    wire N__3338;
    wire N__3335;
    wire N__3332;
    wire N__3329;
    wire N__3326;
    wire N__3323;
    wire N__3320;
    wire N__3317;
    wire N__3314;
    wire N__3311;
    wire N__3308;
    wire N__3305;
    wire N__3302;
    wire N__3299;
    wire N__3296;
    wire N__3293;
    wire N__3290;
    wire N__3287;
    wire N__3284;
    wire N__3281;
    wire N__3278;
    wire N__3275;
    wire N__3272;
    wire N__3269;
    wire N__3266;
    wire N__3263;
    wire N__3260;
    wire N__3257;
    wire N__3254;
    wire N__3251;
    wire N__3248;
    wire N__3245;
    wire N__3242;
    wire N__3239;
    wire N__3236;
    wire N__3233;
    wire N__3230;
    wire N__3227;
    wire N__3224;
    wire N__3221;
    wire N__3218;
    wire N__3215;
    wire N__3212;
    wire N__3209;
    wire N__3206;
    wire N__3203;
    wire N__3200;
    wire N__3197;
    wire N__3194;
    wire N__3191;
    wire N__3188;
    wire N__3185;
    wire N__3182;
    wire N__3179;
    wire N__3176;
    wire N__3173;
    wire N__3172;
    wire N__3171;
    wire N__3170;
    wire N__3167;
    wire N__3164;
    wire N__3161;
    wire N__3158;
    wire N__3149;
    wire N__3148;
    wire N__3147;
    wire N__3146;
    wire N__3145;
    wire N__3138;
    wire N__3135;
    wire N__3132;
    wire N__3125;
    wire N__3124;
    wire N__3123;
    wire N__3120;
    wire N__3119;
    wire N__3116;
    wire N__3113;
    wire N__3112;
    wire N__3111;
    wire N__3106;
    wire N__3099;
    wire N__3096;
    wire N__3089;
    wire N__3086;
    wire N__3085;
    wire N__3084;
    wire N__3083;
    wire N__3080;
    wire N__3077;
    wire N__3074;
    wire N__3071;
    wire N__3062;
    wire N__3059;
    wire N__3056;
    wire N__3053;
    wire N__3050;
    wire N__3047;
    wire N__3044;
    wire N__3041;
    wire N__3038;
    wire N__3035;
    wire N__3032;
    wire N__3029;
    wire N__3026;
    wire N__3023;
    wire N__3020;
    wire N__3017;
    wire N__3014;
    wire N__3011;
    wire N__3008;
    wire N__3005;
    wire N__3002;
    wire N__2999;
    wire N__2996;
    wire N__2993;
    wire N__2990;
    wire N__2987;
    wire N__2984;
    wire N__2981;
    wire N__2978;
    wire N__2975;
    wire N__2972;
    wire N__2969;
    wire N__2966;
    wire N__2963;
    wire N__2960;
    wire N__2957;
    wire N__2954;
    wire N__2951;
    wire N__2948;
    wire N__2945;
    wire N__2942;
    wire N__2939;
    wire N__2936;
    wire N__2933;
    wire N__2930;
    wire N__2929;
    wire N__2928;
    wire N__2927;
    wire N__2924;
    wire N__2921;
    wire N__2916;
    wire N__2909;
    wire N__2906;
    wire N__2903;
    wire N__2900;
    wire N__2899;
    wire N__2898;
    wire N__2895;
    wire N__2892;
    wire N__2889;
    wire N__2882;
    wire N__2879;
    wire N__2876;
    wire N__2873;
    wire N__2870;
    wire N__2867;
    wire N__2866;
    wire N__2863;
    wire N__2860;
    wire N__2855;
    wire N__2852;
    wire N__2849;
    wire N__2848;
    wire N__2847;
    wire N__2844;
    wire N__2843;
    wire N__2840;
    wire N__2837;
    wire N__2834;
    wire N__2831;
    wire N__2822;
    wire N__2819;
    wire N__2816;
    wire N__2815;
    wire N__2812;
    wire N__2809;
    wire N__2804;
    wire N__2801;
    wire N__2798;
    wire N__2795;
    wire N__2792;
    wire N__2789;
    wire N__2786;
    wire N__2783;
    wire N__2780;
    wire N__2777;
    wire N__2774;
    wire N__2771;
    wire N__2768;
    wire N__2765;
    wire N__2762;
    wire N__2759;
    wire N__2756;
    wire N__2753;
    wire N__2750;
    wire N__2747;
    wire N__2744;
    wire N__2741;
    wire N__2738;
    wire N__2735;
    wire N__2732;
    wire N__2729;
    wire N__2726;
    wire N__2723;
    wire N__2720;
    wire N__2717;
    wire N__2714;
    wire N__2711;
    wire N__2708;
    wire N__2705;
    wire N__2702;
    wire N__2699;
    wire N__2696;
    wire N__2693;
    wire N__2690;
    wire N__2687;
    wire N__2684;
    wire N__2681;
    wire N__2678;
    wire N__2675;
    wire N__2672;
    wire N__2669;
    wire N__2666;
    wire N__2663;
    wire N__2660;
    wire N__2657;
    wire N__2654;
    wire N__2651;
    wire N__2648;
    wire N__2645;
    wire N__2642;
    wire N__2639;
    wire N__2636;
    wire N__2633;
    wire N__2630;
    wire N__2627;
    wire N__2624;
    wire N__2621;
    wire N__2618;
    wire N__2615;
    wire N__2612;
    wire N__2609;
    wire N__2606;
    wire N__2603;
    wire N__2600;
    wire N__2597;
    wire N__2594;
    wire N__2591;
    wire N__2588;
    wire N__2585;
    wire N__2582;
    wire N__2579;
    wire N__2576;
    wire N__2573;
    wire N__2570;
    wire N__2567;
    wire N__2564;
    wire N__2561;
    wire N__2558;
    wire N__2555;
    wire N__2552;
    wire N__2549;
    wire N__2546;
    wire N__2543;
    wire N__2540;
    wire N__2537;
    wire N__2534;
    wire N__2531;
    wire N__2528;
    wire N__2525;
    wire N__2522;
    wire N__2519;
    wire N__2516;
    wire N__2513;
    wire N__2510;
    wire N__2507;
    wire N__2504;
    wire N__2501;
    wire N__2498;
    wire N__2495;
    wire N__2492;
    wire N__2489;
    wire N__2486;
    wire N__2483;
    wire N__2480;
    wire N__2477;
    wire N__2474;
    wire N__2471;
    wire N__2468;
    wire N__2465;
    wire N__2462;
    wire N__2459;
    wire N__2456;
    wire N__2453;
    wire N__2450;
    wire N__2447;
    wire N__2444;
    wire N__2441;
    wire N__2438;
    wire N__2435;
    wire N__2432;
    wire N__2429;
    wire N__2426;
    wire N__2423;
    wire N__2420;
    wire N__2417;
    wire N__2414;
    wire N__2411;
    wire N__2408;
    wire N__2405;
    wire N__2402;
    wire N__2399;
    wire N__2396;
    wire N__2393;
    wire N__2390;
    wire N__2387;
    wire N__2384;
    wire N__2381;
    wire N__2378;
    wire N__2375;
    wire N__2372;
    wire N__2369;
    wire N__2366;
    wire N__2363;
    wire N__2360;
    wire N__2357;
    wire N__2354;
    wire N__2351;
    wire N__2348;
    wire N__2345;
    wire N__2342;
    wire N__2339;
    wire N__2336;
    wire N__2333;
    wire N__2330;
    wire N__2327;
    wire N__2324;
    wire N__2321;
    wire N__2318;
    wire N__2315;
    wire N__2312;
    wire N__2309;
    wire N__2306;
    wire N__2303;
    wire N__2300;
    wire N__2297;
    wire N__2294;
    wire N__2291;
    wire N__2288;
    wire N__2285;
    wire N__2282;
    wire N__2279;
    wire N__2276;
    wire N__2273;
    wire N__2270;
    wire N__2267;
    wire N__2264;
    wire N__2261;
    wire N__2258;
    wire N__2255;
    wire N__2252;
    wire N__2249;
    wire N__2246;
    wire N__2243;
    wire N__2240;
    wire N__2237;
    wire N__2234;
    wire N__2231;
    wire N__2228;
    wire N__2225;
    wire N__2222;
    wire N__2219;
    wire N__2216;
    wire N__2213;
    wire N__2210;
    wire N__2207;
    wire N__2204;
    wire N__2201;
    wire N__2198;
    wire N__2195;
    wire N__2192;
    wire N__2189;
    wire N__2186;
    wire N__2183;
    wire N__2180;
    wire N__2177;
    wire N__2174;
    wire N__2171;
    wire N__2168;
    wire N__2165;
    wire N__2162;
    wire N__2159;
    wire N__2156;
    wire N__2153;
    wire N__2150;
    wire N__2147;
    wire N__2144;
    wire N__2141;
    wire N__2138;
    wire N__2135;
    wire N__2132;
    wire N__2129;
    wire N__2126;
    wire N__2123;
    wire N__2120;
    wire N__2117;
    wire N__2114;
    wire N__2111;
    wire N__2108;
    wire N__2105;
    wire N__2102;
    wire N__2099;
    wire N__2096;
    wire N__2093;
    wire N__2090;
    wire N__2087;
    wire N__2084;
    wire N__2081;
    wire N__2078;
    wire N__2075;
    wire N__2072;
    wire N__2069;
    wire N__2066;
    wire N__2063;
    wire N__2060;
    wire N__2057;
    wire N__2054;
    wire N__2051;
    wire N__2048;
    wire N__2045;
    wire N__2042;
    wire N__2039;
    wire N__2036;
    wire N__2033;
    wire N__2030;
    wire N__2027;
    wire N__2024;
    wire N__2021;
    wire N__2018;
    wire N__2015;
    wire N__2012;
    wire N__2009;
    wire N__2006;
    wire N__2003;
    wire N__2000;
    wire N__1997;
    wire N__1994;
    wire N__1991;
    wire N__1988;
    wire N__1985;
    wire N__1982;
    wire N__1979;
    wire N__1976;
    wire N__1973;
    wire N__1970;
    wire N__1967;
    wire N__1964;
    wire N__1961;
    wire N__1958;
    wire N__1955;
    wire N__1952;
    wire N__1949;
    wire N__1946;
    wire N__1943;
    wire N__1940;
    wire N__1937;
    wire N__1934;
    wire N__1931;
    wire N__1928;
    wire N__1925;
    wire N__1922;
    wire N__1919;
    wire N__1916;
    wire N__1913;
    wire N__1910;
    wire N__1907;
    wire N__1904;
    wire N__1901;
    wire N__1898;
    wire N__1895;
    wire N__1892;
    wire N__1889;
    wire N__1886;
    wire N__1883;
    wire N__1880;
    wire N__1877;
    wire N__1874;
    wire N__1871;
    wire N__1868;
    wire N__1865;
    wire N__1862;
    wire N__1859;
    wire N__1856;
    wire N__1853;
    wire N__1850;
    wire N__1847;
    wire N__1844;
    wire N__1841;
    wire N__1838;
    wire N__1835;
    wire N__1832;
    wire N__1829;
    wire N__1826;
    wire N__1823;
    wire N__1820;
    wire N__1817;
    wire N__1814;
    wire N__1811;
    wire N__1808;
    wire N__1805;
    wire N__1802;
    wire N__1799;
    wire N__1796;
    wire N__1793;
    wire N__1790;
    wire N__1787;
    wire N__1784;
    wire N__1781;
    wire N__1778;
    wire N__1775;
    wire N__1772;
    wire N__1769;
    wire N__1766;
    wire N__1763;
    wire N__1760;
    wire N__1757;
    wire N__1754;
    wire N__1751;
    wire N__1748;
    wire N__1745;
    wire N__1742;
    wire N__1739;
    wire N__1736;
    wire N__1733;
    wire N__1730;
    wire N__1727;
    wire N__1724;
    wire N__1721;
    wire N__1718;
    wire N__1715;
    wire N__1712;
    wire N__1709;
    wire VCCG0;
    wire GNDG0;
    wire RST_N_c;
    wire RST_N_c_i;
    wire enable_config_c;
    wire sr_finish_c;
    wire electr_config_in_c_13;
    wire electr_config_in_c_18;
    wire electr_config_in_c_16;
    wire shift_regZ0Z_13;
    wire electr_config_in_c_14;
    wire electr_config_in_c_12;
    wire shift_regZ0Z_12;
    wire shift_regZ0Z_16;
    wire electr_config_in_c_17;
    wire shift_regZ0Z_17;
    wire electr_config_in_c_11;
    wire shift_regZ0Z_11;
    wire electr_config_in_c_15;
    wire shift_regZ0Z_14;
    wire shift_regZ0Z_15;
    wire electr_config_in_c_19;
    wire shift_regZ0Z_18;
    wire electr_config_in_c_23;
    wire electr_config_in_c_22;
    wire shift_regZ0Z_22;
    wire electr_config_in_c_21;
    wire shift_regZ0Z_21;
    wire electr_config_in_c_20;
    wire shift_regZ0Z_19;
    wire shift_regZ0Z_20;
    wire shift_regZ0Z_23;
    wire electr_config_in_c_24;
    wire shift_regZ0Z_24;
    wire electr_config_in_c_25;
    wire electr_config_in_c_52;
    wire electr_config_in_c_51;
    wire shift_regZ0Z_51;
    wire electr_config_in_c_54;
    wire shift_regZ0Z_52;
    wire electr_config_in_c_53;
    wire shift_regZ0Z_53;
    wire shift_regZ0Z_54;
    wire serial_out_c;
    wire enable_desp_c;
    wire electr_config_in_c_10;
    wire shift_regZ0Z_10;
    wire electr_config_in_c_31;
    wire shift_regZ0Z_25;
    wire electr_config_in_c_26;
    wire electr_config_in_c_30;
    wire shift_regZ0Z_30;
    wire electr_config_in_c_33;
    wire electr_config_in_c_29;
    wire shift_regZ0Z_29;
    wire shift_regZ0Z_26;
    wire electr_config_in_c_27;
    wire shift_regZ0Z_31;
    wire electr_config_in_c_32;
    wire shift_regZ0Z_32;
    wire shift_regZ0Z_27;
    wire electr_config_in_c_28;
    wire shift_regZ0Z_28;
    wire electr_config_in_c_7;
    wire electr_config_in_c_5;
    wire electr_config_in_c_4;
    wire shift_regZ0Z_4;
    wire electr_config_in_c_6;
    wire shift_regZ0Z_5;
    wire shift_regZ0Z_6;
    wire shift_regZ0Z_7;
    wire electr_config_in_c_8;
    wire electr_config_in_c_50;
    wire shift_regZ0Z_50;
    wire electr_config_in_c_9;
    wire shift_regZ0Z_8;
    wire shift_regZ0Z_9;
    wire N_115_mux_cascade_;
    wire counter_sre_0_cascade_;
    wire counter_sre_0_2;
    wire un22_next_state_1_cascade_;
    wire N_118_mux;
    wire next_state32;
    wire electr_config_in_c_36;
    wire electr_config_in_c_35;
    wire shift_regZ0Z_35;
    wire shift_regZ0Z_33;
    wire electr_config_in_c_34;
    wire shift_regZ0Z_34;
    wire bfn_14_4_0_;
    wire counter_sr_cry_0;
    wire counter_sr_cry_1;
    wire counter_srZ0Z_3;
    wire counter_sr_cry_2_THRU_CO;
    wire counter_sr_cry_2;
    wire counter_srZ0Z_4;
    wire counter_sr_cry_3_THRU_CO;
    wire counter_sr_cry_3;
    wire counter_sr_cry_4;
    wire counter_srZ0Z_5;
    wire counter_sr_cry_1_THRU_CO;
    wire counter_srZ0Z_2;
    wire electr_config_in_c_48;
    wire electr_config_in_c_45;
    wire shift_regZ0Z_48;
    wire electr_config_in_c_49;
    wire shift_regZ0Z_49;
    wire counter_sr_cry_0_THRU_CO;
    wire counter_srZ0Z_1;
    wire counter_sre_0;
    wire next_state32_i;
    wire counter_srZ0Z_0;
    wire electr_config_in_c_47;
    wire shift_regZ0Z_47;
    wire electr_config_in_c_46;
    wire shift_regZ0Z_45;
    wire shift_regZ0Z_46;
    wire electr_config_in_c_2;
    wire electr_config_in_c_0;
    wire shift_regZ0Z_0;
    wire electr_config_in_c_1;
    wire shift_regZ0Z_1;
    wire electr_config_in_c_3;
    wire shift_regZ0Z_2;
    wire shift_regZ0Z_3;
    wire CONSTANT_ONE_NET;
    wire electr_config_in_c_38;
    wire shift_regZ0Z_36;
    wire electr_config_in_c_37;
    wire shift_regZ0Z_37;
    wire shift_regZ0Z_38;
    wire electr_config_in_c_39;
    wire electr_config_in_c_41;
    wire electr_config_in_c_44;
    wire shift_regZ0Z_44;
    wire electr_config_in_c_43;
    wire shift_regZ0Z_43;
    wire shift_regZ0Z_39;
    wire electr_config_in_c_40;
    wire shift_regZ0Z_40;
    wire current_stateZ0Z_0;
    wire shift_regZ0Z_41;
    wire electr_config_in_c_42;
    wire current_stateZ0Z_1;
    wire shift_regZ0Z_42;
    wire _gnd_net_;
    wire CLK_c_g;
    wire RST_N_c_i_g;

    PRE_IO_GBUF CLK_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__4836),
            .GLOBALBUFFEROUTPUT(CLK_c_g));
    IO_PAD CLK_ibuf_gb_io_iopad (
            .OE(N__4838),
            .DIN(N__4837),
            .DOUT(N__4836),
            .PACKAGEPIN(CLK));
    defparam CLK_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam CLK_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO CLK_ibuf_gb_io_preio (
            .PADOEN(N__4838),
            .PADOUT(N__4837),
            .PADIN(N__4836),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_8_iopad (
            .OE(N__4827),
            .DIN(N__4826),
            .DOUT(N__4825),
            .PACKAGEPIN(electr_config_in[8]));
    defparam electr_config_in_ibuf_8_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_8_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_8_preio (
            .PADOEN(N__4827),
            .PADOUT(N__4826),
            .PADIN(N__4825),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_8),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_34_iopad (
            .OE(N__4818),
            .DIN(N__4817),
            .DOUT(N__4816),
            .PACKAGEPIN(electr_config_in[34]));
    defparam electr_config_in_ibuf_34_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_34_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_34_preio (
            .PADOEN(N__4818),
            .PADOUT(N__4817),
            .PADIN(N__4816),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_34),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_47_iopad (
            .OE(N__4809),
            .DIN(N__4808),
            .DOUT(N__4807),
            .PACKAGEPIN(electr_config_in[47]));
    defparam electr_config_in_ibuf_47_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_47_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_47_preio (
            .PADOEN(N__4809),
            .PADOUT(N__4808),
            .PADIN(N__4807),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_47),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_7_iopad (
            .OE(N__4800),
            .DIN(N__4799),
            .DOUT(N__4798),
            .PACKAGEPIN(electr_config_in[7]));
    defparam electr_config_in_ibuf_7_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_7_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_7_preio (
            .PADOEN(N__4800),
            .PADOUT(N__4799),
            .PADIN(N__4798),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_7),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_2_iopad (
            .OE(N__4791),
            .DIN(N__4790),
            .DOUT(N__4789),
            .PACKAGEPIN(electr_config_in[2]));
    defparam electr_config_in_ibuf_2_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_2_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_2_preio (
            .PADOEN(N__4791),
            .PADOUT(N__4790),
            .PADIN(N__4789),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_2),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_16_iopad (
            .OE(N__4782),
            .DIN(N__4781),
            .DOUT(N__4780),
            .PACKAGEPIN(electr_config_in[16]));
    defparam electr_config_in_ibuf_16_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_16_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_16_preio (
            .PADOEN(N__4782),
            .PADOUT(N__4781),
            .PADIN(N__4780),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_16),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_21_iopad (
            .OE(N__4773),
            .DIN(N__4772),
            .DOUT(N__4771),
            .PACKAGEPIN(electr_config_in[21]));
    defparam electr_config_in_ibuf_21_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_21_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_21_preio (
            .PADOEN(N__4773),
            .PADOUT(N__4772),
            .PADIN(N__4771),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_21),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_53_iopad (
            .OE(N__4764),
            .DIN(N__4763),
            .DOUT(N__4762),
            .PACKAGEPIN(electr_config_in[53]));
    defparam electr_config_in_ibuf_53_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_53_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_53_preio (
            .PADOEN(N__4764),
            .PADOUT(N__4763),
            .PADIN(N__4762),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_53),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_13_iopad (
            .OE(N__4755),
            .DIN(N__4754),
            .DOUT(N__4753),
            .PACKAGEPIN(electr_config_in[13]));
    defparam electr_config_in_ibuf_13_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_13_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_13_preio (
            .PADOEN(N__4755),
            .PADOUT(N__4754),
            .PADIN(N__4753),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_13),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_31_iopad (
            .OE(N__4746),
            .DIN(N__4745),
            .DOUT(N__4744),
            .PACKAGEPIN(electr_config_in[31]));
    defparam electr_config_in_ibuf_31_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_31_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_31_preio (
            .PADOEN(N__4746),
            .PADOUT(N__4745),
            .PADIN(N__4744),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_31),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_18_iopad (
            .OE(N__4737),
            .DIN(N__4736),
            .DOUT(N__4735),
            .PACKAGEPIN(electr_config_in[18]));
    defparam electr_config_in_ibuf_18_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_18_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_18_preio (
            .PADOEN(N__4737),
            .PADOUT(N__4736),
            .PADIN(N__4735),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_18),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_42_iopad (
            .OE(N__4728),
            .DIN(N__4727),
            .DOUT(N__4726),
            .PACKAGEPIN(electr_config_in[42]));
    defparam electr_config_in_ibuf_42_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_42_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_42_preio (
            .PADOEN(N__4728),
            .PADOUT(N__4727),
            .PADIN(N__4726),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_42),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_29_iopad (
            .OE(N__4719),
            .DIN(N__4718),
            .DOUT(N__4717),
            .PACKAGEPIN(electr_config_in[29]));
    defparam electr_config_in_ibuf_29_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_29_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_29_preio (
            .PADOEN(N__4719),
            .PADOUT(N__4718),
            .PADIN(N__4717),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_29),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD serial_out_obuf_iopad (
            .OE(N__4710),
            .DIN(N__4709),
            .DOUT(N__4708),
            .PACKAGEPIN(serial_out));
    defparam serial_out_obuf_preio.NEG_TRIGGER=1'b0;
    defparam serial_out_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO serial_out_obuf_preio (
            .PADOEN(N__4710),
            .PADOUT(N__4709),
            .PADIN(N__4708),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__2165),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_1_iopad (
            .OE(N__4701),
            .DIN(N__4700),
            .DOUT(N__4699),
            .PACKAGEPIN(electr_config_in[1]));
    defparam electr_config_in_ibuf_1_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_1_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_1_preio (
            .PADOEN(N__4701),
            .PADOUT(N__4700),
            .PADIN(N__4699),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_1),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_45_iopad (
            .OE(N__4692),
            .DIN(N__4691),
            .DOUT(N__4690),
            .PACKAGEPIN(electr_config_in[45]));
    defparam electr_config_in_ibuf_45_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_45_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_45_preio (
            .PADOEN(N__4692),
            .PADOUT(N__4691),
            .PADIN(N__4690),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_45),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_24_iopad (
            .OE(N__4683),
            .DIN(N__4682),
            .DOUT(N__4681),
            .PACKAGEPIN(electr_config_in[24]));
    defparam electr_config_in_ibuf_24_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_24_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_24_preio (
            .PADOEN(N__4683),
            .PADOUT(N__4682),
            .PADIN(N__4681),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_24),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD enable_config_obuf_iopad (
            .OE(N__4674),
            .DIN(N__4673),
            .DOUT(N__4672),
            .PACKAGEPIN(enable_config));
    defparam enable_config_obuf_preio.NEG_TRIGGER=1'b0;
    defparam enable_config_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO enable_config_obuf_preio (
            .PADOEN(N__4674),
            .PADOUT(N__4673),
            .PADIN(N__4672),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__1850),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_36_iopad (
            .OE(N__4665),
            .DIN(N__4664),
            .DOUT(N__4663),
            .PACKAGEPIN(electr_config_in[36]));
    defparam electr_config_in_ibuf_36_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_36_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_36_preio (
            .PADOEN(N__4665),
            .PADOUT(N__4664),
            .PADIN(N__4663),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_36),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_50_iopad (
            .OE(N__4656),
            .DIN(N__4655),
            .DOUT(N__4654),
            .PACKAGEPIN(electr_config_in[50]));
    defparam electr_config_in_ibuf_50_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_50_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_50_preio (
            .PADOEN(N__4656),
            .PADOUT(N__4655),
            .PADIN(N__4654),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_50),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_19_iopad (
            .OE(N__4647),
            .DIN(N__4646),
            .DOUT(N__4645),
            .PACKAGEPIN(electr_config_in[19]));
    defparam electr_config_in_ibuf_19_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_19_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_19_preio (
            .PADOEN(N__4647),
            .PADOUT(N__4646),
            .PADIN(N__4645),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_19),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_39_iopad (
            .OE(N__4638),
            .DIN(N__4637),
            .DOUT(N__4636),
            .PACKAGEPIN(electr_config_in[39]));
    defparam electr_config_in_ibuf_39_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_39_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_39_preio (
            .PADOEN(N__4638),
            .PADOUT(N__4637),
            .PADIN(N__4636),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_39),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_10_iopad (
            .OE(N__4629),
            .DIN(N__4628),
            .DOUT(N__4627),
            .PACKAGEPIN(electr_config_in[10]));
    defparam electr_config_in_ibuf_10_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_10_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_10_preio (
            .PADOEN(N__4629),
            .PADOUT(N__4628),
            .PADIN(N__4627),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_10),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_23_iopad (
            .OE(N__4620),
            .DIN(N__4619),
            .DOUT(N__4618),
            .PACKAGEPIN(electr_config_in[23]));
    defparam electr_config_in_ibuf_23_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_23_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_23_preio (
            .PADOEN(N__4620),
            .PADOUT(N__4619),
            .PADIN(N__4618),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_23),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_41_iopad (
            .OE(N__4611),
            .DIN(N__4610),
            .DOUT(N__4609),
            .PACKAGEPIN(electr_config_in[41]));
    defparam electr_config_in_ibuf_41_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_41_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_41_preio (
            .PADOEN(N__4611),
            .PADOUT(N__4610),
            .PADIN(N__4609),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_41),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_5_iopad (
            .OE(N__4602),
            .DIN(N__4601),
            .DOUT(N__4600),
            .PACKAGEPIN(electr_config_in[5]));
    defparam electr_config_in_ibuf_5_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_5_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_5_preio (
            .PADOEN(N__4602),
            .PADOUT(N__4601),
            .PADIN(N__4600),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_5),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_28_iopad (
            .OE(N__4593),
            .DIN(N__4592),
            .DOUT(N__4591),
            .PACKAGEPIN(electr_config_in[28]));
    defparam electr_config_in_ibuf_28_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_28_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_28_preio (
            .PADOEN(N__4593),
            .PADOUT(N__4592),
            .PADIN(N__4591),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_28),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_32_iopad (
            .OE(N__4584),
            .DIN(N__4583),
            .DOUT(N__4582),
            .PACKAGEPIN(electr_config_in[32]));
    defparam electr_config_in_ibuf_32_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_32_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_32_preio (
            .PADOEN(N__4584),
            .PADOUT(N__4583),
            .PADIN(N__4582),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_32),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_0_iopad (
            .OE(N__4575),
            .DIN(N__4574),
            .DOUT(N__4573),
            .PACKAGEPIN(electr_config_in[0]));
    defparam electr_config_in_ibuf_0_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_0_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_0_preio (
            .PADOEN(N__4575),
            .PADOUT(N__4574),
            .PADIN(N__4573),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_0),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_44_iopad (
            .OE(N__4566),
            .DIN(N__4565),
            .DOUT(N__4564),
            .PACKAGEPIN(electr_config_in[44]));
    defparam electr_config_in_ibuf_44_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_44_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_44_preio (
            .PADOEN(N__4566),
            .PADOUT(N__4565),
            .PADIN(N__4564),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_44),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_14_iopad (
            .OE(N__4557),
            .DIN(N__4556),
            .DOUT(N__4555),
            .PACKAGEPIN(electr_config_in[14]));
    defparam electr_config_in_ibuf_14_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_14_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_14_preio (
            .PADOEN(N__4557),
            .PADOUT(N__4556),
            .PADIN(N__4555),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_14),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_27_iopad (
            .OE(N__4548),
            .DIN(N__4547),
            .DOUT(N__4546),
            .PACKAGEPIN(electr_config_in[27]));
    defparam electr_config_in_ibuf_27_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_27_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_27_preio (
            .PADOEN(N__4548),
            .PADOUT(N__4547),
            .PADIN(N__4546),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_27),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_9_iopad (
            .OE(N__4539),
            .DIN(N__4538),
            .DOUT(N__4537),
            .PACKAGEPIN(electr_config_in[9]));
    defparam electr_config_in_ibuf_9_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_9_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_9_preio (
            .PADOEN(N__4539),
            .PADOUT(N__4538),
            .PADIN(N__4537),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_9),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_37_iopad (
            .OE(N__4530),
            .DIN(N__4529),
            .DOUT(N__4528),
            .PACKAGEPIN(electr_config_in[37]));
    defparam electr_config_in_ibuf_37_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_37_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_37_preio (
            .PADOEN(N__4530),
            .PADOUT(N__4529),
            .PADIN(N__4528),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_37),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_51_iopad (
            .OE(N__4521),
            .DIN(N__4520),
            .DOUT(N__4519),
            .PACKAGEPIN(electr_config_in[51]));
    defparam electr_config_in_ibuf_51_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_51_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_51_preio (
            .PADOEN(N__4521),
            .PADOUT(N__4520),
            .PADIN(N__4519),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_51),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD sr_finish_obuf_iopad (
            .OE(N__4512),
            .DIN(N__4511),
            .DOUT(N__4510),
            .PACKAGEPIN(sr_finish));
    defparam sr_finish_obuf_preio.NEG_TRIGGER=1'b0;
    defparam sr_finish_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO sr_finish_obuf_preio (
            .PADOEN(N__4512),
            .PADOUT(N__4511),
            .PADIN(N__4510),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__1838),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_11_iopad (
            .OE(N__4503),
            .DIN(N__4502),
            .DOUT(N__4501),
            .PACKAGEPIN(electr_config_in[11]));
    defparam electr_config_in_ibuf_11_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_11_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_11_preio (
            .PADOEN(N__4503),
            .PADOUT(N__4502),
            .PADIN(N__4501),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_11),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_22_iopad (
            .OE(N__4494),
            .DIN(N__4493),
            .DOUT(N__4492),
            .PACKAGEPIN(electr_config_in[22]));
    defparam electr_config_in_ibuf_22_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_22_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_22_preio (
            .PADOEN(N__4494),
            .PADOUT(N__4493),
            .PADIN(N__4492),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_22),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_4_iopad (
            .OE(N__4485),
            .DIN(N__4484),
            .DOUT(N__4483),
            .PACKAGEPIN(electr_config_in[4]));
    defparam electr_config_in_ibuf_4_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_4_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_4_preio (
            .PADOEN(N__4485),
            .PADOUT(N__4484),
            .PADIN(N__4483),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_4),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_40_iopad (
            .OE(N__4476),
            .DIN(N__4475),
            .DOUT(N__4474),
            .PACKAGEPIN(electr_config_in[40]));
    defparam electr_config_in_ibuf_40_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_40_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_40_preio (
            .PADOEN(N__4476),
            .PADOUT(N__4475),
            .PADIN(N__4474),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_40),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_49_iopad (
            .OE(N__4467),
            .DIN(N__4466),
            .DOUT(N__4465),
            .PACKAGEPIN(electr_config_in[49]));
    defparam electr_config_in_ibuf_49_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_49_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_49_preio (
            .PADOEN(N__4467),
            .PADOUT(N__4466),
            .PADIN(N__4465),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_49),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_33_iopad (
            .OE(N__4458),
            .DIN(N__4457),
            .DOUT(N__4456),
            .PACKAGEPIN(electr_config_in[33]));
    defparam electr_config_in_ibuf_33_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_33_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_33_preio (
            .PADOEN(N__4458),
            .PADOUT(N__4457),
            .PADIN(N__4456),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_33),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_3_iopad (
            .OE(N__4449),
            .DIN(N__4448),
            .DOUT(N__4447),
            .PACKAGEPIN(electr_config_in[3]));
    defparam electr_config_in_ibuf_3_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_3_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_3_preio (
            .PADOEN(N__4449),
            .PADOUT(N__4448),
            .PADIN(N__4447),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_3),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_15_iopad (
            .OE(N__4440),
            .DIN(N__4439),
            .DOUT(N__4438),
            .PACKAGEPIN(electr_config_in[15]));
    defparam electr_config_in_ibuf_15_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_15_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_15_preio (
            .PADOEN(N__4440),
            .PADOUT(N__4439),
            .PADIN(N__4438),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_15),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_26_iopad (
            .OE(N__4431),
            .DIN(N__4430),
            .DOUT(N__4429),
            .PACKAGEPIN(electr_config_in[26]));
    defparam electr_config_in_ibuf_26_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_26_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_26_preio (
            .PADOEN(N__4431),
            .PADOUT(N__4430),
            .PADIN(N__4429),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_26),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_52_iopad (
            .OE(N__4422),
            .DIN(N__4421),
            .DOUT(N__4420),
            .PACKAGEPIN(electr_config_in[52]));
    defparam electr_config_in_ibuf_52_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_52_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_52_preio (
            .PADOEN(N__4422),
            .PADOUT(N__4421),
            .PADIN(N__4420),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_52),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD RST_N_ibuf_iopad (
            .OE(N__4413),
            .DIN(N__4412),
            .DOUT(N__4411),
            .PACKAGEPIN(RST_N));
    defparam RST_N_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam RST_N_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO RST_N_ibuf_preio (
            .PADOEN(N__4413),
            .PADOUT(N__4412),
            .PADIN(N__4411),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(RST_N_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_12_iopad (
            .OE(N__4404),
            .DIN(N__4403),
            .DOUT(N__4402),
            .PACKAGEPIN(electr_config_in[12]));
    defparam electr_config_in_ibuf_12_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_12_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_12_preio (
            .PADOEN(N__4404),
            .PADOUT(N__4403),
            .PADIN(N__4402),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_12),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_48_iopad (
            .OE(N__4395),
            .DIN(N__4394),
            .DOUT(N__4393),
            .PACKAGEPIN(electr_config_in[48]));
    defparam electr_config_in_ibuf_48_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_48_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_48_preio (
            .PADOEN(N__4395),
            .PADOUT(N__4394),
            .PADIN(N__4393),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_48),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_30_iopad (
            .OE(N__4386),
            .DIN(N__4385),
            .DOUT(N__4384),
            .PACKAGEPIN(electr_config_in[30]));
    defparam electr_config_in_ibuf_30_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_30_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_30_preio (
            .PADOEN(N__4386),
            .PADOUT(N__4385),
            .PADIN(N__4384),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_30),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_43_iopad (
            .OE(N__4377),
            .DIN(N__4376),
            .DOUT(N__4375),
            .PACKAGEPIN(electr_config_in[43]));
    defparam electr_config_in_ibuf_43_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_43_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_43_preio (
            .PADOEN(N__4377),
            .PADOUT(N__4376),
            .PADIN(N__4375),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_43),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_35_iopad (
            .OE(N__4368),
            .DIN(N__4367),
            .DOUT(N__4366),
            .PACKAGEPIN(electr_config_in[35]));
    defparam electr_config_in_ibuf_35_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_35_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_35_preio (
            .PADOEN(N__4368),
            .PADOUT(N__4367),
            .PADIN(N__4366),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_35),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD enable_desp_ibuf_iopad (
            .OE(N__4359),
            .DIN(N__4358),
            .DOUT(N__4357),
            .PACKAGEPIN(enable_desp));
    defparam enable_desp_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam enable_desp_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO enable_desp_ibuf_preio (
            .PADOEN(N__4359),
            .PADOUT(N__4358),
            .PADIN(N__4357),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(enable_desp_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_46_iopad (
            .OE(N__4350),
            .DIN(N__4349),
            .DOUT(N__4348),
            .PACKAGEPIN(electr_config_in[46]));
    defparam electr_config_in_ibuf_46_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_46_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_46_preio (
            .PADOEN(N__4350),
            .PADOUT(N__4349),
            .PADIN(N__4348),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_46),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_6_iopad (
            .OE(N__4341),
            .DIN(N__4340),
            .DOUT(N__4339),
            .PACKAGEPIN(electr_config_in[6]));
    defparam electr_config_in_ibuf_6_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_6_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_6_preio (
            .PADOEN(N__4341),
            .PADOUT(N__4340),
            .PADIN(N__4339),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_6),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_25_iopad (
            .OE(N__4332),
            .DIN(N__4331),
            .DOUT(N__4330),
            .PACKAGEPIN(electr_config_in[25]));
    defparam electr_config_in_ibuf_25_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_25_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_25_preio (
            .PADOEN(N__4332),
            .PADOUT(N__4331),
            .PADIN(N__4330),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_25),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_38_iopad (
            .OE(N__4323),
            .DIN(N__4322),
            .DOUT(N__4321),
            .PACKAGEPIN(electr_config_in[38]));
    defparam electr_config_in_ibuf_38_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_38_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_38_preio (
            .PADOEN(N__4323),
            .PADOUT(N__4322),
            .PADIN(N__4321),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_38),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_17_iopad (
            .OE(N__4314),
            .DIN(N__4313),
            .DOUT(N__4312),
            .PACKAGEPIN(electr_config_in[17]));
    defparam electr_config_in_ibuf_17_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_17_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_17_preio (
            .PADOEN(N__4314),
            .PADOUT(N__4313),
            .PADIN(N__4312),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_17),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_20_iopad (
            .OE(N__4305),
            .DIN(N__4304),
            .DOUT(N__4303),
            .PACKAGEPIN(electr_config_in[20]));
    defparam electr_config_in_ibuf_20_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_20_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_20_preio (
            .PADOEN(N__4305),
            .PADOUT(N__4304),
            .PADIN(N__4303),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_20),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD electr_config_in_ibuf_54_iopad (
            .OE(N__4296),
            .DIN(N__4295),
            .DOUT(N__4294),
            .PACKAGEPIN(electr_config_in[54]));
    defparam electr_config_in_ibuf_54_preio.NEG_TRIGGER=1'b0;
    defparam electr_config_in_ibuf_54_preio.PIN_TYPE=6'b000001;
    PRE_IO electr_config_in_ibuf_54_preio (
            .PADOEN(N__4296),
            .PADOUT(N__4295),
            .PADIN(N__4294),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(electr_config_in_c_54),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    CascadeMux I__1002 (
            .O(N__4277),
            .I(N__4274));
    InMux I__1001 (
            .O(N__4274),
            .I(N__4271));
    LocalMux I__1000 (
            .O(N__4271),
            .I(N__4268));
    Span12Mux_v I__999 (
            .O(N__4268),
            .I(N__4265));
    Span12Mux_h I__998 (
            .O(N__4265),
            .I(N__4262));
    Odrv12 I__997 (
            .O(N__4262),
            .I(electr_config_in_c_43));
    CascadeMux I__996 (
            .O(N__4259),
            .I(N__4256));
    InMux I__995 (
            .O(N__4256),
            .I(N__4253));
    LocalMux I__994 (
            .O(N__4253),
            .I(shift_regZ0Z_43));
    InMux I__993 (
            .O(N__4250),
            .I(N__4247));
    LocalMux I__992 (
            .O(N__4247),
            .I(N__4244));
    Odrv4 I__991 (
            .O(N__4244),
            .I(shift_regZ0Z_39));
    CascadeMux I__990 (
            .O(N__4241),
            .I(N__4238));
    InMux I__989 (
            .O(N__4238),
            .I(N__4235));
    LocalMux I__988 (
            .O(N__4235),
            .I(N__4232));
    Span4Mux_h I__987 (
            .O(N__4232),
            .I(N__4229));
    Span4Mux_h I__986 (
            .O(N__4229),
            .I(N__4226));
    Sp12to4 I__985 (
            .O(N__4226),
            .I(N__4223));
    Span12Mux_v I__984 (
            .O(N__4223),
            .I(N__4220));
    Span12Mux_v I__983 (
            .O(N__4220),
            .I(N__4217));
    Odrv12 I__982 (
            .O(N__4217),
            .I(electr_config_in_c_40));
    InMux I__981 (
            .O(N__4214),
            .I(N__4211));
    LocalMux I__980 (
            .O(N__4211),
            .I(shift_regZ0Z_40));
    InMux I__979 (
            .O(N__4208),
            .I(N__4154));
    InMux I__978 (
            .O(N__4207),
            .I(N__4154));
    InMux I__977 (
            .O(N__4206),
            .I(N__4154));
    InMux I__976 (
            .O(N__4205),
            .I(N__4145));
    InMux I__975 (
            .O(N__4204),
            .I(N__4145));
    InMux I__974 (
            .O(N__4203),
            .I(N__4145));
    InMux I__973 (
            .O(N__4202),
            .I(N__4145));
    InMux I__972 (
            .O(N__4201),
            .I(N__4136));
    InMux I__971 (
            .O(N__4200),
            .I(N__4136));
    InMux I__970 (
            .O(N__4199),
            .I(N__4136));
    InMux I__969 (
            .O(N__4198),
            .I(N__4136));
    InMux I__968 (
            .O(N__4197),
            .I(N__4127));
    InMux I__967 (
            .O(N__4196),
            .I(N__4127));
    InMux I__966 (
            .O(N__4195),
            .I(N__4127));
    InMux I__965 (
            .O(N__4194),
            .I(N__4127));
    InMux I__964 (
            .O(N__4193),
            .I(N__4109));
    InMux I__963 (
            .O(N__4192),
            .I(N__4109));
    InMux I__962 (
            .O(N__4191),
            .I(N__4109));
    InMux I__961 (
            .O(N__4190),
            .I(N__4102));
    InMux I__960 (
            .O(N__4189),
            .I(N__4102));
    InMux I__959 (
            .O(N__4188),
            .I(N__4102));
    InMux I__958 (
            .O(N__4187),
            .I(N__4097));
    InMux I__957 (
            .O(N__4186),
            .I(N__4097));
    InMux I__956 (
            .O(N__4185),
            .I(N__4086));
    InMux I__955 (
            .O(N__4184),
            .I(N__4086));
    InMux I__954 (
            .O(N__4183),
            .I(N__4086));
    InMux I__953 (
            .O(N__4182),
            .I(N__4086));
    InMux I__952 (
            .O(N__4181),
            .I(N__4086));
    InMux I__951 (
            .O(N__4180),
            .I(N__4075));
    InMux I__950 (
            .O(N__4179),
            .I(N__4075));
    InMux I__949 (
            .O(N__4178),
            .I(N__4075));
    InMux I__948 (
            .O(N__4177),
            .I(N__4075));
    InMux I__947 (
            .O(N__4176),
            .I(N__4075));
    InMux I__946 (
            .O(N__4175),
            .I(N__4070));
    InMux I__945 (
            .O(N__4174),
            .I(N__4070));
    InMux I__944 (
            .O(N__4173),
            .I(N__4059));
    InMux I__943 (
            .O(N__4172),
            .I(N__4059));
    InMux I__942 (
            .O(N__4171),
            .I(N__4059));
    InMux I__941 (
            .O(N__4170),
            .I(N__4059));
    InMux I__940 (
            .O(N__4169),
            .I(N__4059));
    InMux I__939 (
            .O(N__4168),
            .I(N__4042));
    InMux I__938 (
            .O(N__4167),
            .I(N__4042));
    InMux I__937 (
            .O(N__4166),
            .I(N__4042));
    InMux I__936 (
            .O(N__4165),
            .I(N__4042));
    InMux I__935 (
            .O(N__4164),
            .I(N__4042));
    InMux I__934 (
            .O(N__4163),
            .I(N__4042));
    InMux I__933 (
            .O(N__4162),
            .I(N__4042));
    InMux I__932 (
            .O(N__4161),
            .I(N__4042));
    LocalMux I__931 (
            .O(N__4154),
            .I(N__4039));
    LocalMux I__930 (
            .O(N__4145),
            .I(N__4032));
    LocalMux I__929 (
            .O(N__4136),
            .I(N__4032));
    LocalMux I__928 (
            .O(N__4127),
            .I(N__4032));
    InMux I__927 (
            .O(N__4126),
            .I(N__4026));
    InMux I__926 (
            .O(N__4125),
            .I(N__4021));
    InMux I__925 (
            .O(N__4124),
            .I(N__4021));
    InMux I__924 (
            .O(N__4123),
            .I(N__4004));
    InMux I__923 (
            .O(N__4122),
            .I(N__4004));
    InMux I__922 (
            .O(N__4121),
            .I(N__4004));
    InMux I__921 (
            .O(N__4120),
            .I(N__4004));
    InMux I__920 (
            .O(N__4119),
            .I(N__4004));
    InMux I__919 (
            .O(N__4118),
            .I(N__4004));
    InMux I__918 (
            .O(N__4117),
            .I(N__4004));
    InMux I__917 (
            .O(N__4116),
            .I(N__4004));
    LocalMux I__916 (
            .O(N__4109),
            .I(N__4001));
    LocalMux I__915 (
            .O(N__4102),
            .I(N__3998));
    LocalMux I__914 (
            .O(N__4097),
            .I(N__3993));
    LocalMux I__913 (
            .O(N__4086),
            .I(N__3993));
    LocalMux I__912 (
            .O(N__4075),
            .I(N__3990));
    LocalMux I__911 (
            .O(N__4070),
            .I(N__3981));
    LocalMux I__910 (
            .O(N__4059),
            .I(N__3981));
    LocalMux I__909 (
            .O(N__4042),
            .I(N__3981));
    Span4Mux_h I__908 (
            .O(N__4039),
            .I(N__3981));
    Span4Mux_h I__907 (
            .O(N__4032),
            .I(N__3978));
    InMux I__906 (
            .O(N__4031),
            .I(N__3973));
    InMux I__905 (
            .O(N__4030),
            .I(N__3973));
    InMux I__904 (
            .O(N__4029),
            .I(N__3970));
    LocalMux I__903 (
            .O(N__4026),
            .I(current_stateZ0Z_0));
    LocalMux I__902 (
            .O(N__4021),
            .I(current_stateZ0Z_0));
    LocalMux I__901 (
            .O(N__4004),
            .I(current_stateZ0Z_0));
    Odrv4 I__900 (
            .O(N__4001),
            .I(current_stateZ0Z_0));
    Odrv4 I__899 (
            .O(N__3998),
            .I(current_stateZ0Z_0));
    Odrv4 I__898 (
            .O(N__3993),
            .I(current_stateZ0Z_0));
    Odrv12 I__897 (
            .O(N__3990),
            .I(current_stateZ0Z_0));
    Odrv4 I__896 (
            .O(N__3981),
            .I(current_stateZ0Z_0));
    Odrv4 I__895 (
            .O(N__3978),
            .I(current_stateZ0Z_0));
    LocalMux I__894 (
            .O(N__3973),
            .I(current_stateZ0Z_0));
    LocalMux I__893 (
            .O(N__3970),
            .I(current_stateZ0Z_0));
    InMux I__892 (
            .O(N__3947),
            .I(N__3944));
    LocalMux I__891 (
            .O(N__3944),
            .I(shift_regZ0Z_41));
    CascadeMux I__890 (
            .O(N__3941),
            .I(N__3938));
    InMux I__889 (
            .O(N__3938),
            .I(N__3935));
    LocalMux I__888 (
            .O(N__3935),
            .I(N__3932));
    Span4Mux_v I__887 (
            .O(N__3932),
            .I(N__3929));
    Sp12to4 I__886 (
            .O(N__3929),
            .I(N__3926));
    Span12Mux_h I__885 (
            .O(N__3926),
            .I(N__3923));
    Odrv12 I__884 (
            .O(N__3923),
            .I(electr_config_in_c_42));
    CascadeMux I__883 (
            .O(N__3920),
            .I(N__3907));
    InMux I__882 (
            .O(N__3919),
            .I(N__3904));
    CascadeMux I__881 (
            .O(N__3918),
            .I(N__3899));
    CascadeMux I__880 (
            .O(N__3917),
            .I(N__3896));
    CascadeMux I__879 (
            .O(N__3916),
            .I(N__3884));
    CascadeMux I__878 (
            .O(N__3915),
            .I(N__3881));
    CascadeMux I__877 (
            .O(N__3914),
            .I(N__3878));
    CascadeMux I__876 (
            .O(N__3913),
            .I(N__3875));
    CascadeMux I__875 (
            .O(N__3912),
            .I(N__3872));
    CascadeMux I__874 (
            .O(N__3911),
            .I(N__3862));
    CascadeMux I__873 (
            .O(N__3910),
            .I(N__3859));
    InMux I__872 (
            .O(N__3907),
            .I(N__3844));
    LocalMux I__871 (
            .O(N__3904),
            .I(N__3841));
    InMux I__870 (
            .O(N__3903),
            .I(N__3836));
    InMux I__869 (
            .O(N__3902),
            .I(N__3836));
    InMux I__868 (
            .O(N__3899),
            .I(N__3827));
    InMux I__867 (
            .O(N__3896),
            .I(N__3827));
    InMux I__866 (
            .O(N__3895),
            .I(N__3827));
    InMux I__865 (
            .O(N__3894),
            .I(N__3827));
    CascadeMux I__864 (
            .O(N__3893),
            .I(N__3824));
    CascadeMux I__863 (
            .O(N__3892),
            .I(N__3821));
    CascadeMux I__862 (
            .O(N__3891),
            .I(N__3817));
    CascadeMux I__861 (
            .O(N__3890),
            .I(N__3801));
    CascadeMux I__860 (
            .O(N__3889),
            .I(N__3792));
    InMux I__859 (
            .O(N__3888),
            .I(N__3788));
    InMux I__858 (
            .O(N__3887),
            .I(N__3783));
    InMux I__857 (
            .O(N__3884),
            .I(N__3783));
    InMux I__856 (
            .O(N__3881),
            .I(N__3772));
    InMux I__855 (
            .O(N__3878),
            .I(N__3772));
    InMux I__854 (
            .O(N__3875),
            .I(N__3772));
    InMux I__853 (
            .O(N__3872),
            .I(N__3772));
    InMux I__852 (
            .O(N__3871),
            .I(N__3772));
    InMux I__851 (
            .O(N__3870),
            .I(N__3767));
    InMux I__850 (
            .O(N__3869),
            .I(N__3767));
    InMux I__849 (
            .O(N__3868),
            .I(N__3754));
    InMux I__848 (
            .O(N__3867),
            .I(N__3754));
    InMux I__847 (
            .O(N__3866),
            .I(N__3754));
    InMux I__846 (
            .O(N__3865),
            .I(N__3754));
    InMux I__845 (
            .O(N__3862),
            .I(N__3754));
    InMux I__844 (
            .O(N__3859),
            .I(N__3754));
    InMux I__843 (
            .O(N__3858),
            .I(N__3749));
    InMux I__842 (
            .O(N__3857),
            .I(N__3749));
    InMux I__841 (
            .O(N__3856),
            .I(N__3742));
    InMux I__840 (
            .O(N__3855),
            .I(N__3742));
    InMux I__839 (
            .O(N__3854),
            .I(N__3742));
    InMux I__838 (
            .O(N__3853),
            .I(N__3737));
    InMux I__837 (
            .O(N__3852),
            .I(N__3737));
    InMux I__836 (
            .O(N__3851),
            .I(N__3732));
    InMux I__835 (
            .O(N__3850),
            .I(N__3732));
    InMux I__834 (
            .O(N__3849),
            .I(N__3725));
    InMux I__833 (
            .O(N__3848),
            .I(N__3725));
    InMux I__832 (
            .O(N__3847),
            .I(N__3725));
    LocalMux I__831 (
            .O(N__3844),
            .I(N__3722));
    Sp12to4 I__830 (
            .O(N__3841),
            .I(N__3717));
    LocalMux I__829 (
            .O(N__3836),
            .I(N__3717));
    LocalMux I__828 (
            .O(N__3827),
            .I(N__3714));
    InMux I__827 (
            .O(N__3824),
            .I(N__3707));
    InMux I__826 (
            .O(N__3821),
            .I(N__3707));
    InMux I__825 (
            .O(N__3820),
            .I(N__3707));
    InMux I__824 (
            .O(N__3817),
            .I(N__3700));
    InMux I__823 (
            .O(N__3816),
            .I(N__3700));
    InMux I__822 (
            .O(N__3815),
            .I(N__3700));
    InMux I__821 (
            .O(N__3814),
            .I(N__3691));
    InMux I__820 (
            .O(N__3813),
            .I(N__3691));
    InMux I__819 (
            .O(N__3812),
            .I(N__3691));
    InMux I__818 (
            .O(N__3811),
            .I(N__3691));
    InMux I__817 (
            .O(N__3810),
            .I(N__3686));
    InMux I__816 (
            .O(N__3809),
            .I(N__3686));
    InMux I__815 (
            .O(N__3808),
            .I(N__3683));
    InMux I__814 (
            .O(N__3807),
            .I(N__3672));
    InMux I__813 (
            .O(N__3806),
            .I(N__3672));
    InMux I__812 (
            .O(N__3805),
            .I(N__3672));
    InMux I__811 (
            .O(N__3804),
            .I(N__3672));
    InMux I__810 (
            .O(N__3801),
            .I(N__3672));
    InMux I__809 (
            .O(N__3800),
            .I(N__3665));
    InMux I__808 (
            .O(N__3799),
            .I(N__3665));
    InMux I__807 (
            .O(N__3798),
            .I(N__3665));
    InMux I__806 (
            .O(N__3797),
            .I(N__3662));
    InMux I__805 (
            .O(N__3796),
            .I(N__3657));
    InMux I__804 (
            .O(N__3795),
            .I(N__3657));
    InMux I__803 (
            .O(N__3792),
            .I(N__3652));
    InMux I__802 (
            .O(N__3791),
            .I(N__3652));
    LocalMux I__801 (
            .O(N__3788),
            .I(N__3647));
    LocalMux I__800 (
            .O(N__3783),
            .I(N__3647));
    LocalMux I__799 (
            .O(N__3772),
            .I(N__3638));
    LocalMux I__798 (
            .O(N__3767),
            .I(N__3638));
    LocalMux I__797 (
            .O(N__3754),
            .I(N__3638));
    LocalMux I__796 (
            .O(N__3749),
            .I(N__3638));
    LocalMux I__795 (
            .O(N__3742),
            .I(N__3629));
    LocalMux I__794 (
            .O(N__3737),
            .I(N__3629));
    LocalMux I__793 (
            .O(N__3732),
            .I(N__3629));
    LocalMux I__792 (
            .O(N__3725),
            .I(N__3629));
    Span4Mux_s2_v I__791 (
            .O(N__3722),
            .I(N__3626));
    Span12Mux_v I__790 (
            .O(N__3717),
            .I(N__3621));
    Span12Mux_s4_v I__789 (
            .O(N__3714),
            .I(N__3621));
    LocalMux I__788 (
            .O(N__3707),
            .I(N__3610));
    LocalMux I__787 (
            .O(N__3700),
            .I(N__3610));
    LocalMux I__786 (
            .O(N__3691),
            .I(N__3610));
    LocalMux I__785 (
            .O(N__3686),
            .I(N__3610));
    LocalMux I__784 (
            .O(N__3683),
            .I(N__3610));
    LocalMux I__783 (
            .O(N__3672),
            .I(current_stateZ0Z_1));
    LocalMux I__782 (
            .O(N__3665),
            .I(current_stateZ0Z_1));
    LocalMux I__781 (
            .O(N__3662),
            .I(current_stateZ0Z_1));
    LocalMux I__780 (
            .O(N__3657),
            .I(current_stateZ0Z_1));
    LocalMux I__779 (
            .O(N__3652),
            .I(current_stateZ0Z_1));
    Odrv4 I__778 (
            .O(N__3647),
            .I(current_stateZ0Z_1));
    Odrv4 I__777 (
            .O(N__3638),
            .I(current_stateZ0Z_1));
    Odrv12 I__776 (
            .O(N__3629),
            .I(current_stateZ0Z_1));
    Odrv4 I__775 (
            .O(N__3626),
            .I(current_stateZ0Z_1));
    Odrv12 I__774 (
            .O(N__3621),
            .I(current_stateZ0Z_1));
    Odrv4 I__773 (
            .O(N__3610),
            .I(current_stateZ0Z_1));
    InMux I__772 (
            .O(N__3587),
            .I(N__3584));
    LocalMux I__771 (
            .O(N__3584),
            .I(shift_regZ0Z_42));
    ClkMux I__770 (
            .O(N__3581),
            .I(N__3527));
    ClkMux I__769 (
            .O(N__3580),
            .I(N__3527));
    ClkMux I__768 (
            .O(N__3579),
            .I(N__3527));
    ClkMux I__767 (
            .O(N__3578),
            .I(N__3527));
    ClkMux I__766 (
            .O(N__3577),
            .I(N__3527));
    ClkMux I__765 (
            .O(N__3576),
            .I(N__3527));
    ClkMux I__764 (
            .O(N__3575),
            .I(N__3527));
    ClkMux I__763 (
            .O(N__3574),
            .I(N__3527));
    ClkMux I__762 (
            .O(N__3573),
            .I(N__3527));
    ClkMux I__761 (
            .O(N__3572),
            .I(N__3527));
    ClkMux I__760 (
            .O(N__3571),
            .I(N__3527));
    ClkMux I__759 (
            .O(N__3570),
            .I(N__3527));
    ClkMux I__758 (
            .O(N__3569),
            .I(N__3527));
    ClkMux I__757 (
            .O(N__3568),
            .I(N__3527));
    ClkMux I__756 (
            .O(N__3567),
            .I(N__3527));
    ClkMux I__755 (
            .O(N__3566),
            .I(N__3527));
    ClkMux I__754 (
            .O(N__3565),
            .I(N__3527));
    ClkMux I__753 (
            .O(N__3564),
            .I(N__3527));
    GlobalMux I__752 (
            .O(N__3527),
            .I(N__3524));
    gio2CtrlBuf I__751 (
            .O(N__3524),
            .I(CLK_c_g));
    SRMux I__750 (
            .O(N__3521),
            .I(N__3467));
    SRMux I__749 (
            .O(N__3520),
            .I(N__3467));
    SRMux I__748 (
            .O(N__3519),
            .I(N__3467));
    SRMux I__747 (
            .O(N__3518),
            .I(N__3467));
    SRMux I__746 (
            .O(N__3517),
            .I(N__3467));
    SRMux I__745 (
            .O(N__3516),
            .I(N__3467));
    SRMux I__744 (
            .O(N__3515),
            .I(N__3467));
    SRMux I__743 (
            .O(N__3514),
            .I(N__3467));
    SRMux I__742 (
            .O(N__3513),
            .I(N__3467));
    SRMux I__741 (
            .O(N__3512),
            .I(N__3467));
    SRMux I__740 (
            .O(N__3511),
            .I(N__3467));
    SRMux I__739 (
            .O(N__3510),
            .I(N__3467));
    SRMux I__738 (
            .O(N__3509),
            .I(N__3467));
    SRMux I__737 (
            .O(N__3508),
            .I(N__3467));
    SRMux I__736 (
            .O(N__3507),
            .I(N__3467));
    SRMux I__735 (
            .O(N__3506),
            .I(N__3467));
    SRMux I__734 (
            .O(N__3505),
            .I(N__3467));
    SRMux I__733 (
            .O(N__3504),
            .I(N__3467));
    GlobalMux I__732 (
            .O(N__3467),
            .I(N__3464));
    gio2CtrlBuf I__731 (
            .O(N__3464),
            .I(RST_N_c_i_g));
    InMux I__730 (
            .O(N__3461),
            .I(N__3458));
    LocalMux I__729 (
            .O(N__3458),
            .I(shift_regZ0Z_0));
    CascadeMux I__728 (
            .O(N__3455),
            .I(N__3452));
    InMux I__727 (
            .O(N__3452),
            .I(N__3449));
    LocalMux I__726 (
            .O(N__3449),
            .I(N__3446));
    IoSpan4Mux I__725 (
            .O(N__3446),
            .I(N__3443));
    Odrv4 I__724 (
            .O(N__3443),
            .I(electr_config_in_c_1));
    InMux I__723 (
            .O(N__3440),
            .I(N__3437));
    LocalMux I__722 (
            .O(N__3437),
            .I(shift_regZ0Z_1));
    InMux I__721 (
            .O(N__3434),
            .I(N__3431));
    LocalMux I__720 (
            .O(N__3431),
            .I(N__3428));
    Span4Mux_h I__719 (
            .O(N__3428),
            .I(N__3425));
    Span4Mux_h I__718 (
            .O(N__3425),
            .I(N__3422));
    Span4Mux_h I__717 (
            .O(N__3422),
            .I(N__3419));
    Span4Mux_h I__716 (
            .O(N__3419),
            .I(N__3416));
    Odrv4 I__715 (
            .O(N__3416),
            .I(electr_config_in_c_3));
    InMux I__714 (
            .O(N__3413),
            .I(N__3410));
    LocalMux I__713 (
            .O(N__3410),
            .I(shift_regZ0Z_2));
    InMux I__712 (
            .O(N__3407),
            .I(N__3404));
    LocalMux I__711 (
            .O(N__3404),
            .I(N__3401));
    Odrv4 I__710 (
            .O(N__3401),
            .I(shift_regZ0Z_3));
    InMux I__709 (
            .O(N__3398),
            .I(N__3395));
    LocalMux I__708 (
            .O(N__3395),
            .I(CONSTANT_ONE_NET));
    CascadeMux I__707 (
            .O(N__3392),
            .I(N__3389));
    InMux I__706 (
            .O(N__3389),
            .I(N__3386));
    LocalMux I__705 (
            .O(N__3386),
            .I(N__3383));
    Span12Mux_v I__704 (
            .O(N__3383),
            .I(N__3380));
    Span12Mux_h I__703 (
            .O(N__3380),
            .I(N__3377));
    Span12Mux_v I__702 (
            .O(N__3377),
            .I(N__3374));
    Odrv12 I__701 (
            .O(N__3374),
            .I(electr_config_in_c_38));
    InMux I__700 (
            .O(N__3371),
            .I(N__3368));
    LocalMux I__699 (
            .O(N__3368),
            .I(N__3365));
    Odrv4 I__698 (
            .O(N__3365),
            .I(shift_regZ0Z_36));
    CascadeMux I__697 (
            .O(N__3362),
            .I(N__3359));
    InMux I__696 (
            .O(N__3359),
            .I(N__3356));
    LocalMux I__695 (
            .O(N__3356),
            .I(N__3353));
    Span4Mux_v I__694 (
            .O(N__3353),
            .I(N__3350));
    Sp12to4 I__693 (
            .O(N__3350),
            .I(N__3347));
    Span12Mux_h I__692 (
            .O(N__3347),
            .I(N__3344));
    Span12Mux_v I__691 (
            .O(N__3344),
            .I(N__3341));
    Odrv12 I__690 (
            .O(N__3341),
            .I(electr_config_in_c_37));
    InMux I__689 (
            .O(N__3338),
            .I(N__3335));
    LocalMux I__688 (
            .O(N__3335),
            .I(shift_regZ0Z_37));
    InMux I__687 (
            .O(N__3332),
            .I(N__3329));
    LocalMux I__686 (
            .O(N__3329),
            .I(shift_regZ0Z_38));
    CascadeMux I__685 (
            .O(N__3326),
            .I(N__3323));
    InMux I__684 (
            .O(N__3323),
            .I(N__3320));
    LocalMux I__683 (
            .O(N__3320),
            .I(N__3317));
    Span4Mux_v I__682 (
            .O(N__3317),
            .I(N__3314));
    Sp12to4 I__681 (
            .O(N__3314),
            .I(N__3311));
    Span12Mux_h I__680 (
            .O(N__3311),
            .I(N__3308));
    Span12Mux_v I__679 (
            .O(N__3308),
            .I(N__3305));
    Odrv12 I__678 (
            .O(N__3305),
            .I(electr_config_in_c_39));
    CascadeMux I__677 (
            .O(N__3302),
            .I(N__3299));
    InMux I__676 (
            .O(N__3299),
            .I(N__3296));
    LocalMux I__675 (
            .O(N__3296),
            .I(N__3293));
    Span12Mux_h I__674 (
            .O(N__3293),
            .I(N__3290));
    Span12Mux_v I__673 (
            .O(N__3290),
            .I(N__3287));
    Span12Mux_v I__672 (
            .O(N__3287),
            .I(N__3284));
    Odrv12 I__671 (
            .O(N__3284),
            .I(electr_config_in_c_41));
    InMux I__670 (
            .O(N__3281),
            .I(N__3278));
    LocalMux I__669 (
            .O(N__3278),
            .I(N__3275));
    Span4Mux_v I__668 (
            .O(N__3275),
            .I(N__3272));
    Sp12to4 I__667 (
            .O(N__3272),
            .I(N__3269));
    Span12Mux_h I__666 (
            .O(N__3269),
            .I(N__3266));
    Odrv12 I__665 (
            .O(N__3266),
            .I(electr_config_in_c_44));
    InMux I__664 (
            .O(N__3263),
            .I(N__3260));
    LocalMux I__663 (
            .O(N__3260),
            .I(N__3257));
    Span4Mux_h I__662 (
            .O(N__3257),
            .I(N__3254));
    Odrv4 I__661 (
            .O(N__3254),
            .I(shift_regZ0Z_44));
    CascadeMux I__660 (
            .O(N__3251),
            .I(N__3248));
    InMux I__659 (
            .O(N__3248),
            .I(N__3245));
    LocalMux I__658 (
            .O(N__3245),
            .I(N__3242));
    Span12Mux_s5_v I__657 (
            .O(N__3242),
            .I(N__3239));
    Span12Mux_h I__656 (
            .O(N__3239),
            .I(N__3236));
    Odrv12 I__655 (
            .O(N__3236),
            .I(electr_config_in_c_48));
    CascadeMux I__654 (
            .O(N__3233),
            .I(N__3230));
    InMux I__653 (
            .O(N__3230),
            .I(N__3227));
    LocalMux I__652 (
            .O(N__3227),
            .I(N__3224));
    Sp12to4 I__651 (
            .O(N__3224),
            .I(N__3221));
    Span12Mux_h I__650 (
            .O(N__3221),
            .I(N__3218));
    Span12Mux_h I__649 (
            .O(N__3218),
            .I(N__3215));
    Odrv12 I__648 (
            .O(N__3215),
            .I(electr_config_in_c_45));
    InMux I__647 (
            .O(N__3212),
            .I(N__3209));
    LocalMux I__646 (
            .O(N__3209),
            .I(shift_regZ0Z_48));
    CascadeMux I__645 (
            .O(N__3206),
            .I(N__3203));
    InMux I__644 (
            .O(N__3203),
            .I(N__3200));
    LocalMux I__643 (
            .O(N__3200),
            .I(N__3197));
    Span12Mux_v I__642 (
            .O(N__3197),
            .I(N__3194));
    Span12Mux_h I__641 (
            .O(N__3194),
            .I(N__3191));
    Odrv12 I__640 (
            .O(N__3191),
            .I(electr_config_in_c_49));
    InMux I__639 (
            .O(N__3188),
            .I(N__3185));
    LocalMux I__638 (
            .O(N__3185),
            .I(N__3182));
    Odrv4 I__637 (
            .O(N__3182),
            .I(shift_regZ0Z_49));
    InMux I__636 (
            .O(N__3179),
            .I(N__3176));
    LocalMux I__635 (
            .O(N__3176),
            .I(counter_sr_cry_0_THRU_CO));
    InMux I__634 (
            .O(N__3173),
            .I(N__3167));
    InMux I__633 (
            .O(N__3172),
            .I(N__3164));
    InMux I__632 (
            .O(N__3171),
            .I(N__3161));
    InMux I__631 (
            .O(N__3170),
            .I(N__3158));
    LocalMux I__630 (
            .O(N__3167),
            .I(counter_srZ0Z_1));
    LocalMux I__629 (
            .O(N__3164),
            .I(counter_srZ0Z_1));
    LocalMux I__628 (
            .O(N__3161),
            .I(counter_srZ0Z_1));
    LocalMux I__627 (
            .O(N__3158),
            .I(counter_srZ0Z_1));
    InMux I__626 (
            .O(N__3149),
            .I(N__3138));
    InMux I__625 (
            .O(N__3148),
            .I(N__3138));
    InMux I__624 (
            .O(N__3147),
            .I(N__3138));
    InMux I__623 (
            .O(N__3146),
            .I(N__3135));
    InMux I__622 (
            .O(N__3145),
            .I(N__3132));
    LocalMux I__621 (
            .O(N__3138),
            .I(counter_sre_0));
    LocalMux I__620 (
            .O(N__3135),
            .I(counter_sre_0));
    LocalMux I__619 (
            .O(N__3132),
            .I(counter_sre_0));
    CascadeMux I__618 (
            .O(N__3125),
            .I(N__3120));
    CascadeMux I__617 (
            .O(N__3124),
            .I(N__3116));
    CascadeMux I__616 (
            .O(N__3123),
            .I(N__3113));
    InMux I__615 (
            .O(N__3120),
            .I(N__3106));
    InMux I__614 (
            .O(N__3119),
            .I(N__3106));
    InMux I__613 (
            .O(N__3116),
            .I(N__3099));
    InMux I__612 (
            .O(N__3113),
            .I(N__3099));
    InMux I__611 (
            .O(N__3112),
            .I(N__3099));
    InMux I__610 (
            .O(N__3111),
            .I(N__3096));
    LocalMux I__609 (
            .O(N__3106),
            .I(next_state32_i));
    LocalMux I__608 (
            .O(N__3099),
            .I(next_state32_i));
    LocalMux I__607 (
            .O(N__3096),
            .I(next_state32_i));
    CascadeMux I__606 (
            .O(N__3089),
            .I(N__3086));
    InMux I__605 (
            .O(N__3086),
            .I(N__3080));
    InMux I__604 (
            .O(N__3085),
            .I(N__3077));
    InMux I__603 (
            .O(N__3084),
            .I(N__3074));
    InMux I__602 (
            .O(N__3083),
            .I(N__3071));
    LocalMux I__601 (
            .O(N__3080),
            .I(counter_srZ0Z_0));
    LocalMux I__600 (
            .O(N__3077),
            .I(counter_srZ0Z_0));
    LocalMux I__599 (
            .O(N__3074),
            .I(counter_srZ0Z_0));
    LocalMux I__598 (
            .O(N__3071),
            .I(counter_srZ0Z_0));
    CascadeMux I__597 (
            .O(N__3062),
            .I(N__3059));
    InMux I__596 (
            .O(N__3059),
            .I(N__3056));
    LocalMux I__595 (
            .O(N__3056),
            .I(N__3053));
    Span4Mux_v I__594 (
            .O(N__3053),
            .I(N__3050));
    Sp12to4 I__593 (
            .O(N__3050),
            .I(N__3047));
    Span12Mux_h I__592 (
            .O(N__3047),
            .I(N__3044));
    Odrv12 I__591 (
            .O(N__3044),
            .I(electr_config_in_c_47));
    InMux I__590 (
            .O(N__3041),
            .I(N__3038));
    LocalMux I__589 (
            .O(N__3038),
            .I(shift_regZ0Z_47));
    InMux I__588 (
            .O(N__3035),
            .I(N__3032));
    LocalMux I__587 (
            .O(N__3032),
            .I(N__3029));
    Span12Mux_h I__586 (
            .O(N__3029),
            .I(N__3026));
    Odrv12 I__585 (
            .O(N__3026),
            .I(electr_config_in_c_46));
    CascadeMux I__584 (
            .O(N__3023),
            .I(N__3020));
    InMux I__583 (
            .O(N__3020),
            .I(N__3017));
    LocalMux I__582 (
            .O(N__3017),
            .I(shift_regZ0Z_45));
    InMux I__581 (
            .O(N__3014),
            .I(N__3011));
    LocalMux I__580 (
            .O(N__3011),
            .I(shift_regZ0Z_46));
    InMux I__579 (
            .O(N__3008),
            .I(N__3005));
    LocalMux I__578 (
            .O(N__3005),
            .I(N__3002));
    Span4Mux_v I__577 (
            .O(N__3002),
            .I(N__2999));
    Sp12to4 I__576 (
            .O(N__2999),
            .I(N__2996));
    Span12Mux_h I__575 (
            .O(N__2996),
            .I(N__2993));
    Odrv12 I__574 (
            .O(N__2993),
            .I(electr_config_in_c_2));
    InMux I__573 (
            .O(N__2990),
            .I(N__2987));
    LocalMux I__572 (
            .O(N__2987),
            .I(N__2984));
    Span4Mux_h I__571 (
            .O(N__2984),
            .I(N__2981));
    Span4Mux_h I__570 (
            .O(N__2981),
            .I(N__2978));
    Span4Mux_h I__569 (
            .O(N__2978),
            .I(N__2975));
    Span4Mux_h I__568 (
            .O(N__2975),
            .I(N__2972));
    Odrv4 I__567 (
            .O(N__2972),
            .I(electr_config_in_c_0));
    InMux I__566 (
            .O(N__2969),
            .I(N__2966));
    LocalMux I__565 (
            .O(N__2966),
            .I(shift_regZ0Z_33));
    InMux I__564 (
            .O(N__2963),
            .I(N__2960));
    LocalMux I__563 (
            .O(N__2960),
            .I(N__2957));
    Span4Mux_v I__562 (
            .O(N__2957),
            .I(N__2954));
    Sp12to4 I__561 (
            .O(N__2954),
            .I(N__2951));
    Span12Mux_h I__560 (
            .O(N__2951),
            .I(N__2948));
    Span12Mux_v I__559 (
            .O(N__2948),
            .I(N__2945));
    Odrv12 I__558 (
            .O(N__2945),
            .I(electr_config_in_c_34));
    InMux I__557 (
            .O(N__2942),
            .I(N__2939));
    LocalMux I__556 (
            .O(N__2939),
            .I(shift_regZ0Z_34));
    InMux I__555 (
            .O(N__2936),
            .I(counter_sr_cry_0));
    InMux I__554 (
            .O(N__2933),
            .I(counter_sr_cry_1));
    InMux I__553 (
            .O(N__2930),
            .I(N__2924));
    InMux I__552 (
            .O(N__2929),
            .I(N__2921));
    InMux I__551 (
            .O(N__2928),
            .I(N__2916));
    InMux I__550 (
            .O(N__2927),
            .I(N__2916));
    LocalMux I__549 (
            .O(N__2924),
            .I(counter_srZ0Z_3));
    LocalMux I__548 (
            .O(N__2921),
            .I(counter_srZ0Z_3));
    LocalMux I__547 (
            .O(N__2916),
            .I(counter_srZ0Z_3));
    InMux I__546 (
            .O(N__2909),
            .I(N__2906));
    LocalMux I__545 (
            .O(N__2906),
            .I(counter_sr_cry_2_THRU_CO));
    InMux I__544 (
            .O(N__2903),
            .I(counter_sr_cry_2));
    InMux I__543 (
            .O(N__2900),
            .I(N__2895));
    InMux I__542 (
            .O(N__2899),
            .I(N__2892));
    InMux I__541 (
            .O(N__2898),
            .I(N__2889));
    LocalMux I__540 (
            .O(N__2895),
            .I(counter_srZ0Z_4));
    LocalMux I__539 (
            .O(N__2892),
            .I(counter_srZ0Z_4));
    LocalMux I__538 (
            .O(N__2889),
            .I(counter_srZ0Z_4));
    InMux I__537 (
            .O(N__2882),
            .I(N__2879));
    LocalMux I__536 (
            .O(N__2879),
            .I(counter_sr_cry_3_THRU_CO));
    InMux I__535 (
            .O(N__2876),
            .I(counter_sr_cry_3));
    InMux I__534 (
            .O(N__2873),
            .I(counter_sr_cry_4));
    CascadeMux I__533 (
            .O(N__2870),
            .I(N__2867));
    InMux I__532 (
            .O(N__2867),
            .I(N__2863));
    InMux I__531 (
            .O(N__2866),
            .I(N__2860));
    LocalMux I__530 (
            .O(N__2863),
            .I(counter_srZ0Z_5));
    LocalMux I__529 (
            .O(N__2860),
            .I(counter_srZ0Z_5));
    InMux I__528 (
            .O(N__2855),
            .I(N__2852));
    LocalMux I__527 (
            .O(N__2852),
            .I(counter_sr_cry_1_THRU_CO));
    CascadeMux I__526 (
            .O(N__2849),
            .I(N__2844));
    InMux I__525 (
            .O(N__2848),
            .I(N__2840));
    InMux I__524 (
            .O(N__2847),
            .I(N__2837));
    InMux I__523 (
            .O(N__2844),
            .I(N__2834));
    InMux I__522 (
            .O(N__2843),
            .I(N__2831));
    LocalMux I__521 (
            .O(N__2840),
            .I(counter_srZ0Z_2));
    LocalMux I__520 (
            .O(N__2837),
            .I(counter_srZ0Z_2));
    LocalMux I__519 (
            .O(N__2834),
            .I(counter_srZ0Z_2));
    LocalMux I__518 (
            .O(N__2831),
            .I(counter_srZ0Z_2));
    CascadeMux I__517 (
            .O(N__2822),
            .I(N_115_mux_cascade_));
    CascadeMux I__516 (
            .O(N__2819),
            .I(counter_sre_0_cascade_));
    InMux I__515 (
            .O(N__2816),
            .I(N__2812));
    InMux I__514 (
            .O(N__2815),
            .I(N__2809));
    LocalMux I__513 (
            .O(N__2812),
            .I(counter_sre_0_2));
    LocalMux I__512 (
            .O(N__2809),
            .I(counter_sre_0_2));
    CascadeMux I__511 (
            .O(N__2804),
            .I(un22_next_state_1_cascade_));
    InMux I__510 (
            .O(N__2801),
            .I(N__2798));
    LocalMux I__509 (
            .O(N__2798),
            .I(N_118_mux));
    InMux I__508 (
            .O(N__2795),
            .I(N__2792));
    LocalMux I__507 (
            .O(N__2792),
            .I(next_state32));
    CascadeMux I__506 (
            .O(N__2789),
            .I(N__2786));
    InMux I__505 (
            .O(N__2786),
            .I(N__2783));
    LocalMux I__504 (
            .O(N__2783),
            .I(N__2780));
    Span4Mux_v I__503 (
            .O(N__2780),
            .I(N__2777));
    Span4Mux_h I__502 (
            .O(N__2777),
            .I(N__2774));
    Sp12to4 I__501 (
            .O(N__2774),
            .I(N__2771));
    Span12Mux_h I__500 (
            .O(N__2771),
            .I(N__2768));
    Span12Mux_v I__499 (
            .O(N__2768),
            .I(N__2765));
    Odrv12 I__498 (
            .O(N__2765),
            .I(electr_config_in_c_36));
    CascadeMux I__497 (
            .O(N__2762),
            .I(N__2759));
    InMux I__496 (
            .O(N__2759),
            .I(N__2756));
    LocalMux I__495 (
            .O(N__2756),
            .I(N__2753));
    Sp12to4 I__494 (
            .O(N__2753),
            .I(N__2750));
    Span12Mux_v I__493 (
            .O(N__2750),
            .I(N__2747));
    Span12Mux_h I__492 (
            .O(N__2747),
            .I(N__2744));
    Odrv12 I__491 (
            .O(N__2744),
            .I(electr_config_in_c_35));
    InMux I__490 (
            .O(N__2741),
            .I(N__2738));
    LocalMux I__489 (
            .O(N__2738),
            .I(shift_regZ0Z_35));
    InMux I__488 (
            .O(N__2735),
            .I(N__2732));
    LocalMux I__487 (
            .O(N__2732),
            .I(N__2729));
    Span12Mux_h I__486 (
            .O(N__2729),
            .I(N__2726));
    Odrv12 I__485 (
            .O(N__2726),
            .I(electr_config_in_c_7));
    InMux I__484 (
            .O(N__2723),
            .I(N__2720));
    LocalMux I__483 (
            .O(N__2720),
            .I(N__2717));
    Span4Mux_s2_v I__482 (
            .O(N__2717),
            .I(N__2714));
    Sp12to4 I__481 (
            .O(N__2714),
            .I(N__2711));
    Span12Mux_h I__480 (
            .O(N__2711),
            .I(N__2708));
    Span12Mux_h I__479 (
            .O(N__2708),
            .I(N__2705));
    Odrv12 I__478 (
            .O(N__2705),
            .I(electr_config_in_c_5));
    CascadeMux I__477 (
            .O(N__2702),
            .I(N__2699));
    InMux I__476 (
            .O(N__2699),
            .I(N__2696));
    LocalMux I__475 (
            .O(N__2696),
            .I(N__2693));
    Span4Mux_v I__474 (
            .O(N__2693),
            .I(N__2690));
    Span4Mux_h I__473 (
            .O(N__2690),
            .I(N__2687));
    Sp12to4 I__472 (
            .O(N__2687),
            .I(N__2684));
    Span12Mux_h I__471 (
            .O(N__2684),
            .I(N__2681));
    Odrv12 I__470 (
            .O(N__2681),
            .I(electr_config_in_c_4));
    InMux I__469 (
            .O(N__2678),
            .I(N__2675));
    LocalMux I__468 (
            .O(N__2675),
            .I(shift_regZ0Z_4));
    InMux I__467 (
            .O(N__2672),
            .I(N__2669));
    LocalMux I__466 (
            .O(N__2669),
            .I(N__2666));
    Span4Mux_v I__465 (
            .O(N__2666),
            .I(N__2663));
    Span4Mux_h I__464 (
            .O(N__2663),
            .I(N__2660));
    Sp12to4 I__463 (
            .O(N__2660),
            .I(N__2657));
    Span12Mux_h I__462 (
            .O(N__2657),
            .I(N__2654));
    Odrv12 I__461 (
            .O(N__2654),
            .I(electr_config_in_c_6));
    InMux I__460 (
            .O(N__2651),
            .I(N__2648));
    LocalMux I__459 (
            .O(N__2648),
            .I(shift_regZ0Z_5));
    InMux I__458 (
            .O(N__2645),
            .I(N__2642));
    LocalMux I__457 (
            .O(N__2642),
            .I(shift_regZ0Z_6));
    InMux I__456 (
            .O(N__2639),
            .I(N__2636));
    LocalMux I__455 (
            .O(N__2636),
            .I(shift_regZ0Z_7));
    CascadeMux I__454 (
            .O(N__2633),
            .I(N__2630));
    InMux I__453 (
            .O(N__2630),
            .I(N__2627));
    LocalMux I__452 (
            .O(N__2627),
            .I(N__2624));
    Sp12to4 I__451 (
            .O(N__2624),
            .I(N__2621));
    Span12Mux_v I__450 (
            .O(N__2621),
            .I(N__2618));
    Span12Mux_h I__449 (
            .O(N__2618),
            .I(N__2615));
    Odrv12 I__448 (
            .O(N__2615),
            .I(electr_config_in_c_8));
    CascadeMux I__447 (
            .O(N__2612),
            .I(N__2609));
    InMux I__446 (
            .O(N__2609),
            .I(N__2606));
    LocalMux I__445 (
            .O(N__2606),
            .I(N__2603));
    Span4Mux_v I__444 (
            .O(N__2603),
            .I(N__2600));
    Sp12to4 I__443 (
            .O(N__2600),
            .I(N__2597));
    Span12Mux_h I__442 (
            .O(N__2597),
            .I(N__2594));
    Odrv12 I__441 (
            .O(N__2594),
            .I(electr_config_in_c_50));
    InMux I__440 (
            .O(N__2591),
            .I(N__2588));
    LocalMux I__439 (
            .O(N__2588),
            .I(shift_regZ0Z_50));
    InMux I__438 (
            .O(N__2585),
            .I(N__2582));
    LocalMux I__437 (
            .O(N__2582),
            .I(N__2579));
    Span12Mux_h I__436 (
            .O(N__2579),
            .I(N__2576));
    Odrv12 I__435 (
            .O(N__2576),
            .I(electr_config_in_c_9));
    InMux I__434 (
            .O(N__2573),
            .I(N__2570));
    LocalMux I__433 (
            .O(N__2570),
            .I(shift_regZ0Z_8));
    InMux I__432 (
            .O(N__2567),
            .I(N__2564));
    LocalMux I__431 (
            .O(N__2564),
            .I(N__2561));
    Span4Mux_h I__430 (
            .O(N__2561),
            .I(N__2558));
    Odrv4 I__429 (
            .O(N__2558),
            .I(shift_regZ0Z_9));
    CascadeMux I__428 (
            .O(N__2555),
            .I(N__2552));
    InMux I__427 (
            .O(N__2552),
            .I(N__2549));
    LocalMux I__426 (
            .O(N__2549),
            .I(N__2546));
    Span4Mux_v I__425 (
            .O(N__2546),
            .I(N__2543));
    Sp12to4 I__424 (
            .O(N__2543),
            .I(N__2540));
    Span12Mux_v I__423 (
            .O(N__2540),
            .I(N__2537));
    Odrv12 I__422 (
            .O(N__2537),
            .I(electr_config_in_c_10));
    InMux I__421 (
            .O(N__2534),
            .I(N__2531));
    LocalMux I__420 (
            .O(N__2531),
            .I(shift_regZ0Z_10));
    CascadeMux I__419 (
            .O(N__2528),
            .I(N__2525));
    InMux I__418 (
            .O(N__2525),
            .I(N__2522));
    LocalMux I__417 (
            .O(N__2522),
            .I(N__2519));
    Span4Mux_v I__416 (
            .O(N__2519),
            .I(N__2516));
    Span4Mux_h I__415 (
            .O(N__2516),
            .I(N__2513));
    Sp12to4 I__414 (
            .O(N__2513),
            .I(N__2510));
    Span12Mux_v I__413 (
            .O(N__2510),
            .I(N__2507));
    Odrv12 I__412 (
            .O(N__2507),
            .I(electr_config_in_c_31));
    InMux I__411 (
            .O(N__2504),
            .I(N__2501));
    LocalMux I__410 (
            .O(N__2501),
            .I(shift_regZ0Z_25));
    InMux I__409 (
            .O(N__2498),
            .I(N__2495));
    LocalMux I__408 (
            .O(N__2495),
            .I(N__2492));
    Span4Mux_v I__407 (
            .O(N__2492),
            .I(N__2489));
    Sp12to4 I__406 (
            .O(N__2489),
            .I(N__2486));
    Span12Mux_h I__405 (
            .O(N__2486),
            .I(N__2483));
    Span12Mux_v I__404 (
            .O(N__2483),
            .I(N__2480));
    Odrv12 I__403 (
            .O(N__2480),
            .I(electr_config_in_c_26));
    CascadeMux I__402 (
            .O(N__2477),
            .I(N__2474));
    InMux I__401 (
            .O(N__2474),
            .I(N__2471));
    LocalMux I__400 (
            .O(N__2471),
            .I(N__2468));
    Span4Mux_v I__399 (
            .O(N__2468),
            .I(N__2465));
    Span4Mux_h I__398 (
            .O(N__2465),
            .I(N__2462));
    Sp12to4 I__397 (
            .O(N__2462),
            .I(N__2459));
    Span12Mux_v I__396 (
            .O(N__2459),
            .I(N__2456));
    Odrv12 I__395 (
            .O(N__2456),
            .I(electr_config_in_c_30));
    InMux I__394 (
            .O(N__2453),
            .I(N__2450));
    LocalMux I__393 (
            .O(N__2450),
            .I(shift_regZ0Z_30));
    CascadeMux I__392 (
            .O(N__2447),
            .I(N__2444));
    InMux I__391 (
            .O(N__2444),
            .I(N__2441));
    LocalMux I__390 (
            .O(N__2441),
            .I(N__2438));
    Span4Mux_v I__389 (
            .O(N__2438),
            .I(N__2435));
    Sp12to4 I__388 (
            .O(N__2435),
            .I(N__2432));
    Span12Mux_h I__387 (
            .O(N__2432),
            .I(N__2429));
    Span12Mux_v I__386 (
            .O(N__2429),
            .I(N__2426));
    Odrv12 I__385 (
            .O(N__2426),
            .I(electr_config_in_c_33));
    CascadeMux I__384 (
            .O(N__2423),
            .I(N__2420));
    InMux I__383 (
            .O(N__2420),
            .I(N__2417));
    LocalMux I__382 (
            .O(N__2417),
            .I(N__2414));
    Span4Mux_v I__381 (
            .O(N__2414),
            .I(N__2411));
    Sp12to4 I__380 (
            .O(N__2411),
            .I(N__2408));
    Span12Mux_h I__379 (
            .O(N__2408),
            .I(N__2405));
    Span12Mux_v I__378 (
            .O(N__2405),
            .I(N__2402));
    Odrv12 I__377 (
            .O(N__2402),
            .I(electr_config_in_c_29));
    InMux I__376 (
            .O(N__2399),
            .I(N__2396));
    LocalMux I__375 (
            .O(N__2396),
            .I(shift_regZ0Z_29));
    InMux I__374 (
            .O(N__2393),
            .I(N__2390));
    LocalMux I__373 (
            .O(N__2390),
            .I(shift_regZ0Z_26));
    InMux I__372 (
            .O(N__2387),
            .I(N__2384));
    LocalMux I__371 (
            .O(N__2384),
            .I(N__2381));
    Span4Mux_v I__370 (
            .O(N__2381),
            .I(N__2378));
    Span4Mux_h I__369 (
            .O(N__2378),
            .I(N__2375));
    Sp12to4 I__368 (
            .O(N__2375),
            .I(N__2372));
    Span12Mux_v I__367 (
            .O(N__2372),
            .I(N__2369));
    Odrv12 I__366 (
            .O(N__2369),
            .I(electr_config_in_c_27));
    InMux I__365 (
            .O(N__2366),
            .I(N__2363));
    LocalMux I__364 (
            .O(N__2363),
            .I(shift_regZ0Z_31));
    CascadeMux I__363 (
            .O(N__2360),
            .I(N__2357));
    InMux I__362 (
            .O(N__2357),
            .I(N__2354));
    LocalMux I__361 (
            .O(N__2354),
            .I(N__2351));
    Span4Mux_v I__360 (
            .O(N__2351),
            .I(N__2348));
    Sp12to4 I__359 (
            .O(N__2348),
            .I(N__2345));
    Span12Mux_h I__358 (
            .O(N__2345),
            .I(N__2342));
    Span12Mux_v I__357 (
            .O(N__2342),
            .I(N__2339));
    Odrv12 I__356 (
            .O(N__2339),
            .I(electr_config_in_c_32));
    InMux I__355 (
            .O(N__2336),
            .I(N__2333));
    LocalMux I__354 (
            .O(N__2333),
            .I(shift_regZ0Z_32));
    InMux I__353 (
            .O(N__2330),
            .I(N__2327));
    LocalMux I__352 (
            .O(N__2327),
            .I(shift_regZ0Z_27));
    CascadeMux I__351 (
            .O(N__2324),
            .I(N__2321));
    InMux I__350 (
            .O(N__2321),
            .I(N__2318));
    LocalMux I__349 (
            .O(N__2318),
            .I(N__2315));
    Span4Mux_v I__348 (
            .O(N__2315),
            .I(N__2312));
    Span4Mux_h I__347 (
            .O(N__2312),
            .I(N__2309));
    Sp12to4 I__346 (
            .O(N__2309),
            .I(N__2306));
    Span12Mux_v I__345 (
            .O(N__2306),
            .I(N__2303));
    Odrv12 I__344 (
            .O(N__2303),
            .I(electr_config_in_c_28));
    InMux I__343 (
            .O(N__2300),
            .I(N__2297));
    LocalMux I__342 (
            .O(N__2297),
            .I(shift_regZ0Z_28));
    InMux I__341 (
            .O(N__2294),
            .I(N__2291));
    LocalMux I__340 (
            .O(N__2291),
            .I(shift_regZ0Z_24));
    CascadeMux I__339 (
            .O(N__2288),
            .I(N__2285));
    InMux I__338 (
            .O(N__2285),
            .I(N__2282));
    LocalMux I__337 (
            .O(N__2282),
            .I(N__2279));
    Span4Mux_v I__336 (
            .O(N__2279),
            .I(N__2276));
    Sp12to4 I__335 (
            .O(N__2276),
            .I(N__2273));
    Span12Mux_h I__334 (
            .O(N__2273),
            .I(N__2270));
    Span12Mux_v I__333 (
            .O(N__2270),
            .I(N__2267));
    Odrv12 I__332 (
            .O(N__2267),
            .I(electr_config_in_c_25));
    CascadeMux I__331 (
            .O(N__2264),
            .I(N__2261));
    InMux I__330 (
            .O(N__2261),
            .I(N__2258));
    LocalMux I__329 (
            .O(N__2258),
            .I(N__2255));
    IoSpan4Mux I__328 (
            .O(N__2255),
            .I(N__2252));
    IoSpan4Mux I__327 (
            .O(N__2252),
            .I(N__2249));
    Odrv4 I__326 (
            .O(N__2249),
            .I(electr_config_in_c_52));
    CascadeMux I__325 (
            .O(N__2246),
            .I(N__2243));
    InMux I__324 (
            .O(N__2243),
            .I(N__2240));
    LocalMux I__323 (
            .O(N__2240),
            .I(N__2237));
    Span4Mux_v I__322 (
            .O(N__2237),
            .I(N__2234));
    Sp12to4 I__321 (
            .O(N__2234),
            .I(N__2231));
    Span12Mux_h I__320 (
            .O(N__2231),
            .I(N__2228));
    Odrv12 I__319 (
            .O(N__2228),
            .I(electr_config_in_c_51));
    InMux I__318 (
            .O(N__2225),
            .I(N__2222));
    LocalMux I__317 (
            .O(N__2222),
            .I(shift_regZ0Z_51));
    CascadeMux I__316 (
            .O(N__2219),
            .I(N__2216));
    InMux I__315 (
            .O(N__2216),
            .I(N__2213));
    LocalMux I__314 (
            .O(N__2213),
            .I(N__2210));
    Span4Mux_h I__313 (
            .O(N__2210),
            .I(N__2207));
    Odrv4 I__312 (
            .O(N__2207),
            .I(electr_config_in_c_54));
    InMux I__311 (
            .O(N__2204),
            .I(N__2201));
    LocalMux I__310 (
            .O(N__2201),
            .I(shift_regZ0Z_52));
    CascadeMux I__309 (
            .O(N__2198),
            .I(N__2195));
    InMux I__308 (
            .O(N__2195),
            .I(N__2192));
    LocalMux I__307 (
            .O(N__2192),
            .I(N__2189));
    IoSpan4Mux I__306 (
            .O(N__2189),
            .I(N__2186));
    IoSpan4Mux I__305 (
            .O(N__2186),
            .I(N__2183));
    Odrv4 I__304 (
            .O(N__2183),
            .I(electr_config_in_c_53));
    InMux I__303 (
            .O(N__2180),
            .I(N__2177));
    LocalMux I__302 (
            .O(N__2177),
            .I(shift_regZ0Z_53));
    InMux I__301 (
            .O(N__2174),
            .I(N__2171));
    LocalMux I__300 (
            .O(N__2171),
            .I(N__2168));
    Odrv4 I__299 (
            .O(N__2168),
            .I(shift_regZ0Z_54));
    IoInMux I__298 (
            .O(N__2165),
            .I(N__2162));
    LocalMux I__297 (
            .O(N__2162),
            .I(N__2159));
    Span4Mux_s3_h I__296 (
            .O(N__2159),
            .I(N__2156));
    Span4Mux_h I__295 (
            .O(N__2156),
            .I(N__2153));
    Span4Mux_h I__294 (
            .O(N__2153),
            .I(N__2150));
    Odrv4 I__293 (
            .O(N__2150),
            .I(serial_out_c));
    InMux I__292 (
            .O(N__2147),
            .I(N__2144));
    LocalMux I__291 (
            .O(N__2144),
            .I(N__2141));
    Span4Mux_v I__290 (
            .O(N__2141),
            .I(N__2138));
    Span4Mux_h I__289 (
            .O(N__2138),
            .I(N__2135));
    Odrv4 I__288 (
            .O(N__2135),
            .I(enable_desp_c));
    InMux I__287 (
            .O(N__2132),
            .I(N__2129));
    LocalMux I__286 (
            .O(N__2129),
            .I(shift_regZ0Z_16));
    CascadeMux I__285 (
            .O(N__2126),
            .I(N__2123));
    InMux I__284 (
            .O(N__2123),
            .I(N__2120));
    LocalMux I__283 (
            .O(N__2120),
            .I(N__2117));
    Span4Mux_v I__282 (
            .O(N__2117),
            .I(N__2114));
    Sp12to4 I__281 (
            .O(N__2114),
            .I(N__2111));
    Odrv12 I__280 (
            .O(N__2111),
            .I(electr_config_in_c_17));
    InMux I__279 (
            .O(N__2108),
            .I(N__2105));
    LocalMux I__278 (
            .O(N__2105),
            .I(shift_regZ0Z_17));
    CascadeMux I__277 (
            .O(N__2102),
            .I(N__2099));
    InMux I__276 (
            .O(N__2099),
            .I(N__2096));
    LocalMux I__275 (
            .O(N__2096),
            .I(N__2093));
    Span4Mux_h I__274 (
            .O(N__2093),
            .I(N__2090));
    Sp12to4 I__273 (
            .O(N__2090),
            .I(N__2087));
    Span12Mux_v I__272 (
            .O(N__2087),
            .I(N__2084));
    Odrv12 I__271 (
            .O(N__2084),
            .I(electr_config_in_c_11));
    InMux I__270 (
            .O(N__2081),
            .I(N__2078));
    LocalMux I__269 (
            .O(N__2078),
            .I(shift_regZ0Z_11));
    InMux I__268 (
            .O(N__2075),
            .I(N__2072));
    LocalMux I__267 (
            .O(N__2072),
            .I(N__2069));
    Sp12to4 I__266 (
            .O(N__2069),
            .I(N__2066));
    Span12Mux_v I__265 (
            .O(N__2066),
            .I(N__2063));
    Odrv12 I__264 (
            .O(N__2063),
            .I(electr_config_in_c_15));
    CascadeMux I__263 (
            .O(N__2060),
            .I(N__2057));
    InMux I__262 (
            .O(N__2057),
            .I(N__2054));
    LocalMux I__261 (
            .O(N__2054),
            .I(shift_regZ0Z_14));
    InMux I__260 (
            .O(N__2051),
            .I(N__2048));
    LocalMux I__259 (
            .O(N__2048),
            .I(shift_regZ0Z_15));
    InMux I__258 (
            .O(N__2045),
            .I(N__2042));
    LocalMux I__257 (
            .O(N__2042),
            .I(N__2039));
    Span4Mux_v I__256 (
            .O(N__2039),
            .I(N__2036));
    Sp12to4 I__255 (
            .O(N__2036),
            .I(N__2033));
    Span12Mux_h I__254 (
            .O(N__2033),
            .I(N__2030));
    Span12Mux_v I__253 (
            .O(N__2030),
            .I(N__2027));
    Odrv12 I__252 (
            .O(N__2027),
            .I(electr_config_in_c_19));
    InMux I__251 (
            .O(N__2024),
            .I(N__2021));
    LocalMux I__250 (
            .O(N__2021),
            .I(shift_regZ0Z_18));
    InMux I__249 (
            .O(N__2018),
            .I(N__2015));
    LocalMux I__248 (
            .O(N__2015),
            .I(N__2012));
    Span4Mux_v I__247 (
            .O(N__2012),
            .I(N__2009));
    Sp12to4 I__246 (
            .O(N__2009),
            .I(N__2006));
    Span12Mux_h I__245 (
            .O(N__2006),
            .I(N__2003));
    Span12Mux_v I__244 (
            .O(N__2003),
            .I(N__2000));
    Span12Mux_v I__243 (
            .O(N__2000),
            .I(N__1997));
    Odrv12 I__242 (
            .O(N__1997),
            .I(electr_config_in_c_23));
    CascadeMux I__241 (
            .O(N__1994),
            .I(N__1991));
    InMux I__240 (
            .O(N__1991),
            .I(N__1988));
    LocalMux I__239 (
            .O(N__1988),
            .I(N__1985));
    Sp12to4 I__238 (
            .O(N__1985),
            .I(N__1982));
    Span12Mux_v I__237 (
            .O(N__1982),
            .I(N__1979));
    Span12Mux_v I__236 (
            .O(N__1979),
            .I(N__1976));
    Odrv12 I__235 (
            .O(N__1976),
            .I(electr_config_in_c_22));
    InMux I__234 (
            .O(N__1973),
            .I(N__1970));
    LocalMux I__233 (
            .O(N__1970),
            .I(shift_regZ0Z_22));
    InMux I__232 (
            .O(N__1967),
            .I(N__1964));
    LocalMux I__231 (
            .O(N__1964),
            .I(N__1961));
    Span4Mux_v I__230 (
            .O(N__1961),
            .I(N__1958));
    Sp12to4 I__229 (
            .O(N__1958),
            .I(N__1955));
    Span12Mux_h I__228 (
            .O(N__1955),
            .I(N__1952));
    Span12Mux_v I__227 (
            .O(N__1952),
            .I(N__1949));
    Span12Mux_v I__226 (
            .O(N__1949),
            .I(N__1946));
    Odrv12 I__225 (
            .O(N__1946),
            .I(electr_config_in_c_21));
    InMux I__224 (
            .O(N__1943),
            .I(N__1940));
    LocalMux I__223 (
            .O(N__1940),
            .I(shift_regZ0Z_21));
    InMux I__222 (
            .O(N__1937),
            .I(N__1934));
    LocalMux I__221 (
            .O(N__1934),
            .I(N__1931));
    Span12Mux_h I__220 (
            .O(N__1931),
            .I(N__1928));
    Span12Mux_v I__219 (
            .O(N__1928),
            .I(N__1925));
    Span12Mux_v I__218 (
            .O(N__1925),
            .I(N__1922));
    Odrv12 I__217 (
            .O(N__1922),
            .I(electr_config_in_c_20));
    InMux I__216 (
            .O(N__1919),
            .I(N__1916));
    LocalMux I__215 (
            .O(N__1916),
            .I(shift_regZ0Z_19));
    InMux I__214 (
            .O(N__1913),
            .I(N__1910));
    LocalMux I__213 (
            .O(N__1910),
            .I(shift_regZ0Z_20));
    InMux I__212 (
            .O(N__1907),
            .I(N__1904));
    LocalMux I__211 (
            .O(N__1904),
            .I(shift_regZ0Z_23));
    CascadeMux I__210 (
            .O(N__1901),
            .I(N__1898));
    InMux I__209 (
            .O(N__1898),
            .I(N__1895));
    LocalMux I__208 (
            .O(N__1895),
            .I(N__1892));
    Span4Mux_h I__207 (
            .O(N__1892),
            .I(N__1889));
    Sp12to4 I__206 (
            .O(N__1889),
            .I(N__1886));
    Span12Mux_v I__205 (
            .O(N__1886),
            .I(N__1883));
    Span12Mux_v I__204 (
            .O(N__1883),
            .I(N__1880));
    Odrv12 I__203 (
            .O(N__1880),
            .I(electr_config_in_c_24));
    InMux I__202 (
            .O(N__1877),
            .I(N__1874));
    LocalMux I__201 (
            .O(N__1874),
            .I(RST_N_c));
    IoInMux I__200 (
            .O(N__1871),
            .I(N__1868));
    LocalMux I__199 (
            .O(N__1868),
            .I(N__1865));
    IoSpan4Mux I__198 (
            .O(N__1865),
            .I(N__1862));
    IoSpan4Mux I__197 (
            .O(N__1862),
            .I(N__1859));
    IoSpan4Mux I__196 (
            .O(N__1859),
            .I(N__1856));
    IoSpan4Mux I__195 (
            .O(N__1856),
            .I(N__1853));
    Odrv4 I__194 (
            .O(N__1853),
            .I(RST_N_c_i));
    IoInMux I__193 (
            .O(N__1850),
            .I(N__1847));
    LocalMux I__192 (
            .O(N__1847),
            .I(N__1844));
    Span12Mux_s5_h I__191 (
            .O(N__1844),
            .I(N__1841));
    Odrv12 I__190 (
            .O(N__1841),
            .I(enable_config_c));
    IoInMux I__189 (
            .O(N__1838),
            .I(N__1835));
    LocalMux I__188 (
            .O(N__1835),
            .I(N__1832));
    Span12Mux_s3_h I__187 (
            .O(N__1832),
            .I(N__1829));
    Odrv12 I__186 (
            .O(N__1829),
            .I(sr_finish_c));
    CascadeMux I__185 (
            .O(N__1826),
            .I(N__1823));
    InMux I__184 (
            .O(N__1823),
            .I(N__1820));
    LocalMux I__183 (
            .O(N__1820),
            .I(N__1817));
    Span4Mux_v I__182 (
            .O(N__1817),
            .I(N__1814));
    Span4Mux_v I__181 (
            .O(N__1814),
            .I(N__1811));
    Span4Mux_v I__180 (
            .O(N__1811),
            .I(N__1808));
    Sp12to4 I__179 (
            .O(N__1808),
            .I(N__1805));
    Odrv12 I__178 (
            .O(N__1805),
            .I(electr_config_in_c_13));
    CascadeMux I__177 (
            .O(N__1802),
            .I(N__1799));
    InMux I__176 (
            .O(N__1799),
            .I(N__1796));
    LocalMux I__175 (
            .O(N__1796),
            .I(N__1793));
    Span4Mux_v I__174 (
            .O(N__1793),
            .I(N__1790));
    Sp12to4 I__173 (
            .O(N__1790),
            .I(N__1787));
    Span12Mux_h I__172 (
            .O(N__1787),
            .I(N__1784));
    Span12Mux_v I__171 (
            .O(N__1784),
            .I(N__1781));
    Span12Mux_v I__170 (
            .O(N__1781),
            .I(N__1778));
    Odrv12 I__169 (
            .O(N__1778),
            .I(electr_config_in_c_18));
    InMux I__168 (
            .O(N__1775),
            .I(N__1772));
    LocalMux I__167 (
            .O(N__1772),
            .I(N__1769));
    Span4Mux_v I__166 (
            .O(N__1769),
            .I(N__1766));
    Sp12to4 I__165 (
            .O(N__1766),
            .I(N__1763));
    Odrv12 I__164 (
            .O(N__1763),
            .I(electr_config_in_c_16));
    InMux I__163 (
            .O(N__1760),
            .I(N__1757));
    LocalMux I__162 (
            .O(N__1757),
            .I(shift_regZ0Z_13));
    CascadeMux I__161 (
            .O(N__1754),
            .I(N__1751));
    InMux I__160 (
            .O(N__1751),
            .I(N__1748));
    LocalMux I__159 (
            .O(N__1748),
            .I(N__1745));
    Span4Mux_h I__158 (
            .O(N__1745),
            .I(N__1742));
    Sp12to4 I__157 (
            .O(N__1742),
            .I(N__1739));
    Span12Mux_v I__156 (
            .O(N__1739),
            .I(N__1736));
    Odrv12 I__155 (
            .O(N__1736),
            .I(electr_config_in_c_14));
    CascadeMux I__154 (
            .O(N__1733),
            .I(N__1730));
    InMux I__153 (
            .O(N__1730),
            .I(N__1727));
    LocalMux I__152 (
            .O(N__1727),
            .I(N__1724));
    Span4Mux_h I__151 (
            .O(N__1724),
            .I(N__1721));
    Sp12to4 I__150 (
            .O(N__1721),
            .I(N__1718));
    Span12Mux_v I__149 (
            .O(N__1718),
            .I(N__1715));
    Odrv12 I__148 (
            .O(N__1715),
            .I(electr_config_in_c_12));
    InMux I__147 (
            .O(N__1712),
            .I(N__1709));
    LocalMux I__146 (
            .O(N__1709),
            .I(shift_regZ0Z_12));
    defparam IN_MUX_bfv_14_4_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_14_4_0_ (
            .carryinitin(),
            .carryinitout(bfn_14_4_0_));
    VCC VCC (
            .Y(VCCG0));
    ICE_GB RST_N_ibuf_RNIBJGC_0 (
            .USERSIGNALTOGLOBALBUFFER(N__1871),
            .GLOBALBUFFEROUTPUT(RST_N_c_i_g));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam RST_N_ibuf_RNIBJGC_LC_1_3_6.C_ON=1'b0;
    defparam RST_N_ibuf_RNIBJGC_LC_1_3_6.SEQ_MODE=4'b0000;
    defparam RST_N_ibuf_RNIBJGC_LC_1_3_6.LUT_INIT=16'b0000000011111111;
    LogicCell40 RST_N_ibuf_RNIBJGC_LC_1_3_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1877),
            .lcout(RST_N_c_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam enable_configZ0_LC_11_5_1.C_ON=1'b0;
    defparam enable_configZ0_LC_11_5_1.SEQ_MODE=4'b1010;
    defparam enable_configZ0_LC_11_5_1.LUT_INIT=16'b0000000011001100;
    LogicCell40 enable_configZ0_LC_11_5_1 (
            .in0(_gnd_net_),
            .in1(N__3795),
            .in2(_gnd_net_),
            .in3(N__4124),
            .lcout(enable_config_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3569),
            .ce(),
            .sr(N__3509));
    defparam sr_finishZ0_LC_11_5_3.C_ON=1'b0;
    defparam sr_finishZ0_LC_11_5_3.SEQ_MODE=4'b1010;
    defparam sr_finishZ0_LC_11_5_3.LUT_INIT=16'b1100110000000000;
    LogicCell40 sr_finishZ0_LC_11_5_3 (
            .in0(_gnd_net_),
            .in1(N__3796),
            .in2(_gnd_net_),
            .in3(N__4125),
            .lcout(sr_finish_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3569),
            .ce(),
            .sr(N__3509));
    defparam shift_reg_13_LC_11_6_0.C_ON=1'b0;
    defparam shift_reg_13_LC_11_6_0.SEQ_MODE=4'b1010;
    defparam shift_reg_13_LC_11_6_0.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_13_LC_11_6_0 (
            .in0(N__1712),
            .in1(N__3800),
            .in2(N__1826),
            .in3(N__4122),
            .lcout(shift_regZ0Z_13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_18_LC_11_6_1.C_ON=1'b0;
    defparam shift_reg_18_LC_11_6_1.SEQ_MODE=4'b1010;
    defparam shift_reg_18_LC_11_6_1.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_18_LC_11_6_1 (
            .in0(N__4119),
            .in1(N__2108),
            .in2(N__1802),
            .in3(N__3807),
            .lcout(shift_regZ0Z_18),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_16_LC_11_6_2.C_ON=1'b0;
    defparam shift_reg_16_LC_11_6_2.SEQ_MODE=4'b1010;
    defparam shift_reg_16_LC_11_6_2.LUT_INIT=16'b0000110010100000;
    LogicCell40 shift_reg_16_LC_11_6_2 (
            .in0(N__2051),
            .in1(N__1775),
            .in2(N__3890),
            .in3(N__4123),
            .lcout(shift_regZ0Z_16),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_14_LC_11_6_3.C_ON=1'b0;
    defparam shift_reg_14_LC_11_6_3.SEQ_MODE=4'b1010;
    defparam shift_reg_14_LC_11_6_3.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_14_LC_11_6_3 (
            .in0(N__4116),
            .in1(N__1760),
            .in2(N__1754),
            .in3(N__3804),
            .lcout(shift_regZ0Z_14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_12_LC_11_6_4.C_ON=1'b0;
    defparam shift_reg_12_LC_11_6_4.SEQ_MODE=4'b1010;
    defparam shift_reg_12_LC_11_6_4.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_12_LC_11_6_4 (
            .in0(N__2081),
            .in1(N__3799),
            .in2(N__1733),
            .in3(N__4121),
            .lcout(shift_regZ0Z_12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_17_LC_11_6_5.C_ON=1'b0;
    defparam shift_reg_17_LC_11_6_5.SEQ_MODE=4'b1010;
    defparam shift_reg_17_LC_11_6_5.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_17_LC_11_6_5 (
            .in0(N__4118),
            .in1(N__2132),
            .in2(N__2126),
            .in3(N__3806),
            .lcout(shift_regZ0Z_17),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_11_LC_11_6_6.C_ON=1'b0;
    defparam shift_reg_11_LC_11_6_6.SEQ_MODE=4'b1010;
    defparam shift_reg_11_LC_11_6_6.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_11_LC_11_6_6 (
            .in0(N__2534),
            .in1(N__3798),
            .in2(N__2102),
            .in3(N__4120),
            .lcout(shift_regZ0Z_11),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_15_LC_11_6_7.C_ON=1'b0;
    defparam shift_reg_15_LC_11_6_7.SEQ_MODE=4'b1010;
    defparam shift_reg_15_LC_11_6_7.LUT_INIT=16'b0101000010001000;
    LogicCell40 shift_reg_15_LC_11_6_7 (
            .in0(N__4117),
            .in1(N__2075),
            .in2(N__2060),
            .in3(N__3805),
            .lcout(shift_regZ0Z_15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3567),
            .ce(),
            .sr(N__3507));
    defparam shift_reg_19_LC_11_7_1.C_ON=1'b0;
    defparam shift_reg_19_LC_11_7_1.SEQ_MODE=4'b1010;
    defparam shift_reg_19_LC_11_7_1.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_19_LC_11_7_1 (
            .in0(N__4169),
            .in1(N__2045),
            .in2(N__3912),
            .in3(N__2024),
            .lcout(shift_regZ0Z_19),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3565),
            .ce(),
            .sr(N__3505));
    defparam shift_reg_23_LC_11_7_3.C_ON=1'b0;
    defparam shift_reg_23_LC_11_7_3.SEQ_MODE=4'b1010;
    defparam shift_reg_23_LC_11_7_3.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_23_LC_11_7_3 (
            .in0(N__4172),
            .in1(N__2018),
            .in2(N__3915),
            .in3(N__1973),
            .lcout(shift_regZ0Z_23),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3565),
            .ce(),
            .sr(N__3505));
    defparam shift_reg_22_LC_11_7_4.C_ON=1'b0;
    defparam shift_reg_22_LC_11_7_4.SEQ_MODE=4'b1010;
    defparam shift_reg_22_LC_11_7_4.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_22_LC_11_7_4 (
            .in0(N__1943),
            .in1(N__3871),
            .in2(N__1994),
            .in3(N__4173),
            .lcout(shift_regZ0Z_22),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3565),
            .ce(),
            .sr(N__3505));
    defparam shift_reg_21_LC_11_7_5.C_ON=1'b0;
    defparam shift_reg_21_LC_11_7_5.SEQ_MODE=4'b1010;
    defparam shift_reg_21_LC_11_7_5.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_21_LC_11_7_5 (
            .in0(N__4171),
            .in1(N__1967),
            .in2(N__3914),
            .in3(N__1913),
            .lcout(shift_regZ0Z_21),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3565),
            .ce(),
            .sr(N__3505));
    defparam shift_reg_20_LC_11_7_7.C_ON=1'b0;
    defparam shift_reg_20_LC_11_7_7.SEQ_MODE=4'b1010;
    defparam shift_reg_20_LC_11_7_7.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_20_LC_11_7_7 (
            .in0(N__4170),
            .in1(N__1937),
            .in2(N__3913),
            .in3(N__1919),
            .lcout(shift_regZ0Z_20),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3565),
            .ce(),
            .sr(N__3505));
    defparam shift_reg_24_LC_11_8_0.C_ON=1'b0;
    defparam shift_reg_24_LC_11_8_0.SEQ_MODE=4'b1010;
    defparam shift_reg_24_LC_11_8_0.LUT_INIT=16'b0101000010001000;
    LogicCell40 shift_reg_24_LC_11_8_0 (
            .in0(N__3857),
            .in1(N__1907),
            .in2(N__1901),
            .in3(N__4174),
            .lcout(shift_regZ0Z_24),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3564),
            .ce(),
            .sr(N__3504));
    defparam shift_reg_25_LC_11_8_4.C_ON=1'b0;
    defparam shift_reg_25_LC_11_8_4.SEQ_MODE=4'b1010;
    defparam shift_reg_25_LC_11_8_4.LUT_INIT=16'b0101000010001000;
    LogicCell40 shift_reg_25_LC_11_8_4 (
            .in0(N__3858),
            .in1(N__2294),
            .in2(N__2288),
            .in3(N__4175),
            .lcout(shift_regZ0Z_25),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3564),
            .ce(),
            .sr(N__3504));
    defparam shift_reg_52_LC_12_2_1.C_ON=1'b0;
    defparam shift_reg_52_LC_12_2_1.SEQ_MODE=4'b1010;
    defparam shift_reg_52_LC_12_2_1.LUT_INIT=16'b0101000010001000;
    LogicCell40 shift_reg_52_LC_12_2_1 (
            .in0(N__3812),
            .in1(N__2225),
            .in2(N__2264),
            .in3(N__4205),
            .lcout(shift_regZ0Z_52),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3576),
            .ce(),
            .sr(N__3516));
    defparam shift_reg_51_LC_12_2_3.C_ON=1'b0;
    defparam shift_reg_51_LC_12_2_3.SEQ_MODE=4'b1010;
    defparam shift_reg_51_LC_12_2_3.LUT_INIT=16'b0101000010001000;
    LogicCell40 shift_reg_51_LC_12_2_3 (
            .in0(N__3811),
            .in1(N__2591),
            .in2(N__2246),
            .in3(N__4204),
            .lcout(shift_regZ0Z_51),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3576),
            .ce(),
            .sr(N__3516));
    defparam shift_reg_54_LC_12_2_4.C_ON=1'b0;
    defparam shift_reg_54_LC_12_2_4.SEQ_MODE=4'b1010;
    defparam shift_reg_54_LC_12_2_4.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_54_LC_12_2_4 (
            .in0(N__4203),
            .in1(N__2180),
            .in2(N__2219),
            .in3(N__3814),
            .lcout(shift_regZ0Z_54),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3576),
            .ce(),
            .sr(N__3516));
    defparam shift_reg_53_LC_12_2_6.C_ON=1'b0;
    defparam shift_reg_53_LC_12_2_6.SEQ_MODE=4'b1010;
    defparam shift_reg_53_LC_12_2_6.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_53_LC_12_2_6 (
            .in0(N__4202),
            .in1(N__2204),
            .in2(N__2198),
            .in3(N__3813),
            .lcout(shift_regZ0Z_53),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3576),
            .ce(),
            .sr(N__3516));
    defparam serial_outZ0_LC_12_4_6.C_ON=1'b0;
    defparam serial_outZ0_LC_12_4_6.SEQ_MODE=4'b1010;
    defparam serial_outZ0_LC_12_4_6.LUT_INIT=16'b1100110000000000;
    LogicCell40 serial_outZ0_LC_12_4_6 (
            .in0(_gnd_net_),
            .in1(N__2174),
            .in2(_gnd_net_),
            .in3(N__2795),
            .lcout(serial_out_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3573),
            .ce(),
            .sr(N__3513));
    defparam current_state_1_LC_12_5_5.C_ON=1'b0;
    defparam current_state_1_LC_12_5_5.SEQ_MODE=4'b1010;
    defparam current_state_1_LC_12_5_5.LUT_INIT=16'b0011001111001100;
    LogicCell40 current_state_1_LC_12_5_5 (
            .in0(_gnd_net_),
            .in1(N__3791),
            .in2(_gnd_net_),
            .in3(N__4187),
            .lcout(current_stateZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3571),
            .ce(),
            .sr(N__3511));
    defparam current_state_0_LC_12_5_6.C_ON=1'b0;
    defparam current_state_0_LC_12_5_6.SEQ_MODE=4'b1010;
    defparam current_state_0_LC_12_5_6.LUT_INIT=16'b0101010000000100;
    LogicCell40 current_state_0_LC_12_5_6 (
            .in0(N__4186),
            .in1(N__2147),
            .in2(N__3889),
            .in3(N__2801),
            .lcout(current_stateZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3571),
            .ce(),
            .sr(N__3511));
    defparam shift_reg_10_LC_12_6_2.C_ON=1'b0;
    defparam shift_reg_10_LC_12_6_2.SEQ_MODE=4'b1010;
    defparam shift_reg_10_LC_12_6_2.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_10_LC_12_6_2 (
            .in0(N__2567),
            .in1(N__3797),
            .in2(N__2555),
            .in3(N__4126),
            .lcout(shift_regZ0Z_10),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3570),
            .ce(),
            .sr(N__3510));
    defparam shift_reg_31_LC_12_8_0.C_ON=1'b0;
    defparam shift_reg_31_LC_12_8_0.SEQ_MODE=4'b1010;
    defparam shift_reg_31_LC_12_8_0.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_31_LC_12_8_0 (
            .in0(N__4163),
            .in1(N__2453),
            .in2(N__2528),
            .in3(N__3867),
            .lcout(shift_regZ0Z_31),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_26_LC_12_8_1.C_ON=1'b0;
    defparam shift_reg_26_LC_12_8_1.SEQ_MODE=4'b1010;
    defparam shift_reg_26_LC_12_8_1.LUT_INIT=16'b0010110000100000;
    LogicCell40 shift_reg_26_LC_12_8_1 (
            .in0(N__2504),
            .in1(N__4165),
            .in2(N__3910),
            .in3(N__2498),
            .lcout(shift_regZ0Z_26),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_30_LC_12_8_2.C_ON=1'b0;
    defparam shift_reg_30_LC_12_8_2.SEQ_MODE=4'b1010;
    defparam shift_reg_30_LC_12_8_2.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_30_LC_12_8_2 (
            .in0(N__4162),
            .in1(N__2399),
            .in2(N__2477),
            .in3(N__3866),
            .lcout(shift_regZ0Z_30),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_33_LC_12_8_3.C_ON=1'b0;
    defparam shift_reg_33_LC_12_8_3.SEQ_MODE=4'b1010;
    defparam shift_reg_33_LC_12_8_3.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_33_LC_12_8_3 (
            .in0(N__2336),
            .in1(N__3870),
            .in2(N__2447),
            .in3(N__4168),
            .lcout(shift_regZ0Z_33),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_29_LC_12_8_4.C_ON=1'b0;
    defparam shift_reg_29_LC_12_8_4.SEQ_MODE=4'b1010;
    defparam shift_reg_29_LC_12_8_4.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_29_LC_12_8_4 (
            .in0(N__4161),
            .in1(N__2300),
            .in2(N__2423),
            .in3(N__3865),
            .lcout(shift_regZ0Z_29),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_27_LC_12_8_5.C_ON=1'b0;
    defparam shift_reg_27_LC_12_8_5.SEQ_MODE=4'b1010;
    defparam shift_reg_27_LC_12_8_5.LUT_INIT=16'b0000110010100000;
    LogicCell40 shift_reg_27_LC_12_8_5 (
            .in0(N__2393),
            .in1(N__2387),
            .in2(N__3911),
            .in3(N__4166),
            .lcout(shift_regZ0Z_27),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_32_LC_12_8_6.C_ON=1'b0;
    defparam shift_reg_32_LC_12_8_6.SEQ_MODE=4'b1010;
    defparam shift_reg_32_LC_12_8_6.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_32_LC_12_8_6 (
            .in0(N__4164),
            .in1(N__2366),
            .in2(N__2360),
            .in3(N__3868),
            .lcout(shift_regZ0Z_32),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_28_LC_12_8_7.C_ON=1'b0;
    defparam shift_reg_28_LC_12_8_7.SEQ_MODE=4'b1010;
    defparam shift_reg_28_LC_12_8_7.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_28_LC_12_8_7 (
            .in0(N__2330),
            .in1(N__3869),
            .in2(N__2324),
            .in3(N__4167),
            .lcout(shift_regZ0Z_28),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3566),
            .ce(),
            .sr(N__3506));
    defparam shift_reg_7_LC_13_2_0.C_ON=1'b0;
    defparam shift_reg_7_LC_13_2_0.SEQ_MODE=4'b1010;
    defparam shift_reg_7_LC_13_2_0.LUT_INIT=16'b0000110010100000;
    LogicCell40 shift_reg_7_LC_13_2_0 (
            .in0(N__2645),
            .in1(N__2735),
            .in2(N__3920),
            .in3(N__4201),
            .lcout(shift_regZ0Z_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3579),
            .ce(),
            .sr(N__3519));
    defparam shift_reg_5_LC_13_2_3.C_ON=1'b0;
    defparam shift_reg_5_LC_13_2_3.SEQ_MODE=4'b1010;
    defparam shift_reg_5_LC_13_2_3.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_5_LC_13_2_3 (
            .in0(N__4198),
            .in1(N__2723),
            .in2(N__3892),
            .in3(N__2678),
            .lcout(shift_regZ0Z_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3579),
            .ce(),
            .sr(N__3519));
    defparam shift_reg_4_LC_13_2_6.C_ON=1'b0;
    defparam shift_reg_4_LC_13_2_6.SEQ_MODE=4'b1010;
    defparam shift_reg_4_LC_13_2_6.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_4_LC_13_2_6 (
            .in0(N__3407),
            .in1(N__3820),
            .in2(N__2702),
            .in3(N__4200),
            .lcout(shift_regZ0Z_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3579),
            .ce(),
            .sr(N__3519));
    defparam shift_reg_6_LC_13_2_7.C_ON=1'b0;
    defparam shift_reg_6_LC_13_2_7.SEQ_MODE=4'b1010;
    defparam shift_reg_6_LC_13_2_7.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_6_LC_13_2_7 (
            .in0(N__4199),
            .in1(N__2672),
            .in2(N__3893),
            .in3(N__2651),
            .lcout(shift_regZ0Z_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3579),
            .ce(),
            .sr(N__3519));
    defparam shift_reg_8_LC_13_3_4.C_ON=1'b0;
    defparam shift_reg_8_LC_13_3_4.SEQ_MODE=4'b1010;
    defparam shift_reg_8_LC_13_3_4.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_8_LC_13_3_4 (
            .in0(N__2639),
            .in1(N__3816),
            .in2(N__2633),
            .in3(N__4190),
            .lcout(shift_regZ0Z_8),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3577),
            .ce(),
            .sr(N__3517));
    defparam shift_reg_50_LC_13_3_6.C_ON=1'b0;
    defparam shift_reg_50_LC_13_3_6.SEQ_MODE=4'b1010;
    defparam shift_reg_50_LC_13_3_6.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_50_LC_13_3_6 (
            .in0(N__3188),
            .in1(N__3815),
            .in2(N__2612),
            .in3(N__4189),
            .lcout(shift_regZ0Z_50),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3577),
            .ce(),
            .sr(N__3517));
    defparam shift_reg_9_LC_13_3_7.C_ON=1'b0;
    defparam shift_reg_9_LC_13_3_7.SEQ_MODE=4'b1010;
    defparam shift_reg_9_LC_13_3_7.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_9_LC_13_3_7 (
            .in0(N__4188),
            .in1(N__2585),
            .in2(N__3891),
            .in3(N__2573),
            .lcout(shift_regZ0Z_9),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3577),
            .ce(),
            .sr(N__3517));
    defparam counter_sr_RNIMNUD1_0_LC_13_4_3.C_ON=1'b0;
    defparam counter_sr_RNIMNUD1_0_LC_13_4_3.SEQ_MODE=4'b0000;
    defparam counter_sr_RNIMNUD1_0_LC_13_4_3.LUT_INIT=16'b0001010101010101;
    LogicCell40 counter_sr_RNIMNUD1_0_LC_13_4_3 (
            .in0(N__2927),
            .in1(N__3172),
            .in2(N__2849),
            .in3(N__3084),
            .lcout(),
            .ltout(N_115_mux_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam current_state_RNIE7OV2_0_LC_13_4_4.C_ON=1'b0;
    defparam current_state_RNIE7OV2_0_LC_13_4_4.SEQ_MODE=4'b0000;
    defparam current_state_RNIE7OV2_0_LC_13_4_4.LUT_INIT=16'b0000010000000000;
    LogicCell40 current_state_RNIE7OV2_0_LC_13_4_4 (
            .in0(N__4029),
            .in1(N__3808),
            .in2(N__2822),
            .in3(N__2816),
            .lcout(counter_sre_0),
            .ltout(counter_sre_0_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_sr_3_LC_13_4_5.C_ON=1'b0;
    defparam counter_sr_3_LC_13_4_5.SEQ_MODE=4'b1010;
    defparam counter_sr_3_LC_13_4_5.LUT_INIT=16'b1010000110100010;
    LogicCell40 counter_sr_3_LC_13_4_5 (
            .in0(N__2928),
            .in1(N__3119),
            .in2(N__2819),
            .in3(N__2909),
            .lcout(counter_srZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3574),
            .ce(),
            .sr(N__3514));
    defparam counter_sr_4_LC_13_4_6.C_ON=1'b0;
    defparam counter_sr_4_LC_13_4_6.SEQ_MODE=4'b1010;
    defparam counter_sr_4_LC_13_4_6.LUT_INIT=16'b1010101110101110;
    LogicCell40 counter_sr_4_LC_13_4_6 (
            .in0(N__3145),
            .in1(N__2900),
            .in2(N__3125),
            .in3(N__2882),
            .lcout(counter_srZ0Z_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3574),
            .ce(),
            .sr(N__3514));
    defparam counter_sr_RNI1IVM_5_LC_13_5_0.C_ON=1'b0;
    defparam counter_sr_RNI1IVM_5_LC_13_5_0.SEQ_MODE=4'b0000;
    defparam counter_sr_RNI1IVM_5_LC_13_5_0.LUT_INIT=16'b1100110000000000;
    LogicCell40 counter_sr_RNI1IVM_5_LC_13_5_0 (
            .in0(_gnd_net_),
            .in1(N__2866),
            .in2(_gnd_net_),
            .in3(N__2898),
            .lcout(counter_sre_0_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam current_state_RNINTPQ_0_LC_13_5_2.C_ON=1'b0;
    defparam current_state_RNINTPQ_0_LC_13_5_2.SEQ_MODE=4'b0000;
    defparam current_state_RNINTPQ_0_LC_13_5_2.LUT_INIT=16'b1010101011111111;
    LogicCell40 current_state_RNINTPQ_0_LC_13_5_2 (
            .in0(N__4030),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__3809),
            .lcout(next_state32_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam current_state_RNO_1_0_LC_13_5_3.C_ON=1'b0;
    defparam current_state_RNO_1_0_LC_13_5_3.SEQ_MODE=4'b0000;
    defparam current_state_RNO_1_0_LC_13_5_3.LUT_INIT=16'b1100110000000000;
    LogicCell40 current_state_RNO_1_0_LC_13_5_3 (
            .in0(_gnd_net_),
            .in1(N__2843),
            .in2(_gnd_net_),
            .in3(N__3171),
            .lcout(),
            .ltout(un22_next_state_1_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam current_state_RNO_0_0_LC_13_5_4.C_ON=1'b0;
    defparam current_state_RNO_0_0_LC_13_5_4.SEQ_MODE=4'b0000;
    defparam current_state_RNO_0_0_LC_13_5_4.LUT_INIT=16'b0000000001000000;
    LogicCell40 current_state_RNO_0_0_LC_13_5_4 (
            .in0(N__2930),
            .in1(N__2815),
            .in2(N__2804),
            .in3(N__3085),
            .lcout(N_118_mux),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam current_state_RNINTPQ_0_0_LC_13_5_6.C_ON=1'b0;
    defparam current_state_RNINTPQ_0_0_LC_13_5_6.SEQ_MODE=4'b0000;
    defparam current_state_RNINTPQ_0_0_LC_13_5_6.LUT_INIT=16'b0101010100000000;
    LogicCell40 current_state_RNINTPQ_0_0_LC_13_5_6 (
            .in0(N__4031),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__3810),
            .lcout(next_state32),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam shift_reg_36_LC_13_8_1.C_ON=1'b0;
    defparam shift_reg_36_LC_13_8_1.SEQ_MODE=4'b1010;
    defparam shift_reg_36_LC_13_8_1.LUT_INIT=16'b0010001011000000;
    LogicCell40 shift_reg_36_LC_13_8_1 (
            .in0(N__2741),
            .in1(N__4193),
            .in2(N__2789),
            .in3(N__3888),
            .lcout(shift_regZ0Z_36),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3568),
            .ce(),
            .sr(N__3508));
    defparam shift_reg_35_LC_13_8_4.C_ON=1'b0;
    defparam shift_reg_35_LC_13_8_4.SEQ_MODE=4'b1010;
    defparam shift_reg_35_LC_13_8_4.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_35_LC_13_8_4 (
            .in0(N__4191),
            .in1(N__2942),
            .in2(N__2762),
            .in3(N__3887),
            .lcout(shift_regZ0Z_35),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3568),
            .ce(),
            .sr(N__3508));
    defparam shift_reg_34_LC_13_8_7.C_ON=1'b0;
    defparam shift_reg_34_LC_13_8_7.SEQ_MODE=4'b1010;
    defparam shift_reg_34_LC_13_8_7.LUT_INIT=16'b0010110000100000;
    LogicCell40 shift_reg_34_LC_13_8_7 (
            .in0(N__2969),
            .in1(N__4192),
            .in2(N__3916),
            .in3(N__2963),
            .lcout(shift_regZ0Z_34),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3568),
            .ce(),
            .sr(N__3508));
    defparam counter_sr_cry_c_0_LC_14_4_0.C_ON=1'b1;
    defparam counter_sr_cry_c_0_LC_14_4_0.SEQ_MODE=4'b0000;
    defparam counter_sr_cry_c_0_LC_14_4_0.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter_sr_cry_c_0_LC_14_4_0 (
            .in0(_gnd_net_),
            .in1(N__3083),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(bfn_14_4_0_),
            .carryout(counter_sr_cry_0),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_sr_cry_0_THRU_LUT4_0_LC_14_4_1.C_ON=1'b1;
    defparam counter_sr_cry_0_THRU_LUT4_0_LC_14_4_1.SEQ_MODE=4'b0000;
    defparam counter_sr_cry_0_THRU_LUT4_0_LC_14_4_1.LUT_INIT=16'b1111111100000000;
    LogicCell40 counter_sr_cry_0_THRU_LUT4_0_LC_14_4_1 (
            .in0(_gnd_net_),
            .in1(N__3170),
            .in2(_gnd_net_),
            .in3(N__2936),
            .lcout(counter_sr_cry_0_THRU_CO),
            .ltout(),
            .carryin(counter_sr_cry_0),
            .carryout(counter_sr_cry_1),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_sr_cry_1_THRU_LUT4_0_LC_14_4_2.C_ON=1'b1;
    defparam counter_sr_cry_1_THRU_LUT4_0_LC_14_4_2.SEQ_MODE=4'b0000;
    defparam counter_sr_cry_1_THRU_LUT4_0_LC_14_4_2.LUT_INIT=16'b1111111100000000;
    LogicCell40 counter_sr_cry_1_THRU_LUT4_0_LC_14_4_2 (
            .in0(_gnd_net_),
            .in1(N__2847),
            .in2(_gnd_net_),
            .in3(N__2933),
            .lcout(counter_sr_cry_1_THRU_CO),
            .ltout(),
            .carryin(counter_sr_cry_1),
            .carryout(counter_sr_cry_2),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_sr_cry_2_THRU_LUT4_0_LC_14_4_3.C_ON=1'b1;
    defparam counter_sr_cry_2_THRU_LUT4_0_LC_14_4_3.SEQ_MODE=4'b0000;
    defparam counter_sr_cry_2_THRU_LUT4_0_LC_14_4_3.LUT_INIT=16'b1111111100000000;
    LogicCell40 counter_sr_cry_2_THRU_LUT4_0_LC_14_4_3 (
            .in0(_gnd_net_),
            .in1(N__2929),
            .in2(_gnd_net_),
            .in3(N__2903),
            .lcout(counter_sr_cry_2_THRU_CO),
            .ltout(),
            .carryin(counter_sr_cry_2),
            .carryout(counter_sr_cry_3),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_sr_cry_3_THRU_LUT4_0_LC_14_4_4.C_ON=1'b1;
    defparam counter_sr_cry_3_THRU_LUT4_0_LC_14_4_4.SEQ_MODE=4'b0000;
    defparam counter_sr_cry_3_THRU_LUT4_0_LC_14_4_4.LUT_INIT=16'b1111111100000000;
    LogicCell40 counter_sr_cry_3_THRU_LUT4_0_LC_14_4_4 (
            .in0(_gnd_net_),
            .in1(N__2899),
            .in2(_gnd_net_),
            .in3(N__2876),
            .lcout(counter_sr_cry_3_THRU_CO),
            .ltout(),
            .carryin(counter_sr_cry_3),
            .carryout(counter_sr_cry_4),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_sr_5_LC_14_4_5.C_ON=1'b0;
    defparam counter_sr_5_LC_14_4_5.SEQ_MODE=4'b1010;
    defparam counter_sr_5_LC_14_4_5.LUT_INIT=16'b1010101110111010;
    LogicCell40 counter_sr_5_LC_14_4_5 (
            .in0(N__3146),
            .in1(N__3111),
            .in2(N__2870),
            .in3(N__2873),
            .lcout(counter_srZ0Z_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3578),
            .ce(),
            .sr(N__3518));
    defparam counter_sr_2_LC_14_5_0.C_ON=1'b0;
    defparam counter_sr_2_LC_14_5_0.SEQ_MODE=4'b1010;
    defparam counter_sr_2_LC_14_5_0.LUT_INIT=16'b1010101100000100;
    LogicCell40 counter_sr_2_LC_14_5_0 (
            .in0(N__3149),
            .in1(N__2855),
            .in2(N__3124),
            .in3(N__2848),
            .lcout(counter_srZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam shift_reg_48_LC_14_5_1.C_ON=1'b0;
    defparam shift_reg_48_LC_14_5_1.SEQ_MODE=4'b1010;
    defparam shift_reg_48_LC_14_5_1.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_48_LC_14_5_1 (
            .in0(N__4182),
            .in1(N__3041),
            .in2(N__3251),
            .in3(N__3855),
            .lcout(shift_regZ0Z_48),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam shift_reg_45_LC_14_5_2.C_ON=1'b0;
    defparam shift_reg_45_LC_14_5_2.SEQ_MODE=4'b1010;
    defparam shift_reg_45_LC_14_5_2.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_45_LC_14_5_2 (
            .in0(N__3263),
            .in1(N__3850),
            .in2(N__3233),
            .in3(N__4184),
            .lcout(shift_regZ0Z_45),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam shift_reg_49_LC_14_5_3.C_ON=1'b0;
    defparam shift_reg_49_LC_14_5_3.SEQ_MODE=4'b1010;
    defparam shift_reg_49_LC_14_5_3.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_49_LC_14_5_3 (
            .in0(N__4183),
            .in1(N__3212),
            .in2(N__3206),
            .in3(N__3856),
            .lcout(shift_regZ0Z_49),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam counter_sr_1_LC_14_5_4.C_ON=1'b0;
    defparam counter_sr_1_LC_14_5_4.SEQ_MODE=4'b1010;
    defparam counter_sr_1_LC_14_5_4.LUT_INIT=16'b1010101100000100;
    LogicCell40 counter_sr_1_LC_14_5_4 (
            .in0(N__3148),
            .in1(N__3179),
            .in2(N__3123),
            .in3(N__3173),
            .lcout(counter_srZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam counter_sr_0_LC_14_5_5.C_ON=1'b0;
    defparam counter_sr_0_LC_14_5_5.SEQ_MODE=4'b1010;
    defparam counter_sr_0_LC_14_5_5.LUT_INIT=16'b1100000011010010;
    LogicCell40 counter_sr_0_LC_14_5_5 (
            .in0(N__3398),
            .in1(N__3147),
            .in2(N__3089),
            .in3(N__3112),
            .lcout(counter_srZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam shift_reg_47_LC_14_5_6.C_ON=1'b0;
    defparam shift_reg_47_LC_14_5_6.SEQ_MODE=4'b1010;
    defparam shift_reg_47_LC_14_5_6.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_47_LC_14_5_6 (
            .in0(N__3014),
            .in1(N__3851),
            .in2(N__3062),
            .in3(N__4185),
            .lcout(shift_regZ0Z_47),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam shift_reg_46_LC_14_5_7.C_ON=1'b0;
    defparam shift_reg_46_LC_14_5_7.SEQ_MODE=4'b1010;
    defparam shift_reg_46_LC_14_5_7.LUT_INIT=16'b0101000010001000;
    LogicCell40 shift_reg_46_LC_14_5_7 (
            .in0(N__4181),
            .in1(N__3035),
            .in2(N__3023),
            .in3(N__3854),
            .lcout(shift_regZ0Z_46),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3575),
            .ce(),
            .sr(N__3515));
    defparam shift_reg_2_LC_15_2_0.C_ON=1'b0;
    defparam shift_reg_2_LC_15_2_0.SEQ_MODE=4'b1010;
    defparam shift_reg_2_LC_15_2_0.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_2_LC_15_2_0 (
            .in0(N__4194),
            .in1(N__3008),
            .in2(N__3917),
            .in3(N__3440),
            .lcout(shift_regZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3581),
            .ce(),
            .sr(N__3521));
    defparam shift_reg_0_LC_15_2_1.C_ON=1'b0;
    defparam shift_reg_0_LC_15_2_1.SEQ_MODE=4'b1010;
    defparam shift_reg_0_LC_15_2_1.LUT_INIT=16'b0010001000000000;
    LogicCell40 shift_reg_0_LC_15_2_1 (
            .in0(N__2990),
            .in1(N__3894),
            .in2(_gnd_net_),
            .in3(N__4196),
            .lcout(shift_regZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3581),
            .ce(),
            .sr(N__3521));
    defparam shift_reg_1_LC_15_2_5.C_ON=1'b0;
    defparam shift_reg_1_LC_15_2_5.SEQ_MODE=4'b1010;
    defparam shift_reg_1_LC_15_2_5.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_1_LC_15_2_5 (
            .in0(N__3461),
            .in1(N__3895),
            .in2(N__3455),
            .in3(N__4197),
            .lcout(shift_regZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3581),
            .ce(),
            .sr(N__3521));
    defparam shift_reg_3_LC_15_2_6.C_ON=1'b0;
    defparam shift_reg_3_LC_15_2_6.SEQ_MODE=4'b1010;
    defparam shift_reg_3_LC_15_2_6.LUT_INIT=16'b0101100000001000;
    LogicCell40 shift_reg_3_LC_15_2_6 (
            .in0(N__4195),
            .in1(N__3434),
            .in2(N__3918),
            .in3(N__3413),
            .lcout(shift_regZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3581),
            .ce(),
            .sr(N__3521));
    defparam CONSTANT_ONE_LUT4_LC_15_5_1.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_15_5_1.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_15_5_1.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_15_5_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(CONSTANT_ONE_NET),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam shift_reg_38_LC_15_8_0.C_ON=1'b0;
    defparam shift_reg_38_LC_15_8_0.SEQ_MODE=4'b1010;
    defparam shift_reg_38_LC_15_8_0.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_38_LC_15_8_0 (
            .in0(N__4206),
            .in1(N__3338),
            .in2(N__3392),
            .in3(N__3919),
            .lcout(shift_regZ0Z_38),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3572),
            .ce(),
            .sr(N__3512));
    defparam shift_reg_37_LC_15_8_1.C_ON=1'b0;
    defparam shift_reg_37_LC_15_8_1.SEQ_MODE=4'b1010;
    defparam shift_reg_37_LC_15_8_1.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_37_LC_15_8_1 (
            .in0(N__3371),
            .in1(N__3902),
            .in2(N__3362),
            .in3(N__4207),
            .lcout(shift_regZ0Z_37),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3572),
            .ce(),
            .sr(N__3512));
    defparam shift_reg_39_LC_15_8_3.C_ON=1'b0;
    defparam shift_reg_39_LC_15_8_3.SEQ_MODE=4'b1010;
    defparam shift_reg_39_LC_15_8_3.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_39_LC_15_8_3 (
            .in0(N__3332),
            .in1(N__3903),
            .in2(N__3326),
            .in3(N__4208),
            .lcout(shift_regZ0Z_39),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3572),
            .ce(),
            .sr(N__3512));
    defparam shift_reg_41_LC_16_5_0.C_ON=1'b0;
    defparam shift_reg_41_LC_16_5_0.SEQ_MODE=4'b1010;
    defparam shift_reg_41_LC_16_5_0.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_41_LC_16_5_0 (
            .in0(N__4214),
            .in1(N__3848),
            .in2(N__3302),
            .in3(N__4179),
            .lcout(shift_regZ0Z_41),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3580),
            .ce(),
            .sr(N__3520));
    defparam shift_reg_44_LC_16_5_1.C_ON=1'b0;
    defparam shift_reg_44_LC_16_5_1.SEQ_MODE=4'b1010;
    defparam shift_reg_44_LC_16_5_1.LUT_INIT=16'b0101000010001000;
    LogicCell40 shift_reg_44_LC_16_5_1 (
            .in0(N__4177),
            .in1(N__3281),
            .in2(N__4259),
            .in3(N__3853),
            .lcout(shift_regZ0Z_44),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3580),
            .ce(),
            .sr(N__3520));
    defparam shift_reg_43_LC_16_5_2.C_ON=1'b0;
    defparam shift_reg_43_LC_16_5_2.SEQ_MODE=4'b1010;
    defparam shift_reg_43_LC_16_5_2.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_43_LC_16_5_2 (
            .in0(N__3587),
            .in1(N__3849),
            .in2(N__4277),
            .in3(N__4180),
            .lcout(shift_regZ0Z_43),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3580),
            .ce(),
            .sr(N__3520));
    defparam shift_reg_40_LC_16_5_4.C_ON=1'b0;
    defparam shift_reg_40_LC_16_5_4.SEQ_MODE=4'b1010;
    defparam shift_reg_40_LC_16_5_4.LUT_INIT=16'b0011000010001000;
    LogicCell40 shift_reg_40_LC_16_5_4 (
            .in0(N__4250),
            .in1(N__3847),
            .in2(N__4241),
            .in3(N__4178),
            .lcout(shift_regZ0Z_40),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3580),
            .ce(),
            .sr(N__3520));
    defparam shift_reg_42_LC_16_5_7.C_ON=1'b0;
    defparam shift_reg_42_LC_16_5_7.SEQ_MODE=4'b1010;
    defparam shift_reg_42_LC_16_5_7.LUT_INIT=16'b0100010010100000;
    LogicCell40 shift_reg_42_LC_16_5_7 (
            .in0(N__4176),
            .in1(N__3947),
            .in2(N__3941),
            .in3(N__3852),
            .lcout(shift_regZ0Z_42),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__3580),
            .ce(),
            .sr(N__3520));
endmodule // Shift_Register_Elec_Config
