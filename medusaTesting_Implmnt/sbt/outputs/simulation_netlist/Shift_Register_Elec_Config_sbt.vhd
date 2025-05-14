-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Mar 24 2025 11:29:46

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "Shift_Register_Elec_Config" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of Shift_Register_Elec_Config
entity Shift_Register_Elec_Config is
port (
    electr_config_in : in std_logic_vector(54 downto 0);
    enable_config : out std_logic;
    RST_N : in std_logic;
    sr_finish : out std_logic;
    CLK : in std_logic;
    serial_out : out std_logic;
    enable_desp : in std_logic);
end Shift_Register_Elec_Config;

-- Architecture of Shift_Register_Elec_Config
-- View name is \INTERFACE\
architecture \INTERFACE\ of Shift_Register_Elec_Config is

signal \N__4838\ : std_logic;
signal \N__4837\ : std_logic;
signal \N__4836\ : std_logic;
signal \N__4827\ : std_logic;
signal \N__4826\ : std_logic;
signal \N__4825\ : std_logic;
signal \N__4818\ : std_logic;
signal \N__4817\ : std_logic;
signal \N__4816\ : std_logic;
signal \N__4809\ : std_logic;
signal \N__4808\ : std_logic;
signal \N__4807\ : std_logic;
signal \N__4800\ : std_logic;
signal \N__4799\ : std_logic;
signal \N__4798\ : std_logic;
signal \N__4791\ : std_logic;
signal \N__4790\ : std_logic;
signal \N__4789\ : std_logic;
signal \N__4782\ : std_logic;
signal \N__4781\ : std_logic;
signal \N__4780\ : std_logic;
signal \N__4773\ : std_logic;
signal \N__4772\ : std_logic;
signal \N__4771\ : std_logic;
signal \N__4764\ : std_logic;
signal \N__4763\ : std_logic;
signal \N__4762\ : std_logic;
signal \N__4755\ : std_logic;
signal \N__4754\ : std_logic;
signal \N__4753\ : std_logic;
signal \N__4746\ : std_logic;
signal \N__4745\ : std_logic;
signal \N__4744\ : std_logic;
signal \N__4737\ : std_logic;
signal \N__4736\ : std_logic;
signal \N__4735\ : std_logic;
signal \N__4728\ : std_logic;
signal \N__4727\ : std_logic;
signal \N__4726\ : std_logic;
signal \N__4719\ : std_logic;
signal \N__4718\ : std_logic;
signal \N__4717\ : std_logic;
signal \N__4710\ : std_logic;
signal \N__4709\ : std_logic;
signal \N__4708\ : std_logic;
signal \N__4701\ : std_logic;
signal \N__4700\ : std_logic;
signal \N__4699\ : std_logic;
signal \N__4692\ : std_logic;
signal \N__4691\ : std_logic;
signal \N__4690\ : std_logic;
signal \N__4683\ : std_logic;
signal \N__4682\ : std_logic;
signal \N__4681\ : std_logic;
signal \N__4674\ : std_logic;
signal \N__4673\ : std_logic;
signal \N__4672\ : std_logic;
signal \N__4665\ : std_logic;
signal \N__4664\ : std_logic;
signal \N__4663\ : std_logic;
signal \N__4656\ : std_logic;
signal \N__4655\ : std_logic;
signal \N__4654\ : std_logic;
signal \N__4647\ : std_logic;
signal \N__4646\ : std_logic;
signal \N__4645\ : std_logic;
signal \N__4638\ : std_logic;
signal \N__4637\ : std_logic;
signal \N__4636\ : std_logic;
signal \N__4629\ : std_logic;
signal \N__4628\ : std_logic;
signal \N__4627\ : std_logic;
signal \N__4620\ : std_logic;
signal \N__4619\ : std_logic;
signal \N__4618\ : std_logic;
signal \N__4611\ : std_logic;
signal \N__4610\ : std_logic;
signal \N__4609\ : std_logic;
signal \N__4602\ : std_logic;
signal \N__4601\ : std_logic;
signal \N__4600\ : std_logic;
signal \N__4593\ : std_logic;
signal \N__4592\ : std_logic;
signal \N__4591\ : std_logic;
signal \N__4584\ : std_logic;
signal \N__4583\ : std_logic;
signal \N__4582\ : std_logic;
signal \N__4575\ : std_logic;
signal \N__4574\ : std_logic;
signal \N__4573\ : std_logic;
signal \N__4566\ : std_logic;
signal \N__4565\ : std_logic;
signal \N__4564\ : std_logic;
signal \N__4557\ : std_logic;
signal \N__4556\ : std_logic;
signal \N__4555\ : std_logic;
signal \N__4548\ : std_logic;
signal \N__4547\ : std_logic;
signal \N__4546\ : std_logic;
signal \N__4539\ : std_logic;
signal \N__4538\ : std_logic;
signal \N__4537\ : std_logic;
signal \N__4530\ : std_logic;
signal \N__4529\ : std_logic;
signal \N__4528\ : std_logic;
signal \N__4521\ : std_logic;
signal \N__4520\ : std_logic;
signal \N__4519\ : std_logic;
signal \N__4512\ : std_logic;
signal \N__4511\ : std_logic;
signal \N__4510\ : std_logic;
signal \N__4503\ : std_logic;
signal \N__4502\ : std_logic;
signal \N__4501\ : std_logic;
signal \N__4494\ : std_logic;
signal \N__4493\ : std_logic;
signal \N__4492\ : std_logic;
signal \N__4485\ : std_logic;
signal \N__4484\ : std_logic;
signal \N__4483\ : std_logic;
signal \N__4476\ : std_logic;
signal \N__4475\ : std_logic;
signal \N__4474\ : std_logic;
signal \N__4467\ : std_logic;
signal \N__4466\ : std_logic;
signal \N__4465\ : std_logic;
signal \N__4458\ : std_logic;
signal \N__4457\ : std_logic;
signal \N__4456\ : std_logic;
signal \N__4449\ : std_logic;
signal \N__4448\ : std_logic;
signal \N__4447\ : std_logic;
signal \N__4440\ : std_logic;
signal \N__4439\ : std_logic;
signal \N__4438\ : std_logic;
signal \N__4431\ : std_logic;
signal \N__4430\ : std_logic;
signal \N__4429\ : std_logic;
signal \N__4422\ : std_logic;
signal \N__4421\ : std_logic;
signal \N__4420\ : std_logic;
signal \N__4413\ : std_logic;
signal \N__4412\ : std_logic;
signal \N__4411\ : std_logic;
signal \N__4404\ : std_logic;
signal \N__4403\ : std_logic;
signal \N__4402\ : std_logic;
signal \N__4395\ : std_logic;
signal \N__4394\ : std_logic;
signal \N__4393\ : std_logic;
signal \N__4386\ : std_logic;
signal \N__4385\ : std_logic;
signal \N__4384\ : std_logic;
signal \N__4377\ : std_logic;
signal \N__4376\ : std_logic;
signal \N__4375\ : std_logic;
signal \N__4368\ : std_logic;
signal \N__4367\ : std_logic;
signal \N__4366\ : std_logic;
signal \N__4359\ : std_logic;
signal \N__4358\ : std_logic;
signal \N__4357\ : std_logic;
signal \N__4350\ : std_logic;
signal \N__4349\ : std_logic;
signal \N__4348\ : std_logic;
signal \N__4341\ : std_logic;
signal \N__4340\ : std_logic;
signal \N__4339\ : std_logic;
signal \N__4332\ : std_logic;
signal \N__4331\ : std_logic;
signal \N__4330\ : std_logic;
signal \N__4323\ : std_logic;
signal \N__4322\ : std_logic;
signal \N__4321\ : std_logic;
signal \N__4314\ : std_logic;
signal \N__4313\ : std_logic;
signal \N__4312\ : std_logic;
signal \N__4305\ : std_logic;
signal \N__4304\ : std_logic;
signal \N__4303\ : std_logic;
signal \N__4296\ : std_logic;
signal \N__4295\ : std_logic;
signal \N__4294\ : std_logic;
signal \N__4277\ : std_logic;
signal \N__4274\ : std_logic;
signal \N__4271\ : std_logic;
signal \N__4268\ : std_logic;
signal \N__4265\ : std_logic;
signal \N__4262\ : std_logic;
signal \N__4259\ : std_logic;
signal \N__4256\ : std_logic;
signal \N__4253\ : std_logic;
signal \N__4250\ : std_logic;
signal \N__4247\ : std_logic;
signal \N__4244\ : std_logic;
signal \N__4241\ : std_logic;
signal \N__4238\ : std_logic;
signal \N__4235\ : std_logic;
signal \N__4232\ : std_logic;
signal \N__4229\ : std_logic;
signal \N__4226\ : std_logic;
signal \N__4223\ : std_logic;
signal \N__4220\ : std_logic;
signal \N__4217\ : std_logic;
signal \N__4214\ : std_logic;
signal \N__4211\ : std_logic;
signal \N__4208\ : std_logic;
signal \N__4207\ : std_logic;
signal \N__4206\ : std_logic;
signal \N__4205\ : std_logic;
signal \N__4204\ : std_logic;
signal \N__4203\ : std_logic;
signal \N__4202\ : std_logic;
signal \N__4201\ : std_logic;
signal \N__4200\ : std_logic;
signal \N__4199\ : std_logic;
signal \N__4198\ : std_logic;
signal \N__4197\ : std_logic;
signal \N__4196\ : std_logic;
signal \N__4195\ : std_logic;
signal \N__4194\ : std_logic;
signal \N__4193\ : std_logic;
signal \N__4192\ : std_logic;
signal \N__4191\ : std_logic;
signal \N__4190\ : std_logic;
signal \N__4189\ : std_logic;
signal \N__4188\ : std_logic;
signal \N__4187\ : std_logic;
signal \N__4186\ : std_logic;
signal \N__4185\ : std_logic;
signal \N__4184\ : std_logic;
signal \N__4183\ : std_logic;
signal \N__4182\ : std_logic;
signal \N__4181\ : std_logic;
signal \N__4180\ : std_logic;
signal \N__4179\ : std_logic;
signal \N__4178\ : std_logic;
signal \N__4177\ : std_logic;
signal \N__4176\ : std_logic;
signal \N__4175\ : std_logic;
signal \N__4174\ : std_logic;
signal \N__4173\ : std_logic;
signal \N__4172\ : std_logic;
signal \N__4171\ : std_logic;
signal \N__4170\ : std_logic;
signal \N__4169\ : std_logic;
signal \N__4168\ : std_logic;
signal \N__4167\ : std_logic;
signal \N__4166\ : std_logic;
signal \N__4165\ : std_logic;
signal \N__4164\ : std_logic;
signal \N__4163\ : std_logic;
signal \N__4162\ : std_logic;
signal \N__4161\ : std_logic;
signal \N__4154\ : std_logic;
signal \N__4145\ : std_logic;
signal \N__4136\ : std_logic;
signal \N__4127\ : std_logic;
signal \N__4126\ : std_logic;
signal \N__4125\ : std_logic;
signal \N__4124\ : std_logic;
signal \N__4123\ : std_logic;
signal \N__4122\ : std_logic;
signal \N__4121\ : std_logic;
signal \N__4120\ : std_logic;
signal \N__4119\ : std_logic;
signal \N__4118\ : std_logic;
signal \N__4117\ : std_logic;
signal \N__4116\ : std_logic;
signal \N__4109\ : std_logic;
signal \N__4102\ : std_logic;
signal \N__4097\ : std_logic;
signal \N__4086\ : std_logic;
signal \N__4075\ : std_logic;
signal \N__4070\ : std_logic;
signal \N__4059\ : std_logic;
signal \N__4042\ : std_logic;
signal \N__4039\ : std_logic;
signal \N__4032\ : std_logic;
signal \N__4031\ : std_logic;
signal \N__4030\ : std_logic;
signal \N__4029\ : std_logic;
signal \N__4026\ : std_logic;
signal \N__4021\ : std_logic;
signal \N__4004\ : std_logic;
signal \N__4001\ : std_logic;
signal \N__3998\ : std_logic;
signal \N__3993\ : std_logic;
signal \N__3990\ : std_logic;
signal \N__3981\ : std_logic;
signal \N__3978\ : std_logic;
signal \N__3973\ : std_logic;
signal \N__3970\ : std_logic;
signal \N__3947\ : std_logic;
signal \N__3944\ : std_logic;
signal \N__3941\ : std_logic;
signal \N__3938\ : std_logic;
signal \N__3935\ : std_logic;
signal \N__3932\ : std_logic;
signal \N__3929\ : std_logic;
signal \N__3926\ : std_logic;
signal \N__3923\ : std_logic;
signal \N__3920\ : std_logic;
signal \N__3919\ : std_logic;
signal \N__3918\ : std_logic;
signal \N__3917\ : std_logic;
signal \N__3916\ : std_logic;
signal \N__3915\ : std_logic;
signal \N__3914\ : std_logic;
signal \N__3913\ : std_logic;
signal \N__3912\ : std_logic;
signal \N__3911\ : std_logic;
signal \N__3910\ : std_logic;
signal \N__3907\ : std_logic;
signal \N__3904\ : std_logic;
signal \N__3903\ : std_logic;
signal \N__3902\ : std_logic;
signal \N__3899\ : std_logic;
signal \N__3896\ : std_logic;
signal \N__3895\ : std_logic;
signal \N__3894\ : std_logic;
signal \N__3893\ : std_logic;
signal \N__3892\ : std_logic;
signal \N__3891\ : std_logic;
signal \N__3890\ : std_logic;
signal \N__3889\ : std_logic;
signal \N__3888\ : std_logic;
signal \N__3887\ : std_logic;
signal \N__3884\ : std_logic;
signal \N__3881\ : std_logic;
signal \N__3878\ : std_logic;
signal \N__3875\ : std_logic;
signal \N__3872\ : std_logic;
signal \N__3871\ : std_logic;
signal \N__3870\ : std_logic;
signal \N__3869\ : std_logic;
signal \N__3868\ : std_logic;
signal \N__3867\ : std_logic;
signal \N__3866\ : std_logic;
signal \N__3865\ : std_logic;
signal \N__3862\ : std_logic;
signal \N__3859\ : std_logic;
signal \N__3858\ : std_logic;
signal \N__3857\ : std_logic;
signal \N__3856\ : std_logic;
signal \N__3855\ : std_logic;
signal \N__3854\ : std_logic;
signal \N__3853\ : std_logic;
signal \N__3852\ : std_logic;
signal \N__3851\ : std_logic;
signal \N__3850\ : std_logic;
signal \N__3849\ : std_logic;
signal \N__3848\ : std_logic;
signal \N__3847\ : std_logic;
signal \N__3844\ : std_logic;
signal \N__3841\ : std_logic;
signal \N__3836\ : std_logic;
signal \N__3827\ : std_logic;
signal \N__3824\ : std_logic;
signal \N__3821\ : std_logic;
signal \N__3820\ : std_logic;
signal \N__3817\ : std_logic;
signal \N__3816\ : std_logic;
signal \N__3815\ : std_logic;
signal \N__3814\ : std_logic;
signal \N__3813\ : std_logic;
signal \N__3812\ : std_logic;
signal \N__3811\ : std_logic;
signal \N__3810\ : std_logic;
signal \N__3809\ : std_logic;
signal \N__3808\ : std_logic;
signal \N__3807\ : std_logic;
signal \N__3806\ : std_logic;
signal \N__3805\ : std_logic;
signal \N__3804\ : std_logic;
signal \N__3801\ : std_logic;
signal \N__3800\ : std_logic;
signal \N__3799\ : std_logic;
signal \N__3798\ : std_logic;
signal \N__3797\ : std_logic;
signal \N__3796\ : std_logic;
signal \N__3795\ : std_logic;
signal \N__3792\ : std_logic;
signal \N__3791\ : std_logic;
signal \N__3788\ : std_logic;
signal \N__3783\ : std_logic;
signal \N__3772\ : std_logic;
signal \N__3767\ : std_logic;
signal \N__3754\ : std_logic;
signal \N__3749\ : std_logic;
signal \N__3742\ : std_logic;
signal \N__3737\ : std_logic;
signal \N__3732\ : std_logic;
signal \N__3725\ : std_logic;
signal \N__3722\ : std_logic;
signal \N__3717\ : std_logic;
signal \N__3714\ : std_logic;
signal \N__3707\ : std_logic;
signal \N__3700\ : std_logic;
signal \N__3691\ : std_logic;
signal \N__3686\ : std_logic;
signal \N__3683\ : std_logic;
signal \N__3672\ : std_logic;
signal \N__3665\ : std_logic;
signal \N__3662\ : std_logic;
signal \N__3657\ : std_logic;
signal \N__3652\ : std_logic;
signal \N__3647\ : std_logic;
signal \N__3638\ : std_logic;
signal \N__3629\ : std_logic;
signal \N__3626\ : std_logic;
signal \N__3621\ : std_logic;
signal \N__3610\ : std_logic;
signal \N__3587\ : std_logic;
signal \N__3584\ : std_logic;
signal \N__3581\ : std_logic;
signal \N__3580\ : std_logic;
signal \N__3579\ : std_logic;
signal \N__3578\ : std_logic;
signal \N__3577\ : std_logic;
signal \N__3576\ : std_logic;
signal \N__3575\ : std_logic;
signal \N__3574\ : std_logic;
signal \N__3573\ : std_logic;
signal \N__3572\ : std_logic;
signal \N__3571\ : std_logic;
signal \N__3570\ : std_logic;
signal \N__3569\ : std_logic;
signal \N__3568\ : std_logic;
signal \N__3567\ : std_logic;
signal \N__3566\ : std_logic;
signal \N__3565\ : std_logic;
signal \N__3564\ : std_logic;
signal \N__3527\ : std_logic;
signal \N__3524\ : std_logic;
signal \N__3521\ : std_logic;
signal \N__3520\ : std_logic;
signal \N__3519\ : std_logic;
signal \N__3518\ : std_logic;
signal \N__3517\ : std_logic;
signal \N__3516\ : std_logic;
signal \N__3515\ : std_logic;
signal \N__3514\ : std_logic;
signal \N__3513\ : std_logic;
signal \N__3512\ : std_logic;
signal \N__3511\ : std_logic;
signal \N__3510\ : std_logic;
signal \N__3509\ : std_logic;
signal \N__3508\ : std_logic;
signal \N__3507\ : std_logic;
signal \N__3506\ : std_logic;
signal \N__3505\ : std_logic;
signal \N__3504\ : std_logic;
signal \N__3467\ : std_logic;
signal \N__3464\ : std_logic;
signal \N__3461\ : std_logic;
signal \N__3458\ : std_logic;
signal \N__3455\ : std_logic;
signal \N__3452\ : std_logic;
signal \N__3449\ : std_logic;
signal \N__3446\ : std_logic;
signal \N__3443\ : std_logic;
signal \N__3440\ : std_logic;
signal \N__3437\ : std_logic;
signal \N__3434\ : std_logic;
signal \N__3431\ : std_logic;
signal \N__3428\ : std_logic;
signal \N__3425\ : std_logic;
signal \N__3422\ : std_logic;
signal \N__3419\ : std_logic;
signal \N__3416\ : std_logic;
signal \N__3413\ : std_logic;
signal \N__3410\ : std_logic;
signal \N__3407\ : std_logic;
signal \N__3404\ : std_logic;
signal \N__3401\ : std_logic;
signal \N__3398\ : std_logic;
signal \N__3395\ : std_logic;
signal \N__3392\ : std_logic;
signal \N__3389\ : std_logic;
signal \N__3386\ : std_logic;
signal \N__3383\ : std_logic;
signal \N__3380\ : std_logic;
signal \N__3377\ : std_logic;
signal \N__3374\ : std_logic;
signal \N__3371\ : std_logic;
signal \N__3368\ : std_logic;
signal \N__3365\ : std_logic;
signal \N__3362\ : std_logic;
signal \N__3359\ : std_logic;
signal \N__3356\ : std_logic;
signal \N__3353\ : std_logic;
signal \N__3350\ : std_logic;
signal \N__3347\ : std_logic;
signal \N__3344\ : std_logic;
signal \N__3341\ : std_logic;
signal \N__3338\ : std_logic;
signal \N__3335\ : std_logic;
signal \N__3332\ : std_logic;
signal \N__3329\ : std_logic;
signal \N__3326\ : std_logic;
signal \N__3323\ : std_logic;
signal \N__3320\ : std_logic;
signal \N__3317\ : std_logic;
signal \N__3314\ : std_logic;
signal \N__3311\ : std_logic;
signal \N__3308\ : std_logic;
signal \N__3305\ : std_logic;
signal \N__3302\ : std_logic;
signal \N__3299\ : std_logic;
signal \N__3296\ : std_logic;
signal \N__3293\ : std_logic;
signal \N__3290\ : std_logic;
signal \N__3287\ : std_logic;
signal \N__3284\ : std_logic;
signal \N__3281\ : std_logic;
signal \N__3278\ : std_logic;
signal \N__3275\ : std_logic;
signal \N__3272\ : std_logic;
signal \N__3269\ : std_logic;
signal \N__3266\ : std_logic;
signal \N__3263\ : std_logic;
signal \N__3260\ : std_logic;
signal \N__3257\ : std_logic;
signal \N__3254\ : std_logic;
signal \N__3251\ : std_logic;
signal \N__3248\ : std_logic;
signal \N__3245\ : std_logic;
signal \N__3242\ : std_logic;
signal \N__3239\ : std_logic;
signal \N__3236\ : std_logic;
signal \N__3233\ : std_logic;
signal \N__3230\ : std_logic;
signal \N__3227\ : std_logic;
signal \N__3224\ : std_logic;
signal \N__3221\ : std_logic;
signal \N__3218\ : std_logic;
signal \N__3215\ : std_logic;
signal \N__3212\ : std_logic;
signal \N__3209\ : std_logic;
signal \N__3206\ : std_logic;
signal \N__3203\ : std_logic;
signal \N__3200\ : std_logic;
signal \N__3197\ : std_logic;
signal \N__3194\ : std_logic;
signal \N__3191\ : std_logic;
signal \N__3188\ : std_logic;
signal \N__3185\ : std_logic;
signal \N__3182\ : std_logic;
signal \N__3179\ : std_logic;
signal \N__3176\ : std_logic;
signal \N__3173\ : std_logic;
signal \N__3172\ : std_logic;
signal \N__3171\ : std_logic;
signal \N__3170\ : std_logic;
signal \N__3167\ : std_logic;
signal \N__3164\ : std_logic;
signal \N__3161\ : std_logic;
signal \N__3158\ : std_logic;
signal \N__3149\ : std_logic;
signal \N__3148\ : std_logic;
signal \N__3147\ : std_logic;
signal \N__3146\ : std_logic;
signal \N__3145\ : std_logic;
signal \N__3138\ : std_logic;
signal \N__3135\ : std_logic;
signal \N__3132\ : std_logic;
signal \N__3125\ : std_logic;
signal \N__3124\ : std_logic;
signal \N__3123\ : std_logic;
signal \N__3120\ : std_logic;
signal \N__3119\ : std_logic;
signal \N__3116\ : std_logic;
signal \N__3113\ : std_logic;
signal \N__3112\ : std_logic;
signal \N__3111\ : std_logic;
signal \N__3106\ : std_logic;
signal \N__3099\ : std_logic;
signal \N__3096\ : std_logic;
signal \N__3089\ : std_logic;
signal \N__3086\ : std_logic;
signal \N__3085\ : std_logic;
signal \N__3084\ : std_logic;
signal \N__3083\ : std_logic;
signal \N__3080\ : std_logic;
signal \N__3077\ : std_logic;
signal \N__3074\ : std_logic;
signal \N__3071\ : std_logic;
signal \N__3062\ : std_logic;
signal \N__3059\ : std_logic;
signal \N__3056\ : std_logic;
signal \N__3053\ : std_logic;
signal \N__3050\ : std_logic;
signal \N__3047\ : std_logic;
signal \N__3044\ : std_logic;
signal \N__3041\ : std_logic;
signal \N__3038\ : std_logic;
signal \N__3035\ : std_logic;
signal \N__3032\ : std_logic;
signal \N__3029\ : std_logic;
signal \N__3026\ : std_logic;
signal \N__3023\ : std_logic;
signal \N__3020\ : std_logic;
signal \N__3017\ : std_logic;
signal \N__3014\ : std_logic;
signal \N__3011\ : std_logic;
signal \N__3008\ : std_logic;
signal \N__3005\ : std_logic;
signal \N__3002\ : std_logic;
signal \N__2999\ : std_logic;
signal \N__2996\ : std_logic;
signal \N__2993\ : std_logic;
signal \N__2990\ : std_logic;
signal \N__2987\ : std_logic;
signal \N__2984\ : std_logic;
signal \N__2981\ : std_logic;
signal \N__2978\ : std_logic;
signal \N__2975\ : std_logic;
signal \N__2972\ : std_logic;
signal \N__2969\ : std_logic;
signal \N__2966\ : std_logic;
signal \N__2963\ : std_logic;
signal \N__2960\ : std_logic;
signal \N__2957\ : std_logic;
signal \N__2954\ : std_logic;
signal \N__2951\ : std_logic;
signal \N__2948\ : std_logic;
signal \N__2945\ : std_logic;
signal \N__2942\ : std_logic;
signal \N__2939\ : std_logic;
signal \N__2936\ : std_logic;
signal \N__2933\ : std_logic;
signal \N__2930\ : std_logic;
signal \N__2929\ : std_logic;
signal \N__2928\ : std_logic;
signal \N__2927\ : std_logic;
signal \N__2924\ : std_logic;
signal \N__2921\ : std_logic;
signal \N__2916\ : std_logic;
signal \N__2909\ : std_logic;
signal \N__2906\ : std_logic;
signal \N__2903\ : std_logic;
signal \N__2900\ : std_logic;
signal \N__2899\ : std_logic;
signal \N__2898\ : std_logic;
signal \N__2895\ : std_logic;
signal \N__2892\ : std_logic;
signal \N__2889\ : std_logic;
signal \N__2882\ : std_logic;
signal \N__2879\ : std_logic;
signal \N__2876\ : std_logic;
signal \N__2873\ : std_logic;
signal \N__2870\ : std_logic;
signal \N__2867\ : std_logic;
signal \N__2866\ : std_logic;
signal \N__2863\ : std_logic;
signal \N__2860\ : std_logic;
signal \N__2855\ : std_logic;
signal \N__2852\ : std_logic;
signal \N__2849\ : std_logic;
signal \N__2848\ : std_logic;
signal \N__2847\ : std_logic;
signal \N__2844\ : std_logic;
signal \N__2843\ : std_logic;
signal \N__2840\ : std_logic;
signal \N__2837\ : std_logic;
signal \N__2834\ : std_logic;
signal \N__2831\ : std_logic;
signal \N__2822\ : std_logic;
signal \N__2819\ : std_logic;
signal \N__2816\ : std_logic;
signal \N__2815\ : std_logic;
signal \N__2812\ : std_logic;
signal \N__2809\ : std_logic;
signal \N__2804\ : std_logic;
signal \N__2801\ : std_logic;
signal \N__2798\ : std_logic;
signal \N__2795\ : std_logic;
signal \N__2792\ : std_logic;
signal \N__2789\ : std_logic;
signal \N__2786\ : std_logic;
signal \N__2783\ : std_logic;
signal \N__2780\ : std_logic;
signal \N__2777\ : std_logic;
signal \N__2774\ : std_logic;
signal \N__2771\ : std_logic;
signal \N__2768\ : std_logic;
signal \N__2765\ : std_logic;
signal \N__2762\ : std_logic;
signal \N__2759\ : std_logic;
signal \N__2756\ : std_logic;
signal \N__2753\ : std_logic;
signal \N__2750\ : std_logic;
signal \N__2747\ : std_logic;
signal \N__2744\ : std_logic;
signal \N__2741\ : std_logic;
signal \N__2738\ : std_logic;
signal \N__2735\ : std_logic;
signal \N__2732\ : std_logic;
signal \N__2729\ : std_logic;
signal \N__2726\ : std_logic;
signal \N__2723\ : std_logic;
signal \N__2720\ : std_logic;
signal \N__2717\ : std_logic;
signal \N__2714\ : std_logic;
signal \N__2711\ : std_logic;
signal \N__2708\ : std_logic;
signal \N__2705\ : std_logic;
signal \N__2702\ : std_logic;
signal \N__2699\ : std_logic;
signal \N__2696\ : std_logic;
signal \N__2693\ : std_logic;
signal \N__2690\ : std_logic;
signal \N__2687\ : std_logic;
signal \N__2684\ : std_logic;
signal \N__2681\ : std_logic;
signal \N__2678\ : std_logic;
signal \N__2675\ : std_logic;
signal \N__2672\ : std_logic;
signal \N__2669\ : std_logic;
signal \N__2666\ : std_logic;
signal \N__2663\ : std_logic;
signal \N__2660\ : std_logic;
signal \N__2657\ : std_logic;
signal \N__2654\ : std_logic;
signal \N__2651\ : std_logic;
signal \N__2648\ : std_logic;
signal \N__2645\ : std_logic;
signal \N__2642\ : std_logic;
signal \N__2639\ : std_logic;
signal \N__2636\ : std_logic;
signal \N__2633\ : std_logic;
signal \N__2630\ : std_logic;
signal \N__2627\ : std_logic;
signal \N__2624\ : std_logic;
signal \N__2621\ : std_logic;
signal \N__2618\ : std_logic;
signal \N__2615\ : std_logic;
signal \N__2612\ : std_logic;
signal \N__2609\ : std_logic;
signal \N__2606\ : std_logic;
signal \N__2603\ : std_logic;
signal \N__2600\ : std_logic;
signal \N__2597\ : std_logic;
signal \N__2594\ : std_logic;
signal \N__2591\ : std_logic;
signal \N__2588\ : std_logic;
signal \N__2585\ : std_logic;
signal \N__2582\ : std_logic;
signal \N__2579\ : std_logic;
signal \N__2576\ : std_logic;
signal \N__2573\ : std_logic;
signal \N__2570\ : std_logic;
signal \N__2567\ : std_logic;
signal \N__2564\ : std_logic;
signal \N__2561\ : std_logic;
signal \N__2558\ : std_logic;
signal \N__2555\ : std_logic;
signal \N__2552\ : std_logic;
signal \N__2549\ : std_logic;
signal \N__2546\ : std_logic;
signal \N__2543\ : std_logic;
signal \N__2540\ : std_logic;
signal \N__2537\ : std_logic;
signal \N__2534\ : std_logic;
signal \N__2531\ : std_logic;
signal \N__2528\ : std_logic;
signal \N__2525\ : std_logic;
signal \N__2522\ : std_logic;
signal \N__2519\ : std_logic;
signal \N__2516\ : std_logic;
signal \N__2513\ : std_logic;
signal \N__2510\ : std_logic;
signal \N__2507\ : std_logic;
signal \N__2504\ : std_logic;
signal \N__2501\ : std_logic;
signal \N__2498\ : std_logic;
signal \N__2495\ : std_logic;
signal \N__2492\ : std_logic;
signal \N__2489\ : std_logic;
signal \N__2486\ : std_logic;
signal \N__2483\ : std_logic;
signal \N__2480\ : std_logic;
signal \N__2477\ : std_logic;
signal \N__2474\ : std_logic;
signal \N__2471\ : std_logic;
signal \N__2468\ : std_logic;
signal \N__2465\ : std_logic;
signal \N__2462\ : std_logic;
signal \N__2459\ : std_logic;
signal \N__2456\ : std_logic;
signal \N__2453\ : std_logic;
signal \N__2450\ : std_logic;
signal \N__2447\ : std_logic;
signal \N__2444\ : std_logic;
signal \N__2441\ : std_logic;
signal \N__2438\ : std_logic;
signal \N__2435\ : std_logic;
signal \N__2432\ : std_logic;
signal \N__2429\ : std_logic;
signal \N__2426\ : std_logic;
signal \N__2423\ : std_logic;
signal \N__2420\ : std_logic;
signal \N__2417\ : std_logic;
signal \N__2414\ : std_logic;
signal \N__2411\ : std_logic;
signal \N__2408\ : std_logic;
signal \N__2405\ : std_logic;
signal \N__2402\ : std_logic;
signal \N__2399\ : std_logic;
signal \N__2396\ : std_logic;
signal \N__2393\ : std_logic;
signal \N__2390\ : std_logic;
signal \N__2387\ : std_logic;
signal \N__2384\ : std_logic;
signal \N__2381\ : std_logic;
signal \N__2378\ : std_logic;
signal \N__2375\ : std_logic;
signal \N__2372\ : std_logic;
signal \N__2369\ : std_logic;
signal \N__2366\ : std_logic;
signal \N__2363\ : std_logic;
signal \N__2360\ : std_logic;
signal \N__2357\ : std_logic;
signal \N__2354\ : std_logic;
signal \N__2351\ : std_logic;
signal \N__2348\ : std_logic;
signal \N__2345\ : std_logic;
signal \N__2342\ : std_logic;
signal \N__2339\ : std_logic;
signal \N__2336\ : std_logic;
signal \N__2333\ : std_logic;
signal \N__2330\ : std_logic;
signal \N__2327\ : std_logic;
signal \N__2324\ : std_logic;
signal \N__2321\ : std_logic;
signal \N__2318\ : std_logic;
signal \N__2315\ : std_logic;
signal \N__2312\ : std_logic;
signal \N__2309\ : std_logic;
signal \N__2306\ : std_logic;
signal \N__2303\ : std_logic;
signal \N__2300\ : std_logic;
signal \N__2297\ : std_logic;
signal \N__2294\ : std_logic;
signal \N__2291\ : std_logic;
signal \N__2288\ : std_logic;
signal \N__2285\ : std_logic;
signal \N__2282\ : std_logic;
signal \N__2279\ : std_logic;
signal \N__2276\ : std_logic;
signal \N__2273\ : std_logic;
signal \N__2270\ : std_logic;
signal \N__2267\ : std_logic;
signal \N__2264\ : std_logic;
signal \N__2261\ : std_logic;
signal \N__2258\ : std_logic;
signal \N__2255\ : std_logic;
signal \N__2252\ : std_logic;
signal \N__2249\ : std_logic;
signal \N__2246\ : std_logic;
signal \N__2243\ : std_logic;
signal \N__2240\ : std_logic;
signal \N__2237\ : std_logic;
signal \N__2234\ : std_logic;
signal \N__2231\ : std_logic;
signal \N__2228\ : std_logic;
signal \N__2225\ : std_logic;
signal \N__2222\ : std_logic;
signal \N__2219\ : std_logic;
signal \N__2216\ : std_logic;
signal \N__2213\ : std_logic;
signal \N__2210\ : std_logic;
signal \N__2207\ : std_logic;
signal \N__2204\ : std_logic;
signal \N__2201\ : std_logic;
signal \N__2198\ : std_logic;
signal \N__2195\ : std_logic;
signal \N__2192\ : std_logic;
signal \N__2189\ : std_logic;
signal \N__2186\ : std_logic;
signal \N__2183\ : std_logic;
signal \N__2180\ : std_logic;
signal \N__2177\ : std_logic;
signal \N__2174\ : std_logic;
signal \N__2171\ : std_logic;
signal \N__2168\ : std_logic;
signal \N__2165\ : std_logic;
signal \N__2162\ : std_logic;
signal \N__2159\ : std_logic;
signal \N__2156\ : std_logic;
signal \N__2153\ : std_logic;
signal \N__2150\ : std_logic;
signal \N__2147\ : std_logic;
signal \N__2144\ : std_logic;
signal \N__2141\ : std_logic;
signal \N__2138\ : std_logic;
signal \N__2135\ : std_logic;
signal \N__2132\ : std_logic;
signal \N__2129\ : std_logic;
signal \N__2126\ : std_logic;
signal \N__2123\ : std_logic;
signal \N__2120\ : std_logic;
signal \N__2117\ : std_logic;
signal \N__2114\ : std_logic;
signal \N__2111\ : std_logic;
signal \N__2108\ : std_logic;
signal \N__2105\ : std_logic;
signal \N__2102\ : std_logic;
signal \N__2099\ : std_logic;
signal \N__2096\ : std_logic;
signal \N__2093\ : std_logic;
signal \N__2090\ : std_logic;
signal \N__2087\ : std_logic;
signal \N__2084\ : std_logic;
signal \N__2081\ : std_logic;
signal \N__2078\ : std_logic;
signal \N__2075\ : std_logic;
signal \N__2072\ : std_logic;
signal \N__2069\ : std_logic;
signal \N__2066\ : std_logic;
signal \N__2063\ : std_logic;
signal \N__2060\ : std_logic;
signal \N__2057\ : std_logic;
signal \N__2054\ : std_logic;
signal \N__2051\ : std_logic;
signal \N__2048\ : std_logic;
signal \N__2045\ : std_logic;
signal \N__2042\ : std_logic;
signal \N__2039\ : std_logic;
signal \N__2036\ : std_logic;
signal \N__2033\ : std_logic;
signal \N__2030\ : std_logic;
signal \N__2027\ : std_logic;
signal \N__2024\ : std_logic;
signal \N__2021\ : std_logic;
signal \N__2018\ : std_logic;
signal \N__2015\ : std_logic;
signal \N__2012\ : std_logic;
signal \N__2009\ : std_logic;
signal \N__2006\ : std_logic;
signal \N__2003\ : std_logic;
signal \N__2000\ : std_logic;
signal \N__1997\ : std_logic;
signal \N__1994\ : std_logic;
signal \N__1991\ : std_logic;
signal \N__1988\ : std_logic;
signal \N__1985\ : std_logic;
signal \N__1982\ : std_logic;
signal \N__1979\ : std_logic;
signal \N__1976\ : std_logic;
signal \N__1973\ : std_logic;
signal \N__1970\ : std_logic;
signal \N__1967\ : std_logic;
signal \N__1964\ : std_logic;
signal \N__1961\ : std_logic;
signal \N__1958\ : std_logic;
signal \N__1955\ : std_logic;
signal \N__1952\ : std_logic;
signal \N__1949\ : std_logic;
signal \N__1946\ : std_logic;
signal \N__1943\ : std_logic;
signal \N__1940\ : std_logic;
signal \N__1937\ : std_logic;
signal \N__1934\ : std_logic;
signal \N__1931\ : std_logic;
signal \N__1928\ : std_logic;
signal \N__1925\ : std_logic;
signal \N__1922\ : std_logic;
signal \N__1919\ : std_logic;
signal \N__1916\ : std_logic;
signal \N__1913\ : std_logic;
signal \N__1910\ : std_logic;
signal \N__1907\ : std_logic;
signal \N__1904\ : std_logic;
signal \N__1901\ : std_logic;
signal \N__1898\ : std_logic;
signal \N__1895\ : std_logic;
signal \N__1892\ : std_logic;
signal \N__1889\ : std_logic;
signal \N__1886\ : std_logic;
signal \N__1883\ : std_logic;
signal \N__1880\ : std_logic;
signal \N__1877\ : std_logic;
signal \N__1874\ : std_logic;
signal \N__1871\ : std_logic;
signal \N__1868\ : std_logic;
signal \N__1865\ : std_logic;
signal \N__1862\ : std_logic;
signal \N__1859\ : std_logic;
signal \N__1856\ : std_logic;
signal \N__1853\ : std_logic;
signal \N__1850\ : std_logic;
signal \N__1847\ : std_logic;
signal \N__1844\ : std_logic;
signal \N__1841\ : std_logic;
signal \N__1838\ : std_logic;
signal \N__1835\ : std_logic;
signal \N__1832\ : std_logic;
signal \N__1829\ : std_logic;
signal \N__1826\ : std_logic;
signal \N__1823\ : std_logic;
signal \N__1820\ : std_logic;
signal \N__1817\ : std_logic;
signal \N__1814\ : std_logic;
signal \N__1811\ : std_logic;
signal \N__1808\ : std_logic;
signal \N__1805\ : std_logic;
signal \N__1802\ : std_logic;
signal \N__1799\ : std_logic;
signal \N__1796\ : std_logic;
signal \N__1793\ : std_logic;
signal \N__1790\ : std_logic;
signal \N__1787\ : std_logic;
signal \N__1784\ : std_logic;
signal \N__1781\ : std_logic;
signal \N__1778\ : std_logic;
signal \N__1775\ : std_logic;
signal \N__1772\ : std_logic;
signal \N__1769\ : std_logic;
signal \N__1766\ : std_logic;
signal \N__1763\ : std_logic;
signal \N__1760\ : std_logic;
signal \N__1757\ : std_logic;
signal \N__1754\ : std_logic;
signal \N__1751\ : std_logic;
signal \N__1748\ : std_logic;
signal \N__1745\ : std_logic;
signal \N__1742\ : std_logic;
signal \N__1739\ : std_logic;
signal \N__1736\ : std_logic;
signal \N__1733\ : std_logic;
signal \N__1730\ : std_logic;
signal \N__1727\ : std_logic;
signal \N__1724\ : std_logic;
signal \N__1721\ : std_logic;
signal \N__1718\ : std_logic;
signal \N__1715\ : std_logic;
signal \N__1712\ : std_logic;
signal \N__1709\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \RST_N_c\ : std_logic;
signal \RST_N_c_i\ : std_logic;
signal enable_config_c : std_logic;
signal sr_finish_c : std_logic;
signal electr_config_in_c_13 : std_logic;
signal electr_config_in_c_18 : std_logic;
signal electr_config_in_c_16 : std_logic;
signal \shift_regZ0Z_13\ : std_logic;
signal electr_config_in_c_14 : std_logic;
signal electr_config_in_c_12 : std_logic;
signal \shift_regZ0Z_12\ : std_logic;
signal \shift_regZ0Z_16\ : std_logic;
signal electr_config_in_c_17 : std_logic;
signal \shift_regZ0Z_17\ : std_logic;
signal electr_config_in_c_11 : std_logic;
signal \shift_regZ0Z_11\ : std_logic;
signal electr_config_in_c_15 : std_logic;
signal \shift_regZ0Z_14\ : std_logic;
signal \shift_regZ0Z_15\ : std_logic;
signal electr_config_in_c_19 : std_logic;
signal \shift_regZ0Z_18\ : std_logic;
signal electr_config_in_c_23 : std_logic;
signal electr_config_in_c_22 : std_logic;
signal \shift_regZ0Z_22\ : std_logic;
signal electr_config_in_c_21 : std_logic;
signal \shift_regZ0Z_21\ : std_logic;
signal electr_config_in_c_20 : std_logic;
signal \shift_regZ0Z_19\ : std_logic;
signal \shift_regZ0Z_20\ : std_logic;
signal \shift_regZ0Z_23\ : std_logic;
signal electr_config_in_c_24 : std_logic;
signal \shift_regZ0Z_24\ : std_logic;
signal electr_config_in_c_25 : std_logic;
signal electr_config_in_c_52 : std_logic;
signal electr_config_in_c_51 : std_logic;
signal \shift_regZ0Z_51\ : std_logic;
signal electr_config_in_c_54 : std_logic;
signal \shift_regZ0Z_52\ : std_logic;
signal electr_config_in_c_53 : std_logic;
signal \shift_regZ0Z_53\ : std_logic;
signal \shift_regZ0Z_54\ : std_logic;
signal serial_out_c : std_logic;
signal enable_desp_c : std_logic;
signal electr_config_in_c_10 : std_logic;
signal \shift_regZ0Z_10\ : std_logic;
signal electr_config_in_c_31 : std_logic;
signal \shift_regZ0Z_25\ : std_logic;
signal electr_config_in_c_26 : std_logic;
signal electr_config_in_c_30 : std_logic;
signal \shift_regZ0Z_30\ : std_logic;
signal electr_config_in_c_33 : std_logic;
signal electr_config_in_c_29 : std_logic;
signal \shift_regZ0Z_29\ : std_logic;
signal \shift_regZ0Z_26\ : std_logic;
signal electr_config_in_c_27 : std_logic;
signal \shift_regZ0Z_31\ : std_logic;
signal electr_config_in_c_32 : std_logic;
signal \shift_regZ0Z_32\ : std_logic;
signal \shift_regZ0Z_27\ : std_logic;
signal electr_config_in_c_28 : std_logic;
signal \shift_regZ0Z_28\ : std_logic;
signal electr_config_in_c_7 : std_logic;
signal electr_config_in_c_5 : std_logic;
signal electr_config_in_c_4 : std_logic;
signal \shift_regZ0Z_4\ : std_logic;
signal electr_config_in_c_6 : std_logic;
signal \shift_regZ0Z_5\ : std_logic;
signal \shift_regZ0Z_6\ : std_logic;
signal \shift_regZ0Z_7\ : std_logic;
signal electr_config_in_c_8 : std_logic;
signal electr_config_in_c_50 : std_logic;
signal \shift_regZ0Z_50\ : std_logic;
signal electr_config_in_c_9 : std_logic;
signal \shift_regZ0Z_8\ : std_logic;
signal \shift_regZ0Z_9\ : std_logic;
signal \N_115_mux_cascade_\ : std_logic;
signal \counter_sre_0_cascade_\ : std_logic;
signal counter_sre_0_2 : std_logic;
signal \un22_next_state_1_cascade_\ : std_logic;
signal \N_118_mux\ : std_logic;
signal next_state32 : std_logic;
signal electr_config_in_c_36 : std_logic;
signal electr_config_in_c_35 : std_logic;
signal \shift_regZ0Z_35\ : std_logic;
signal \shift_regZ0Z_33\ : std_logic;
signal electr_config_in_c_34 : std_logic;
signal \shift_regZ0Z_34\ : std_logic;
signal \bfn_14_4_0_\ : std_logic;
signal counter_sr_cry_0 : std_logic;
signal counter_sr_cry_1 : std_logic;
signal \counter_srZ0Z_3\ : std_logic;
signal \counter_sr_cry_2_THRU_CO\ : std_logic;
signal counter_sr_cry_2 : std_logic;
signal \counter_srZ0Z_4\ : std_logic;
signal \counter_sr_cry_3_THRU_CO\ : std_logic;
signal counter_sr_cry_3 : std_logic;
signal counter_sr_cry_4 : std_logic;
signal \counter_srZ0Z_5\ : std_logic;
signal \counter_sr_cry_1_THRU_CO\ : std_logic;
signal \counter_srZ0Z_2\ : std_logic;
signal electr_config_in_c_48 : std_logic;
signal electr_config_in_c_45 : std_logic;
signal \shift_regZ0Z_48\ : std_logic;
signal electr_config_in_c_49 : std_logic;
signal \shift_regZ0Z_49\ : std_logic;
signal \counter_sr_cry_0_THRU_CO\ : std_logic;
signal \counter_srZ0Z_1\ : std_logic;
signal counter_sre_0 : std_logic;
signal next_state32_i : std_logic;
signal \counter_srZ0Z_0\ : std_logic;
signal electr_config_in_c_47 : std_logic;
signal \shift_regZ0Z_47\ : std_logic;
signal electr_config_in_c_46 : std_logic;
signal \shift_regZ0Z_45\ : std_logic;
signal \shift_regZ0Z_46\ : std_logic;
signal electr_config_in_c_2 : std_logic;
signal electr_config_in_c_0 : std_logic;
signal \shift_regZ0Z_0\ : std_logic;
signal electr_config_in_c_1 : std_logic;
signal \shift_regZ0Z_1\ : std_logic;
signal electr_config_in_c_3 : std_logic;
signal \shift_regZ0Z_2\ : std_logic;
signal \shift_regZ0Z_3\ : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal electr_config_in_c_38 : std_logic;
signal \shift_regZ0Z_36\ : std_logic;
signal electr_config_in_c_37 : std_logic;
signal \shift_regZ0Z_37\ : std_logic;
signal \shift_regZ0Z_38\ : std_logic;
signal electr_config_in_c_39 : std_logic;
signal electr_config_in_c_41 : std_logic;
signal electr_config_in_c_44 : std_logic;
signal \shift_regZ0Z_44\ : std_logic;
signal electr_config_in_c_43 : std_logic;
signal \shift_regZ0Z_43\ : std_logic;
signal \shift_regZ0Z_39\ : std_logic;
signal electr_config_in_c_40 : std_logic;
signal \shift_regZ0Z_40\ : std_logic;
signal \current_stateZ0Z_0\ : std_logic;
signal \shift_regZ0Z_41\ : std_logic;
signal electr_config_in_c_42 : std_logic;
signal \current_stateZ0Z_1\ : std_logic;
signal \shift_regZ0Z_42\ : std_logic;
signal \_gnd_net_\ : std_logic;
signal \CLK_c_g\ : std_logic;
signal \RST_N_c_i_g\ : std_logic;

signal \CLK_wire\ : std_logic;
signal electr_config_in_wire : std_logic_vector(54 downto 0);
signal serial_out_wire : std_logic;
signal enable_config_wire : std_logic;
signal sr_finish_wire : std_logic;
signal \RST_N_wire\ : std_logic;
signal enable_desp_wire : std_logic;

begin
    \CLK_wire\ <= CLK;
    electr_config_in_wire <= electr_config_in;
    serial_out <= serial_out_wire;
    enable_config <= enable_config_wire;
    sr_finish <= sr_finish_wire;
    \RST_N_wire\ <= RST_N;
    enable_desp_wire <= enable_desp;

    \CLK_ibuf_gb_io_preiogbuf\ : PRE_IO_GBUF
    port map (
            PADSIGNALTOGLOBALBUFFER => \N__4836\,
            GLOBALBUFFEROUTPUT => \CLK_c_g\
        );

    \CLK_ibuf_gb_io_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4838\,
            DIN => \N__4837\,
            DOUT => \N__4836\,
            PACKAGEPIN => \CLK_wire\
        );

    \CLK_ibuf_gb_io_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4838\,
            PADOUT => \N__4837\,
            PADIN => \N__4836\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_8_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4827\,
            DIN => \N__4826\,
            DOUT => \N__4825\,
            PACKAGEPIN => electr_config_in_wire(8)
        );

    \electr_config_in_ibuf_8_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4827\,
            PADOUT => \N__4826\,
            PADIN => \N__4825\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_8,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_34_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4818\,
            DIN => \N__4817\,
            DOUT => \N__4816\,
            PACKAGEPIN => electr_config_in_wire(34)
        );

    \electr_config_in_ibuf_34_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4818\,
            PADOUT => \N__4817\,
            PADIN => \N__4816\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_34,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_47_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4809\,
            DIN => \N__4808\,
            DOUT => \N__4807\,
            PACKAGEPIN => electr_config_in_wire(47)
        );

    \electr_config_in_ibuf_47_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4809\,
            PADOUT => \N__4808\,
            PADIN => \N__4807\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_47,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_7_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4800\,
            DIN => \N__4799\,
            DOUT => \N__4798\,
            PACKAGEPIN => electr_config_in_wire(7)
        );

    \electr_config_in_ibuf_7_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4800\,
            PADOUT => \N__4799\,
            PADIN => \N__4798\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_7,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4791\,
            DIN => \N__4790\,
            DOUT => \N__4789\,
            PACKAGEPIN => electr_config_in_wire(2)
        );

    \electr_config_in_ibuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4791\,
            PADOUT => \N__4790\,
            PADIN => \N__4789\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_2,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_16_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4782\,
            DIN => \N__4781\,
            DOUT => \N__4780\,
            PACKAGEPIN => electr_config_in_wire(16)
        );

    \electr_config_in_ibuf_16_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4782\,
            PADOUT => \N__4781\,
            PADIN => \N__4780\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_16,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_21_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4773\,
            DIN => \N__4772\,
            DOUT => \N__4771\,
            PACKAGEPIN => electr_config_in_wire(21)
        );

    \electr_config_in_ibuf_21_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4773\,
            PADOUT => \N__4772\,
            PADIN => \N__4771\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_21,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_53_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4764\,
            DIN => \N__4763\,
            DOUT => \N__4762\,
            PACKAGEPIN => electr_config_in_wire(53)
        );

    \electr_config_in_ibuf_53_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4764\,
            PADOUT => \N__4763\,
            PADIN => \N__4762\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_53,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_13_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4755\,
            DIN => \N__4754\,
            DOUT => \N__4753\,
            PACKAGEPIN => electr_config_in_wire(13)
        );

    \electr_config_in_ibuf_13_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4755\,
            PADOUT => \N__4754\,
            PADIN => \N__4753\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_13,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_31_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4746\,
            DIN => \N__4745\,
            DOUT => \N__4744\,
            PACKAGEPIN => electr_config_in_wire(31)
        );

    \electr_config_in_ibuf_31_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4746\,
            PADOUT => \N__4745\,
            PADIN => \N__4744\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_31,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_18_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4737\,
            DIN => \N__4736\,
            DOUT => \N__4735\,
            PACKAGEPIN => electr_config_in_wire(18)
        );

    \electr_config_in_ibuf_18_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4737\,
            PADOUT => \N__4736\,
            PADIN => \N__4735\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_18,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_42_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4728\,
            DIN => \N__4727\,
            DOUT => \N__4726\,
            PACKAGEPIN => electr_config_in_wire(42)
        );

    \electr_config_in_ibuf_42_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4728\,
            PADOUT => \N__4727\,
            PADIN => \N__4726\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_42,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_29_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4719\,
            DIN => \N__4718\,
            DOUT => \N__4717\,
            PACKAGEPIN => electr_config_in_wire(29)
        );

    \electr_config_in_ibuf_29_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4719\,
            PADOUT => \N__4718\,
            PADIN => \N__4717\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_29,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \serial_out_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4710\,
            DIN => \N__4709\,
            DOUT => \N__4708\,
            PACKAGEPIN => serial_out_wire
        );

    \serial_out_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__4710\,
            PADOUT => \N__4709\,
            PADIN => \N__4708\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__2165\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4701\,
            DIN => \N__4700\,
            DOUT => \N__4699\,
            PACKAGEPIN => electr_config_in_wire(1)
        );

    \electr_config_in_ibuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4701\,
            PADOUT => \N__4700\,
            PADIN => \N__4699\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_1,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_45_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4692\,
            DIN => \N__4691\,
            DOUT => \N__4690\,
            PACKAGEPIN => electr_config_in_wire(45)
        );

    \electr_config_in_ibuf_45_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4692\,
            PADOUT => \N__4691\,
            PADIN => \N__4690\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_45,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_24_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4683\,
            DIN => \N__4682\,
            DOUT => \N__4681\,
            PACKAGEPIN => electr_config_in_wire(24)
        );

    \electr_config_in_ibuf_24_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4683\,
            PADOUT => \N__4682\,
            PADIN => \N__4681\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_24,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \enable_config_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4674\,
            DIN => \N__4673\,
            DOUT => \N__4672\,
            PACKAGEPIN => enable_config_wire
        );

    \enable_config_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__4674\,
            PADOUT => \N__4673\,
            PADIN => \N__4672\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__1850\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_36_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4665\,
            DIN => \N__4664\,
            DOUT => \N__4663\,
            PACKAGEPIN => electr_config_in_wire(36)
        );

    \electr_config_in_ibuf_36_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4665\,
            PADOUT => \N__4664\,
            PADIN => \N__4663\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_36,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_50_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4656\,
            DIN => \N__4655\,
            DOUT => \N__4654\,
            PACKAGEPIN => electr_config_in_wire(50)
        );

    \electr_config_in_ibuf_50_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4656\,
            PADOUT => \N__4655\,
            PADIN => \N__4654\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_50,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_19_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4647\,
            DIN => \N__4646\,
            DOUT => \N__4645\,
            PACKAGEPIN => electr_config_in_wire(19)
        );

    \electr_config_in_ibuf_19_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4647\,
            PADOUT => \N__4646\,
            PADIN => \N__4645\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_19,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_39_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4638\,
            DIN => \N__4637\,
            DOUT => \N__4636\,
            PACKAGEPIN => electr_config_in_wire(39)
        );

    \electr_config_in_ibuf_39_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4638\,
            PADOUT => \N__4637\,
            PADIN => \N__4636\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_39,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_10_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4629\,
            DIN => \N__4628\,
            DOUT => \N__4627\,
            PACKAGEPIN => electr_config_in_wire(10)
        );

    \electr_config_in_ibuf_10_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4629\,
            PADOUT => \N__4628\,
            PADIN => \N__4627\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_10,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_23_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4620\,
            DIN => \N__4619\,
            DOUT => \N__4618\,
            PACKAGEPIN => electr_config_in_wire(23)
        );

    \electr_config_in_ibuf_23_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4620\,
            PADOUT => \N__4619\,
            PADIN => \N__4618\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_23,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_41_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4611\,
            DIN => \N__4610\,
            DOUT => \N__4609\,
            PACKAGEPIN => electr_config_in_wire(41)
        );

    \electr_config_in_ibuf_41_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4611\,
            PADOUT => \N__4610\,
            PADIN => \N__4609\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_41,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_5_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4602\,
            DIN => \N__4601\,
            DOUT => \N__4600\,
            PACKAGEPIN => electr_config_in_wire(5)
        );

    \electr_config_in_ibuf_5_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4602\,
            PADOUT => \N__4601\,
            PADIN => \N__4600\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_5,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_28_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4593\,
            DIN => \N__4592\,
            DOUT => \N__4591\,
            PACKAGEPIN => electr_config_in_wire(28)
        );

    \electr_config_in_ibuf_28_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4593\,
            PADOUT => \N__4592\,
            PADIN => \N__4591\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_28,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_32_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4584\,
            DIN => \N__4583\,
            DOUT => \N__4582\,
            PACKAGEPIN => electr_config_in_wire(32)
        );

    \electr_config_in_ibuf_32_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4584\,
            PADOUT => \N__4583\,
            PADIN => \N__4582\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_32,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4575\,
            DIN => \N__4574\,
            DOUT => \N__4573\,
            PACKAGEPIN => electr_config_in_wire(0)
        );

    \electr_config_in_ibuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4575\,
            PADOUT => \N__4574\,
            PADIN => \N__4573\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_0,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_44_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4566\,
            DIN => \N__4565\,
            DOUT => \N__4564\,
            PACKAGEPIN => electr_config_in_wire(44)
        );

    \electr_config_in_ibuf_44_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4566\,
            PADOUT => \N__4565\,
            PADIN => \N__4564\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_44,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_14_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4557\,
            DIN => \N__4556\,
            DOUT => \N__4555\,
            PACKAGEPIN => electr_config_in_wire(14)
        );

    \electr_config_in_ibuf_14_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4557\,
            PADOUT => \N__4556\,
            PADIN => \N__4555\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_14,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_27_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4548\,
            DIN => \N__4547\,
            DOUT => \N__4546\,
            PACKAGEPIN => electr_config_in_wire(27)
        );

    \electr_config_in_ibuf_27_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4548\,
            PADOUT => \N__4547\,
            PADIN => \N__4546\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_27,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_9_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4539\,
            DIN => \N__4538\,
            DOUT => \N__4537\,
            PACKAGEPIN => electr_config_in_wire(9)
        );

    \electr_config_in_ibuf_9_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4539\,
            PADOUT => \N__4538\,
            PADIN => \N__4537\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_9,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_37_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4530\,
            DIN => \N__4529\,
            DOUT => \N__4528\,
            PACKAGEPIN => electr_config_in_wire(37)
        );

    \electr_config_in_ibuf_37_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4530\,
            PADOUT => \N__4529\,
            PADIN => \N__4528\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_37,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_51_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4521\,
            DIN => \N__4520\,
            DOUT => \N__4519\,
            PACKAGEPIN => electr_config_in_wire(51)
        );

    \electr_config_in_ibuf_51_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4521\,
            PADOUT => \N__4520\,
            PADIN => \N__4519\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_51,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \sr_finish_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4512\,
            DIN => \N__4511\,
            DOUT => \N__4510\,
            PACKAGEPIN => sr_finish_wire
        );

    \sr_finish_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__4512\,
            PADOUT => \N__4511\,
            PADIN => \N__4510\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__1838\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_11_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4503\,
            DIN => \N__4502\,
            DOUT => \N__4501\,
            PACKAGEPIN => electr_config_in_wire(11)
        );

    \electr_config_in_ibuf_11_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4503\,
            PADOUT => \N__4502\,
            PADIN => \N__4501\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_11,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_22_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4494\,
            DIN => \N__4493\,
            DOUT => \N__4492\,
            PACKAGEPIN => electr_config_in_wire(22)
        );

    \electr_config_in_ibuf_22_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4494\,
            PADOUT => \N__4493\,
            PADIN => \N__4492\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_22,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_4_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4485\,
            DIN => \N__4484\,
            DOUT => \N__4483\,
            PACKAGEPIN => electr_config_in_wire(4)
        );

    \electr_config_in_ibuf_4_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4485\,
            PADOUT => \N__4484\,
            PADIN => \N__4483\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_4,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_40_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4476\,
            DIN => \N__4475\,
            DOUT => \N__4474\,
            PACKAGEPIN => electr_config_in_wire(40)
        );

    \electr_config_in_ibuf_40_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4476\,
            PADOUT => \N__4475\,
            PADIN => \N__4474\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_40,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_49_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4467\,
            DIN => \N__4466\,
            DOUT => \N__4465\,
            PACKAGEPIN => electr_config_in_wire(49)
        );

    \electr_config_in_ibuf_49_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4467\,
            PADOUT => \N__4466\,
            PADIN => \N__4465\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_49,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_33_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4458\,
            DIN => \N__4457\,
            DOUT => \N__4456\,
            PACKAGEPIN => electr_config_in_wire(33)
        );

    \electr_config_in_ibuf_33_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4458\,
            PADOUT => \N__4457\,
            PADIN => \N__4456\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_33,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4449\,
            DIN => \N__4448\,
            DOUT => \N__4447\,
            PACKAGEPIN => electr_config_in_wire(3)
        );

    \electr_config_in_ibuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4449\,
            PADOUT => \N__4448\,
            PADIN => \N__4447\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_3,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_15_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4440\,
            DIN => \N__4439\,
            DOUT => \N__4438\,
            PACKAGEPIN => electr_config_in_wire(15)
        );

    \electr_config_in_ibuf_15_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4440\,
            PADOUT => \N__4439\,
            PADIN => \N__4438\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_15,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_26_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4431\,
            DIN => \N__4430\,
            DOUT => \N__4429\,
            PACKAGEPIN => electr_config_in_wire(26)
        );

    \electr_config_in_ibuf_26_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4431\,
            PADOUT => \N__4430\,
            PADIN => \N__4429\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_26,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_52_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4422\,
            DIN => \N__4421\,
            DOUT => \N__4420\,
            PACKAGEPIN => electr_config_in_wire(52)
        );

    \electr_config_in_ibuf_52_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4422\,
            PADOUT => \N__4421\,
            PADIN => \N__4420\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_52,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \RST_N_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4413\,
            DIN => \N__4412\,
            DOUT => \N__4411\,
            PACKAGEPIN => \RST_N_wire\
        );

    \RST_N_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4413\,
            PADOUT => \N__4412\,
            PADIN => \N__4411\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \RST_N_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_12_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4404\,
            DIN => \N__4403\,
            DOUT => \N__4402\,
            PACKAGEPIN => electr_config_in_wire(12)
        );

    \electr_config_in_ibuf_12_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4404\,
            PADOUT => \N__4403\,
            PADIN => \N__4402\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_12,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_48_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4395\,
            DIN => \N__4394\,
            DOUT => \N__4393\,
            PACKAGEPIN => electr_config_in_wire(48)
        );

    \electr_config_in_ibuf_48_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4395\,
            PADOUT => \N__4394\,
            PADIN => \N__4393\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_48,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_30_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4386\,
            DIN => \N__4385\,
            DOUT => \N__4384\,
            PACKAGEPIN => electr_config_in_wire(30)
        );

    \electr_config_in_ibuf_30_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4386\,
            PADOUT => \N__4385\,
            PADIN => \N__4384\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_30,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_43_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4377\,
            DIN => \N__4376\,
            DOUT => \N__4375\,
            PACKAGEPIN => electr_config_in_wire(43)
        );

    \electr_config_in_ibuf_43_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4377\,
            PADOUT => \N__4376\,
            PADIN => \N__4375\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_43,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_35_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4368\,
            DIN => \N__4367\,
            DOUT => \N__4366\,
            PACKAGEPIN => electr_config_in_wire(35)
        );

    \electr_config_in_ibuf_35_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4368\,
            PADOUT => \N__4367\,
            PADIN => \N__4366\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_35,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \enable_desp_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4359\,
            DIN => \N__4358\,
            DOUT => \N__4357\,
            PACKAGEPIN => enable_desp_wire
        );

    \enable_desp_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4359\,
            PADOUT => \N__4358\,
            PADIN => \N__4357\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => enable_desp_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_46_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4350\,
            DIN => \N__4349\,
            DOUT => \N__4348\,
            PACKAGEPIN => electr_config_in_wire(46)
        );

    \electr_config_in_ibuf_46_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4350\,
            PADOUT => \N__4349\,
            PADIN => \N__4348\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_46,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_6_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4341\,
            DIN => \N__4340\,
            DOUT => \N__4339\,
            PACKAGEPIN => electr_config_in_wire(6)
        );

    \electr_config_in_ibuf_6_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4341\,
            PADOUT => \N__4340\,
            PADIN => \N__4339\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_6,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_25_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4332\,
            DIN => \N__4331\,
            DOUT => \N__4330\,
            PACKAGEPIN => electr_config_in_wire(25)
        );

    \electr_config_in_ibuf_25_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4332\,
            PADOUT => \N__4331\,
            PADIN => \N__4330\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_25,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_38_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4323\,
            DIN => \N__4322\,
            DOUT => \N__4321\,
            PACKAGEPIN => electr_config_in_wire(38)
        );

    \electr_config_in_ibuf_38_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4323\,
            PADOUT => \N__4322\,
            PADIN => \N__4321\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_38,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_17_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4314\,
            DIN => \N__4313\,
            DOUT => \N__4312\,
            PACKAGEPIN => electr_config_in_wire(17)
        );

    \electr_config_in_ibuf_17_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4314\,
            PADOUT => \N__4313\,
            PADIN => \N__4312\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_17,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_20_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4305\,
            DIN => \N__4304\,
            DOUT => \N__4303\,
            PACKAGEPIN => electr_config_in_wire(20)
        );

    \electr_config_in_ibuf_20_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4305\,
            PADOUT => \N__4304\,
            PADIN => \N__4303\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_20,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \electr_config_in_ibuf_54_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__4296\,
            DIN => \N__4295\,
            DOUT => \N__4294\,
            PACKAGEPIN => electr_config_in_wire(54)
        );

    \electr_config_in_ibuf_54_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__4296\,
            PADOUT => \N__4295\,
            PADIN => \N__4294\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => electr_config_in_c_54,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__1002\ : CascadeMux
    port map (
            O => \N__4277\,
            I => \N__4274\
        );

    \I__1001\ : InMux
    port map (
            O => \N__4274\,
            I => \N__4271\
        );

    \I__1000\ : LocalMux
    port map (
            O => \N__4271\,
            I => \N__4268\
        );

    \I__999\ : Span12Mux_v
    port map (
            O => \N__4268\,
            I => \N__4265\
        );

    \I__998\ : Span12Mux_h
    port map (
            O => \N__4265\,
            I => \N__4262\
        );

    \I__997\ : Odrv12
    port map (
            O => \N__4262\,
            I => electr_config_in_c_43
        );

    \I__996\ : CascadeMux
    port map (
            O => \N__4259\,
            I => \N__4256\
        );

    \I__995\ : InMux
    port map (
            O => \N__4256\,
            I => \N__4253\
        );

    \I__994\ : LocalMux
    port map (
            O => \N__4253\,
            I => \shift_regZ0Z_43\
        );

    \I__993\ : InMux
    port map (
            O => \N__4250\,
            I => \N__4247\
        );

    \I__992\ : LocalMux
    port map (
            O => \N__4247\,
            I => \N__4244\
        );

    \I__991\ : Odrv4
    port map (
            O => \N__4244\,
            I => \shift_regZ0Z_39\
        );

    \I__990\ : CascadeMux
    port map (
            O => \N__4241\,
            I => \N__4238\
        );

    \I__989\ : InMux
    port map (
            O => \N__4238\,
            I => \N__4235\
        );

    \I__988\ : LocalMux
    port map (
            O => \N__4235\,
            I => \N__4232\
        );

    \I__987\ : Span4Mux_h
    port map (
            O => \N__4232\,
            I => \N__4229\
        );

    \I__986\ : Span4Mux_h
    port map (
            O => \N__4229\,
            I => \N__4226\
        );

    \I__985\ : Sp12to4
    port map (
            O => \N__4226\,
            I => \N__4223\
        );

    \I__984\ : Span12Mux_v
    port map (
            O => \N__4223\,
            I => \N__4220\
        );

    \I__983\ : Span12Mux_v
    port map (
            O => \N__4220\,
            I => \N__4217\
        );

    \I__982\ : Odrv12
    port map (
            O => \N__4217\,
            I => electr_config_in_c_40
        );

    \I__981\ : InMux
    port map (
            O => \N__4214\,
            I => \N__4211\
        );

    \I__980\ : LocalMux
    port map (
            O => \N__4211\,
            I => \shift_regZ0Z_40\
        );

    \I__979\ : InMux
    port map (
            O => \N__4208\,
            I => \N__4154\
        );

    \I__978\ : InMux
    port map (
            O => \N__4207\,
            I => \N__4154\
        );

    \I__977\ : InMux
    port map (
            O => \N__4206\,
            I => \N__4154\
        );

    \I__976\ : InMux
    port map (
            O => \N__4205\,
            I => \N__4145\
        );

    \I__975\ : InMux
    port map (
            O => \N__4204\,
            I => \N__4145\
        );

    \I__974\ : InMux
    port map (
            O => \N__4203\,
            I => \N__4145\
        );

    \I__973\ : InMux
    port map (
            O => \N__4202\,
            I => \N__4145\
        );

    \I__972\ : InMux
    port map (
            O => \N__4201\,
            I => \N__4136\
        );

    \I__971\ : InMux
    port map (
            O => \N__4200\,
            I => \N__4136\
        );

    \I__970\ : InMux
    port map (
            O => \N__4199\,
            I => \N__4136\
        );

    \I__969\ : InMux
    port map (
            O => \N__4198\,
            I => \N__4136\
        );

    \I__968\ : InMux
    port map (
            O => \N__4197\,
            I => \N__4127\
        );

    \I__967\ : InMux
    port map (
            O => \N__4196\,
            I => \N__4127\
        );

    \I__966\ : InMux
    port map (
            O => \N__4195\,
            I => \N__4127\
        );

    \I__965\ : InMux
    port map (
            O => \N__4194\,
            I => \N__4127\
        );

    \I__964\ : InMux
    port map (
            O => \N__4193\,
            I => \N__4109\
        );

    \I__963\ : InMux
    port map (
            O => \N__4192\,
            I => \N__4109\
        );

    \I__962\ : InMux
    port map (
            O => \N__4191\,
            I => \N__4109\
        );

    \I__961\ : InMux
    port map (
            O => \N__4190\,
            I => \N__4102\
        );

    \I__960\ : InMux
    port map (
            O => \N__4189\,
            I => \N__4102\
        );

    \I__959\ : InMux
    port map (
            O => \N__4188\,
            I => \N__4102\
        );

    \I__958\ : InMux
    port map (
            O => \N__4187\,
            I => \N__4097\
        );

    \I__957\ : InMux
    port map (
            O => \N__4186\,
            I => \N__4097\
        );

    \I__956\ : InMux
    port map (
            O => \N__4185\,
            I => \N__4086\
        );

    \I__955\ : InMux
    port map (
            O => \N__4184\,
            I => \N__4086\
        );

    \I__954\ : InMux
    port map (
            O => \N__4183\,
            I => \N__4086\
        );

    \I__953\ : InMux
    port map (
            O => \N__4182\,
            I => \N__4086\
        );

    \I__952\ : InMux
    port map (
            O => \N__4181\,
            I => \N__4086\
        );

    \I__951\ : InMux
    port map (
            O => \N__4180\,
            I => \N__4075\
        );

    \I__950\ : InMux
    port map (
            O => \N__4179\,
            I => \N__4075\
        );

    \I__949\ : InMux
    port map (
            O => \N__4178\,
            I => \N__4075\
        );

    \I__948\ : InMux
    port map (
            O => \N__4177\,
            I => \N__4075\
        );

    \I__947\ : InMux
    port map (
            O => \N__4176\,
            I => \N__4075\
        );

    \I__946\ : InMux
    port map (
            O => \N__4175\,
            I => \N__4070\
        );

    \I__945\ : InMux
    port map (
            O => \N__4174\,
            I => \N__4070\
        );

    \I__944\ : InMux
    port map (
            O => \N__4173\,
            I => \N__4059\
        );

    \I__943\ : InMux
    port map (
            O => \N__4172\,
            I => \N__4059\
        );

    \I__942\ : InMux
    port map (
            O => \N__4171\,
            I => \N__4059\
        );

    \I__941\ : InMux
    port map (
            O => \N__4170\,
            I => \N__4059\
        );

    \I__940\ : InMux
    port map (
            O => \N__4169\,
            I => \N__4059\
        );

    \I__939\ : InMux
    port map (
            O => \N__4168\,
            I => \N__4042\
        );

    \I__938\ : InMux
    port map (
            O => \N__4167\,
            I => \N__4042\
        );

    \I__937\ : InMux
    port map (
            O => \N__4166\,
            I => \N__4042\
        );

    \I__936\ : InMux
    port map (
            O => \N__4165\,
            I => \N__4042\
        );

    \I__935\ : InMux
    port map (
            O => \N__4164\,
            I => \N__4042\
        );

    \I__934\ : InMux
    port map (
            O => \N__4163\,
            I => \N__4042\
        );

    \I__933\ : InMux
    port map (
            O => \N__4162\,
            I => \N__4042\
        );

    \I__932\ : InMux
    port map (
            O => \N__4161\,
            I => \N__4042\
        );

    \I__931\ : LocalMux
    port map (
            O => \N__4154\,
            I => \N__4039\
        );

    \I__930\ : LocalMux
    port map (
            O => \N__4145\,
            I => \N__4032\
        );

    \I__929\ : LocalMux
    port map (
            O => \N__4136\,
            I => \N__4032\
        );

    \I__928\ : LocalMux
    port map (
            O => \N__4127\,
            I => \N__4032\
        );

    \I__927\ : InMux
    port map (
            O => \N__4126\,
            I => \N__4026\
        );

    \I__926\ : InMux
    port map (
            O => \N__4125\,
            I => \N__4021\
        );

    \I__925\ : InMux
    port map (
            O => \N__4124\,
            I => \N__4021\
        );

    \I__924\ : InMux
    port map (
            O => \N__4123\,
            I => \N__4004\
        );

    \I__923\ : InMux
    port map (
            O => \N__4122\,
            I => \N__4004\
        );

    \I__922\ : InMux
    port map (
            O => \N__4121\,
            I => \N__4004\
        );

    \I__921\ : InMux
    port map (
            O => \N__4120\,
            I => \N__4004\
        );

    \I__920\ : InMux
    port map (
            O => \N__4119\,
            I => \N__4004\
        );

    \I__919\ : InMux
    port map (
            O => \N__4118\,
            I => \N__4004\
        );

    \I__918\ : InMux
    port map (
            O => \N__4117\,
            I => \N__4004\
        );

    \I__917\ : InMux
    port map (
            O => \N__4116\,
            I => \N__4004\
        );

    \I__916\ : LocalMux
    port map (
            O => \N__4109\,
            I => \N__4001\
        );

    \I__915\ : LocalMux
    port map (
            O => \N__4102\,
            I => \N__3998\
        );

    \I__914\ : LocalMux
    port map (
            O => \N__4097\,
            I => \N__3993\
        );

    \I__913\ : LocalMux
    port map (
            O => \N__4086\,
            I => \N__3993\
        );

    \I__912\ : LocalMux
    port map (
            O => \N__4075\,
            I => \N__3990\
        );

    \I__911\ : LocalMux
    port map (
            O => \N__4070\,
            I => \N__3981\
        );

    \I__910\ : LocalMux
    port map (
            O => \N__4059\,
            I => \N__3981\
        );

    \I__909\ : LocalMux
    port map (
            O => \N__4042\,
            I => \N__3981\
        );

    \I__908\ : Span4Mux_h
    port map (
            O => \N__4039\,
            I => \N__3981\
        );

    \I__907\ : Span4Mux_h
    port map (
            O => \N__4032\,
            I => \N__3978\
        );

    \I__906\ : InMux
    port map (
            O => \N__4031\,
            I => \N__3973\
        );

    \I__905\ : InMux
    port map (
            O => \N__4030\,
            I => \N__3973\
        );

    \I__904\ : InMux
    port map (
            O => \N__4029\,
            I => \N__3970\
        );

    \I__903\ : LocalMux
    port map (
            O => \N__4026\,
            I => \current_stateZ0Z_0\
        );

    \I__902\ : LocalMux
    port map (
            O => \N__4021\,
            I => \current_stateZ0Z_0\
        );

    \I__901\ : LocalMux
    port map (
            O => \N__4004\,
            I => \current_stateZ0Z_0\
        );

    \I__900\ : Odrv4
    port map (
            O => \N__4001\,
            I => \current_stateZ0Z_0\
        );

    \I__899\ : Odrv4
    port map (
            O => \N__3998\,
            I => \current_stateZ0Z_0\
        );

    \I__898\ : Odrv4
    port map (
            O => \N__3993\,
            I => \current_stateZ0Z_0\
        );

    \I__897\ : Odrv12
    port map (
            O => \N__3990\,
            I => \current_stateZ0Z_0\
        );

    \I__896\ : Odrv4
    port map (
            O => \N__3981\,
            I => \current_stateZ0Z_0\
        );

    \I__895\ : Odrv4
    port map (
            O => \N__3978\,
            I => \current_stateZ0Z_0\
        );

    \I__894\ : LocalMux
    port map (
            O => \N__3973\,
            I => \current_stateZ0Z_0\
        );

    \I__893\ : LocalMux
    port map (
            O => \N__3970\,
            I => \current_stateZ0Z_0\
        );

    \I__892\ : InMux
    port map (
            O => \N__3947\,
            I => \N__3944\
        );

    \I__891\ : LocalMux
    port map (
            O => \N__3944\,
            I => \shift_regZ0Z_41\
        );

    \I__890\ : CascadeMux
    port map (
            O => \N__3941\,
            I => \N__3938\
        );

    \I__889\ : InMux
    port map (
            O => \N__3938\,
            I => \N__3935\
        );

    \I__888\ : LocalMux
    port map (
            O => \N__3935\,
            I => \N__3932\
        );

    \I__887\ : Span4Mux_v
    port map (
            O => \N__3932\,
            I => \N__3929\
        );

    \I__886\ : Sp12to4
    port map (
            O => \N__3929\,
            I => \N__3926\
        );

    \I__885\ : Span12Mux_h
    port map (
            O => \N__3926\,
            I => \N__3923\
        );

    \I__884\ : Odrv12
    port map (
            O => \N__3923\,
            I => electr_config_in_c_42
        );

    \I__883\ : CascadeMux
    port map (
            O => \N__3920\,
            I => \N__3907\
        );

    \I__882\ : InMux
    port map (
            O => \N__3919\,
            I => \N__3904\
        );

    \I__881\ : CascadeMux
    port map (
            O => \N__3918\,
            I => \N__3899\
        );

    \I__880\ : CascadeMux
    port map (
            O => \N__3917\,
            I => \N__3896\
        );

    \I__879\ : CascadeMux
    port map (
            O => \N__3916\,
            I => \N__3884\
        );

    \I__878\ : CascadeMux
    port map (
            O => \N__3915\,
            I => \N__3881\
        );

    \I__877\ : CascadeMux
    port map (
            O => \N__3914\,
            I => \N__3878\
        );

    \I__876\ : CascadeMux
    port map (
            O => \N__3913\,
            I => \N__3875\
        );

    \I__875\ : CascadeMux
    port map (
            O => \N__3912\,
            I => \N__3872\
        );

    \I__874\ : CascadeMux
    port map (
            O => \N__3911\,
            I => \N__3862\
        );

    \I__873\ : CascadeMux
    port map (
            O => \N__3910\,
            I => \N__3859\
        );

    \I__872\ : InMux
    port map (
            O => \N__3907\,
            I => \N__3844\
        );

    \I__871\ : LocalMux
    port map (
            O => \N__3904\,
            I => \N__3841\
        );

    \I__870\ : InMux
    port map (
            O => \N__3903\,
            I => \N__3836\
        );

    \I__869\ : InMux
    port map (
            O => \N__3902\,
            I => \N__3836\
        );

    \I__868\ : InMux
    port map (
            O => \N__3899\,
            I => \N__3827\
        );

    \I__867\ : InMux
    port map (
            O => \N__3896\,
            I => \N__3827\
        );

    \I__866\ : InMux
    port map (
            O => \N__3895\,
            I => \N__3827\
        );

    \I__865\ : InMux
    port map (
            O => \N__3894\,
            I => \N__3827\
        );

    \I__864\ : CascadeMux
    port map (
            O => \N__3893\,
            I => \N__3824\
        );

    \I__863\ : CascadeMux
    port map (
            O => \N__3892\,
            I => \N__3821\
        );

    \I__862\ : CascadeMux
    port map (
            O => \N__3891\,
            I => \N__3817\
        );

    \I__861\ : CascadeMux
    port map (
            O => \N__3890\,
            I => \N__3801\
        );

    \I__860\ : CascadeMux
    port map (
            O => \N__3889\,
            I => \N__3792\
        );

    \I__859\ : InMux
    port map (
            O => \N__3888\,
            I => \N__3788\
        );

    \I__858\ : InMux
    port map (
            O => \N__3887\,
            I => \N__3783\
        );

    \I__857\ : InMux
    port map (
            O => \N__3884\,
            I => \N__3783\
        );

    \I__856\ : InMux
    port map (
            O => \N__3881\,
            I => \N__3772\
        );

    \I__855\ : InMux
    port map (
            O => \N__3878\,
            I => \N__3772\
        );

    \I__854\ : InMux
    port map (
            O => \N__3875\,
            I => \N__3772\
        );

    \I__853\ : InMux
    port map (
            O => \N__3872\,
            I => \N__3772\
        );

    \I__852\ : InMux
    port map (
            O => \N__3871\,
            I => \N__3772\
        );

    \I__851\ : InMux
    port map (
            O => \N__3870\,
            I => \N__3767\
        );

    \I__850\ : InMux
    port map (
            O => \N__3869\,
            I => \N__3767\
        );

    \I__849\ : InMux
    port map (
            O => \N__3868\,
            I => \N__3754\
        );

    \I__848\ : InMux
    port map (
            O => \N__3867\,
            I => \N__3754\
        );

    \I__847\ : InMux
    port map (
            O => \N__3866\,
            I => \N__3754\
        );

    \I__846\ : InMux
    port map (
            O => \N__3865\,
            I => \N__3754\
        );

    \I__845\ : InMux
    port map (
            O => \N__3862\,
            I => \N__3754\
        );

    \I__844\ : InMux
    port map (
            O => \N__3859\,
            I => \N__3754\
        );

    \I__843\ : InMux
    port map (
            O => \N__3858\,
            I => \N__3749\
        );

    \I__842\ : InMux
    port map (
            O => \N__3857\,
            I => \N__3749\
        );

    \I__841\ : InMux
    port map (
            O => \N__3856\,
            I => \N__3742\
        );

    \I__840\ : InMux
    port map (
            O => \N__3855\,
            I => \N__3742\
        );

    \I__839\ : InMux
    port map (
            O => \N__3854\,
            I => \N__3742\
        );

    \I__838\ : InMux
    port map (
            O => \N__3853\,
            I => \N__3737\
        );

    \I__837\ : InMux
    port map (
            O => \N__3852\,
            I => \N__3737\
        );

    \I__836\ : InMux
    port map (
            O => \N__3851\,
            I => \N__3732\
        );

    \I__835\ : InMux
    port map (
            O => \N__3850\,
            I => \N__3732\
        );

    \I__834\ : InMux
    port map (
            O => \N__3849\,
            I => \N__3725\
        );

    \I__833\ : InMux
    port map (
            O => \N__3848\,
            I => \N__3725\
        );

    \I__832\ : InMux
    port map (
            O => \N__3847\,
            I => \N__3725\
        );

    \I__831\ : LocalMux
    port map (
            O => \N__3844\,
            I => \N__3722\
        );

    \I__830\ : Sp12to4
    port map (
            O => \N__3841\,
            I => \N__3717\
        );

    \I__829\ : LocalMux
    port map (
            O => \N__3836\,
            I => \N__3717\
        );

    \I__828\ : LocalMux
    port map (
            O => \N__3827\,
            I => \N__3714\
        );

    \I__827\ : InMux
    port map (
            O => \N__3824\,
            I => \N__3707\
        );

    \I__826\ : InMux
    port map (
            O => \N__3821\,
            I => \N__3707\
        );

    \I__825\ : InMux
    port map (
            O => \N__3820\,
            I => \N__3707\
        );

    \I__824\ : InMux
    port map (
            O => \N__3817\,
            I => \N__3700\
        );

    \I__823\ : InMux
    port map (
            O => \N__3816\,
            I => \N__3700\
        );

    \I__822\ : InMux
    port map (
            O => \N__3815\,
            I => \N__3700\
        );

    \I__821\ : InMux
    port map (
            O => \N__3814\,
            I => \N__3691\
        );

    \I__820\ : InMux
    port map (
            O => \N__3813\,
            I => \N__3691\
        );

    \I__819\ : InMux
    port map (
            O => \N__3812\,
            I => \N__3691\
        );

    \I__818\ : InMux
    port map (
            O => \N__3811\,
            I => \N__3691\
        );

    \I__817\ : InMux
    port map (
            O => \N__3810\,
            I => \N__3686\
        );

    \I__816\ : InMux
    port map (
            O => \N__3809\,
            I => \N__3686\
        );

    \I__815\ : InMux
    port map (
            O => \N__3808\,
            I => \N__3683\
        );

    \I__814\ : InMux
    port map (
            O => \N__3807\,
            I => \N__3672\
        );

    \I__813\ : InMux
    port map (
            O => \N__3806\,
            I => \N__3672\
        );

    \I__812\ : InMux
    port map (
            O => \N__3805\,
            I => \N__3672\
        );

    \I__811\ : InMux
    port map (
            O => \N__3804\,
            I => \N__3672\
        );

    \I__810\ : InMux
    port map (
            O => \N__3801\,
            I => \N__3672\
        );

    \I__809\ : InMux
    port map (
            O => \N__3800\,
            I => \N__3665\
        );

    \I__808\ : InMux
    port map (
            O => \N__3799\,
            I => \N__3665\
        );

    \I__807\ : InMux
    port map (
            O => \N__3798\,
            I => \N__3665\
        );

    \I__806\ : InMux
    port map (
            O => \N__3797\,
            I => \N__3662\
        );

    \I__805\ : InMux
    port map (
            O => \N__3796\,
            I => \N__3657\
        );

    \I__804\ : InMux
    port map (
            O => \N__3795\,
            I => \N__3657\
        );

    \I__803\ : InMux
    port map (
            O => \N__3792\,
            I => \N__3652\
        );

    \I__802\ : InMux
    port map (
            O => \N__3791\,
            I => \N__3652\
        );

    \I__801\ : LocalMux
    port map (
            O => \N__3788\,
            I => \N__3647\
        );

    \I__800\ : LocalMux
    port map (
            O => \N__3783\,
            I => \N__3647\
        );

    \I__799\ : LocalMux
    port map (
            O => \N__3772\,
            I => \N__3638\
        );

    \I__798\ : LocalMux
    port map (
            O => \N__3767\,
            I => \N__3638\
        );

    \I__797\ : LocalMux
    port map (
            O => \N__3754\,
            I => \N__3638\
        );

    \I__796\ : LocalMux
    port map (
            O => \N__3749\,
            I => \N__3638\
        );

    \I__795\ : LocalMux
    port map (
            O => \N__3742\,
            I => \N__3629\
        );

    \I__794\ : LocalMux
    port map (
            O => \N__3737\,
            I => \N__3629\
        );

    \I__793\ : LocalMux
    port map (
            O => \N__3732\,
            I => \N__3629\
        );

    \I__792\ : LocalMux
    port map (
            O => \N__3725\,
            I => \N__3629\
        );

    \I__791\ : Span4Mux_s2_v
    port map (
            O => \N__3722\,
            I => \N__3626\
        );

    \I__790\ : Span12Mux_v
    port map (
            O => \N__3717\,
            I => \N__3621\
        );

    \I__789\ : Span12Mux_s4_v
    port map (
            O => \N__3714\,
            I => \N__3621\
        );

    \I__788\ : LocalMux
    port map (
            O => \N__3707\,
            I => \N__3610\
        );

    \I__787\ : LocalMux
    port map (
            O => \N__3700\,
            I => \N__3610\
        );

    \I__786\ : LocalMux
    port map (
            O => \N__3691\,
            I => \N__3610\
        );

    \I__785\ : LocalMux
    port map (
            O => \N__3686\,
            I => \N__3610\
        );

    \I__784\ : LocalMux
    port map (
            O => \N__3683\,
            I => \N__3610\
        );

    \I__783\ : LocalMux
    port map (
            O => \N__3672\,
            I => \current_stateZ0Z_1\
        );

    \I__782\ : LocalMux
    port map (
            O => \N__3665\,
            I => \current_stateZ0Z_1\
        );

    \I__781\ : LocalMux
    port map (
            O => \N__3662\,
            I => \current_stateZ0Z_1\
        );

    \I__780\ : LocalMux
    port map (
            O => \N__3657\,
            I => \current_stateZ0Z_1\
        );

    \I__779\ : LocalMux
    port map (
            O => \N__3652\,
            I => \current_stateZ0Z_1\
        );

    \I__778\ : Odrv4
    port map (
            O => \N__3647\,
            I => \current_stateZ0Z_1\
        );

    \I__777\ : Odrv4
    port map (
            O => \N__3638\,
            I => \current_stateZ0Z_1\
        );

    \I__776\ : Odrv12
    port map (
            O => \N__3629\,
            I => \current_stateZ0Z_1\
        );

    \I__775\ : Odrv4
    port map (
            O => \N__3626\,
            I => \current_stateZ0Z_1\
        );

    \I__774\ : Odrv12
    port map (
            O => \N__3621\,
            I => \current_stateZ0Z_1\
        );

    \I__773\ : Odrv4
    port map (
            O => \N__3610\,
            I => \current_stateZ0Z_1\
        );

    \I__772\ : InMux
    port map (
            O => \N__3587\,
            I => \N__3584\
        );

    \I__771\ : LocalMux
    port map (
            O => \N__3584\,
            I => \shift_regZ0Z_42\
        );

    \I__770\ : ClkMux
    port map (
            O => \N__3581\,
            I => \N__3527\
        );

    \I__769\ : ClkMux
    port map (
            O => \N__3580\,
            I => \N__3527\
        );

    \I__768\ : ClkMux
    port map (
            O => \N__3579\,
            I => \N__3527\
        );

    \I__767\ : ClkMux
    port map (
            O => \N__3578\,
            I => \N__3527\
        );

    \I__766\ : ClkMux
    port map (
            O => \N__3577\,
            I => \N__3527\
        );

    \I__765\ : ClkMux
    port map (
            O => \N__3576\,
            I => \N__3527\
        );

    \I__764\ : ClkMux
    port map (
            O => \N__3575\,
            I => \N__3527\
        );

    \I__763\ : ClkMux
    port map (
            O => \N__3574\,
            I => \N__3527\
        );

    \I__762\ : ClkMux
    port map (
            O => \N__3573\,
            I => \N__3527\
        );

    \I__761\ : ClkMux
    port map (
            O => \N__3572\,
            I => \N__3527\
        );

    \I__760\ : ClkMux
    port map (
            O => \N__3571\,
            I => \N__3527\
        );

    \I__759\ : ClkMux
    port map (
            O => \N__3570\,
            I => \N__3527\
        );

    \I__758\ : ClkMux
    port map (
            O => \N__3569\,
            I => \N__3527\
        );

    \I__757\ : ClkMux
    port map (
            O => \N__3568\,
            I => \N__3527\
        );

    \I__756\ : ClkMux
    port map (
            O => \N__3567\,
            I => \N__3527\
        );

    \I__755\ : ClkMux
    port map (
            O => \N__3566\,
            I => \N__3527\
        );

    \I__754\ : ClkMux
    port map (
            O => \N__3565\,
            I => \N__3527\
        );

    \I__753\ : ClkMux
    port map (
            O => \N__3564\,
            I => \N__3527\
        );

    \I__752\ : GlobalMux
    port map (
            O => \N__3527\,
            I => \N__3524\
        );

    \I__751\ : gio2CtrlBuf
    port map (
            O => \N__3524\,
            I => \CLK_c_g\
        );

    \I__750\ : SRMux
    port map (
            O => \N__3521\,
            I => \N__3467\
        );

    \I__749\ : SRMux
    port map (
            O => \N__3520\,
            I => \N__3467\
        );

    \I__748\ : SRMux
    port map (
            O => \N__3519\,
            I => \N__3467\
        );

    \I__747\ : SRMux
    port map (
            O => \N__3518\,
            I => \N__3467\
        );

    \I__746\ : SRMux
    port map (
            O => \N__3517\,
            I => \N__3467\
        );

    \I__745\ : SRMux
    port map (
            O => \N__3516\,
            I => \N__3467\
        );

    \I__744\ : SRMux
    port map (
            O => \N__3515\,
            I => \N__3467\
        );

    \I__743\ : SRMux
    port map (
            O => \N__3514\,
            I => \N__3467\
        );

    \I__742\ : SRMux
    port map (
            O => \N__3513\,
            I => \N__3467\
        );

    \I__741\ : SRMux
    port map (
            O => \N__3512\,
            I => \N__3467\
        );

    \I__740\ : SRMux
    port map (
            O => \N__3511\,
            I => \N__3467\
        );

    \I__739\ : SRMux
    port map (
            O => \N__3510\,
            I => \N__3467\
        );

    \I__738\ : SRMux
    port map (
            O => \N__3509\,
            I => \N__3467\
        );

    \I__737\ : SRMux
    port map (
            O => \N__3508\,
            I => \N__3467\
        );

    \I__736\ : SRMux
    port map (
            O => \N__3507\,
            I => \N__3467\
        );

    \I__735\ : SRMux
    port map (
            O => \N__3506\,
            I => \N__3467\
        );

    \I__734\ : SRMux
    port map (
            O => \N__3505\,
            I => \N__3467\
        );

    \I__733\ : SRMux
    port map (
            O => \N__3504\,
            I => \N__3467\
        );

    \I__732\ : GlobalMux
    port map (
            O => \N__3467\,
            I => \N__3464\
        );

    \I__731\ : gio2CtrlBuf
    port map (
            O => \N__3464\,
            I => \RST_N_c_i_g\
        );

    \I__730\ : InMux
    port map (
            O => \N__3461\,
            I => \N__3458\
        );

    \I__729\ : LocalMux
    port map (
            O => \N__3458\,
            I => \shift_regZ0Z_0\
        );

    \I__728\ : CascadeMux
    port map (
            O => \N__3455\,
            I => \N__3452\
        );

    \I__727\ : InMux
    port map (
            O => \N__3452\,
            I => \N__3449\
        );

    \I__726\ : LocalMux
    port map (
            O => \N__3449\,
            I => \N__3446\
        );

    \I__725\ : IoSpan4Mux
    port map (
            O => \N__3446\,
            I => \N__3443\
        );

    \I__724\ : Odrv4
    port map (
            O => \N__3443\,
            I => electr_config_in_c_1
        );

    \I__723\ : InMux
    port map (
            O => \N__3440\,
            I => \N__3437\
        );

    \I__722\ : LocalMux
    port map (
            O => \N__3437\,
            I => \shift_regZ0Z_1\
        );

    \I__721\ : InMux
    port map (
            O => \N__3434\,
            I => \N__3431\
        );

    \I__720\ : LocalMux
    port map (
            O => \N__3431\,
            I => \N__3428\
        );

    \I__719\ : Span4Mux_h
    port map (
            O => \N__3428\,
            I => \N__3425\
        );

    \I__718\ : Span4Mux_h
    port map (
            O => \N__3425\,
            I => \N__3422\
        );

    \I__717\ : Span4Mux_h
    port map (
            O => \N__3422\,
            I => \N__3419\
        );

    \I__716\ : Span4Mux_h
    port map (
            O => \N__3419\,
            I => \N__3416\
        );

    \I__715\ : Odrv4
    port map (
            O => \N__3416\,
            I => electr_config_in_c_3
        );

    \I__714\ : InMux
    port map (
            O => \N__3413\,
            I => \N__3410\
        );

    \I__713\ : LocalMux
    port map (
            O => \N__3410\,
            I => \shift_regZ0Z_2\
        );

    \I__712\ : InMux
    port map (
            O => \N__3407\,
            I => \N__3404\
        );

    \I__711\ : LocalMux
    port map (
            O => \N__3404\,
            I => \N__3401\
        );

    \I__710\ : Odrv4
    port map (
            O => \N__3401\,
            I => \shift_regZ0Z_3\
        );

    \I__709\ : InMux
    port map (
            O => \N__3398\,
            I => \N__3395\
        );

    \I__708\ : LocalMux
    port map (
            O => \N__3395\,
            I => \CONSTANT_ONE_NET\
        );

    \I__707\ : CascadeMux
    port map (
            O => \N__3392\,
            I => \N__3389\
        );

    \I__706\ : InMux
    port map (
            O => \N__3389\,
            I => \N__3386\
        );

    \I__705\ : LocalMux
    port map (
            O => \N__3386\,
            I => \N__3383\
        );

    \I__704\ : Span12Mux_v
    port map (
            O => \N__3383\,
            I => \N__3380\
        );

    \I__703\ : Span12Mux_h
    port map (
            O => \N__3380\,
            I => \N__3377\
        );

    \I__702\ : Span12Mux_v
    port map (
            O => \N__3377\,
            I => \N__3374\
        );

    \I__701\ : Odrv12
    port map (
            O => \N__3374\,
            I => electr_config_in_c_38
        );

    \I__700\ : InMux
    port map (
            O => \N__3371\,
            I => \N__3368\
        );

    \I__699\ : LocalMux
    port map (
            O => \N__3368\,
            I => \N__3365\
        );

    \I__698\ : Odrv4
    port map (
            O => \N__3365\,
            I => \shift_regZ0Z_36\
        );

    \I__697\ : CascadeMux
    port map (
            O => \N__3362\,
            I => \N__3359\
        );

    \I__696\ : InMux
    port map (
            O => \N__3359\,
            I => \N__3356\
        );

    \I__695\ : LocalMux
    port map (
            O => \N__3356\,
            I => \N__3353\
        );

    \I__694\ : Span4Mux_v
    port map (
            O => \N__3353\,
            I => \N__3350\
        );

    \I__693\ : Sp12to4
    port map (
            O => \N__3350\,
            I => \N__3347\
        );

    \I__692\ : Span12Mux_h
    port map (
            O => \N__3347\,
            I => \N__3344\
        );

    \I__691\ : Span12Mux_v
    port map (
            O => \N__3344\,
            I => \N__3341\
        );

    \I__690\ : Odrv12
    port map (
            O => \N__3341\,
            I => electr_config_in_c_37
        );

    \I__689\ : InMux
    port map (
            O => \N__3338\,
            I => \N__3335\
        );

    \I__688\ : LocalMux
    port map (
            O => \N__3335\,
            I => \shift_regZ0Z_37\
        );

    \I__687\ : InMux
    port map (
            O => \N__3332\,
            I => \N__3329\
        );

    \I__686\ : LocalMux
    port map (
            O => \N__3329\,
            I => \shift_regZ0Z_38\
        );

    \I__685\ : CascadeMux
    port map (
            O => \N__3326\,
            I => \N__3323\
        );

    \I__684\ : InMux
    port map (
            O => \N__3323\,
            I => \N__3320\
        );

    \I__683\ : LocalMux
    port map (
            O => \N__3320\,
            I => \N__3317\
        );

    \I__682\ : Span4Mux_v
    port map (
            O => \N__3317\,
            I => \N__3314\
        );

    \I__681\ : Sp12to4
    port map (
            O => \N__3314\,
            I => \N__3311\
        );

    \I__680\ : Span12Mux_h
    port map (
            O => \N__3311\,
            I => \N__3308\
        );

    \I__679\ : Span12Mux_v
    port map (
            O => \N__3308\,
            I => \N__3305\
        );

    \I__678\ : Odrv12
    port map (
            O => \N__3305\,
            I => electr_config_in_c_39
        );

    \I__677\ : CascadeMux
    port map (
            O => \N__3302\,
            I => \N__3299\
        );

    \I__676\ : InMux
    port map (
            O => \N__3299\,
            I => \N__3296\
        );

    \I__675\ : LocalMux
    port map (
            O => \N__3296\,
            I => \N__3293\
        );

    \I__674\ : Span12Mux_h
    port map (
            O => \N__3293\,
            I => \N__3290\
        );

    \I__673\ : Span12Mux_v
    port map (
            O => \N__3290\,
            I => \N__3287\
        );

    \I__672\ : Span12Mux_v
    port map (
            O => \N__3287\,
            I => \N__3284\
        );

    \I__671\ : Odrv12
    port map (
            O => \N__3284\,
            I => electr_config_in_c_41
        );

    \I__670\ : InMux
    port map (
            O => \N__3281\,
            I => \N__3278\
        );

    \I__669\ : LocalMux
    port map (
            O => \N__3278\,
            I => \N__3275\
        );

    \I__668\ : Span4Mux_v
    port map (
            O => \N__3275\,
            I => \N__3272\
        );

    \I__667\ : Sp12to4
    port map (
            O => \N__3272\,
            I => \N__3269\
        );

    \I__666\ : Span12Mux_h
    port map (
            O => \N__3269\,
            I => \N__3266\
        );

    \I__665\ : Odrv12
    port map (
            O => \N__3266\,
            I => electr_config_in_c_44
        );

    \I__664\ : InMux
    port map (
            O => \N__3263\,
            I => \N__3260\
        );

    \I__663\ : LocalMux
    port map (
            O => \N__3260\,
            I => \N__3257\
        );

    \I__662\ : Span4Mux_h
    port map (
            O => \N__3257\,
            I => \N__3254\
        );

    \I__661\ : Odrv4
    port map (
            O => \N__3254\,
            I => \shift_regZ0Z_44\
        );

    \I__660\ : CascadeMux
    port map (
            O => \N__3251\,
            I => \N__3248\
        );

    \I__659\ : InMux
    port map (
            O => \N__3248\,
            I => \N__3245\
        );

    \I__658\ : LocalMux
    port map (
            O => \N__3245\,
            I => \N__3242\
        );

    \I__657\ : Span12Mux_s5_v
    port map (
            O => \N__3242\,
            I => \N__3239\
        );

    \I__656\ : Span12Mux_h
    port map (
            O => \N__3239\,
            I => \N__3236\
        );

    \I__655\ : Odrv12
    port map (
            O => \N__3236\,
            I => electr_config_in_c_48
        );

    \I__654\ : CascadeMux
    port map (
            O => \N__3233\,
            I => \N__3230\
        );

    \I__653\ : InMux
    port map (
            O => \N__3230\,
            I => \N__3227\
        );

    \I__652\ : LocalMux
    port map (
            O => \N__3227\,
            I => \N__3224\
        );

    \I__651\ : Sp12to4
    port map (
            O => \N__3224\,
            I => \N__3221\
        );

    \I__650\ : Span12Mux_h
    port map (
            O => \N__3221\,
            I => \N__3218\
        );

    \I__649\ : Span12Mux_h
    port map (
            O => \N__3218\,
            I => \N__3215\
        );

    \I__648\ : Odrv12
    port map (
            O => \N__3215\,
            I => electr_config_in_c_45
        );

    \I__647\ : InMux
    port map (
            O => \N__3212\,
            I => \N__3209\
        );

    \I__646\ : LocalMux
    port map (
            O => \N__3209\,
            I => \shift_regZ0Z_48\
        );

    \I__645\ : CascadeMux
    port map (
            O => \N__3206\,
            I => \N__3203\
        );

    \I__644\ : InMux
    port map (
            O => \N__3203\,
            I => \N__3200\
        );

    \I__643\ : LocalMux
    port map (
            O => \N__3200\,
            I => \N__3197\
        );

    \I__642\ : Span12Mux_v
    port map (
            O => \N__3197\,
            I => \N__3194\
        );

    \I__641\ : Span12Mux_h
    port map (
            O => \N__3194\,
            I => \N__3191\
        );

    \I__640\ : Odrv12
    port map (
            O => \N__3191\,
            I => electr_config_in_c_49
        );

    \I__639\ : InMux
    port map (
            O => \N__3188\,
            I => \N__3185\
        );

    \I__638\ : LocalMux
    port map (
            O => \N__3185\,
            I => \N__3182\
        );

    \I__637\ : Odrv4
    port map (
            O => \N__3182\,
            I => \shift_regZ0Z_49\
        );

    \I__636\ : InMux
    port map (
            O => \N__3179\,
            I => \N__3176\
        );

    \I__635\ : LocalMux
    port map (
            O => \N__3176\,
            I => \counter_sr_cry_0_THRU_CO\
        );

    \I__634\ : InMux
    port map (
            O => \N__3173\,
            I => \N__3167\
        );

    \I__633\ : InMux
    port map (
            O => \N__3172\,
            I => \N__3164\
        );

    \I__632\ : InMux
    port map (
            O => \N__3171\,
            I => \N__3161\
        );

    \I__631\ : InMux
    port map (
            O => \N__3170\,
            I => \N__3158\
        );

    \I__630\ : LocalMux
    port map (
            O => \N__3167\,
            I => \counter_srZ0Z_1\
        );

    \I__629\ : LocalMux
    port map (
            O => \N__3164\,
            I => \counter_srZ0Z_1\
        );

    \I__628\ : LocalMux
    port map (
            O => \N__3161\,
            I => \counter_srZ0Z_1\
        );

    \I__627\ : LocalMux
    port map (
            O => \N__3158\,
            I => \counter_srZ0Z_1\
        );

    \I__626\ : InMux
    port map (
            O => \N__3149\,
            I => \N__3138\
        );

    \I__625\ : InMux
    port map (
            O => \N__3148\,
            I => \N__3138\
        );

    \I__624\ : InMux
    port map (
            O => \N__3147\,
            I => \N__3138\
        );

    \I__623\ : InMux
    port map (
            O => \N__3146\,
            I => \N__3135\
        );

    \I__622\ : InMux
    port map (
            O => \N__3145\,
            I => \N__3132\
        );

    \I__621\ : LocalMux
    port map (
            O => \N__3138\,
            I => counter_sre_0
        );

    \I__620\ : LocalMux
    port map (
            O => \N__3135\,
            I => counter_sre_0
        );

    \I__619\ : LocalMux
    port map (
            O => \N__3132\,
            I => counter_sre_0
        );

    \I__618\ : CascadeMux
    port map (
            O => \N__3125\,
            I => \N__3120\
        );

    \I__617\ : CascadeMux
    port map (
            O => \N__3124\,
            I => \N__3116\
        );

    \I__616\ : CascadeMux
    port map (
            O => \N__3123\,
            I => \N__3113\
        );

    \I__615\ : InMux
    port map (
            O => \N__3120\,
            I => \N__3106\
        );

    \I__614\ : InMux
    port map (
            O => \N__3119\,
            I => \N__3106\
        );

    \I__613\ : InMux
    port map (
            O => \N__3116\,
            I => \N__3099\
        );

    \I__612\ : InMux
    port map (
            O => \N__3113\,
            I => \N__3099\
        );

    \I__611\ : InMux
    port map (
            O => \N__3112\,
            I => \N__3099\
        );

    \I__610\ : InMux
    port map (
            O => \N__3111\,
            I => \N__3096\
        );

    \I__609\ : LocalMux
    port map (
            O => \N__3106\,
            I => next_state32_i
        );

    \I__608\ : LocalMux
    port map (
            O => \N__3099\,
            I => next_state32_i
        );

    \I__607\ : LocalMux
    port map (
            O => \N__3096\,
            I => next_state32_i
        );

    \I__606\ : CascadeMux
    port map (
            O => \N__3089\,
            I => \N__3086\
        );

    \I__605\ : InMux
    port map (
            O => \N__3086\,
            I => \N__3080\
        );

    \I__604\ : InMux
    port map (
            O => \N__3085\,
            I => \N__3077\
        );

    \I__603\ : InMux
    port map (
            O => \N__3084\,
            I => \N__3074\
        );

    \I__602\ : InMux
    port map (
            O => \N__3083\,
            I => \N__3071\
        );

    \I__601\ : LocalMux
    port map (
            O => \N__3080\,
            I => \counter_srZ0Z_0\
        );

    \I__600\ : LocalMux
    port map (
            O => \N__3077\,
            I => \counter_srZ0Z_0\
        );

    \I__599\ : LocalMux
    port map (
            O => \N__3074\,
            I => \counter_srZ0Z_0\
        );

    \I__598\ : LocalMux
    port map (
            O => \N__3071\,
            I => \counter_srZ0Z_0\
        );

    \I__597\ : CascadeMux
    port map (
            O => \N__3062\,
            I => \N__3059\
        );

    \I__596\ : InMux
    port map (
            O => \N__3059\,
            I => \N__3056\
        );

    \I__595\ : LocalMux
    port map (
            O => \N__3056\,
            I => \N__3053\
        );

    \I__594\ : Span4Mux_v
    port map (
            O => \N__3053\,
            I => \N__3050\
        );

    \I__593\ : Sp12to4
    port map (
            O => \N__3050\,
            I => \N__3047\
        );

    \I__592\ : Span12Mux_h
    port map (
            O => \N__3047\,
            I => \N__3044\
        );

    \I__591\ : Odrv12
    port map (
            O => \N__3044\,
            I => electr_config_in_c_47
        );

    \I__590\ : InMux
    port map (
            O => \N__3041\,
            I => \N__3038\
        );

    \I__589\ : LocalMux
    port map (
            O => \N__3038\,
            I => \shift_regZ0Z_47\
        );

    \I__588\ : InMux
    port map (
            O => \N__3035\,
            I => \N__3032\
        );

    \I__587\ : LocalMux
    port map (
            O => \N__3032\,
            I => \N__3029\
        );

    \I__586\ : Span12Mux_h
    port map (
            O => \N__3029\,
            I => \N__3026\
        );

    \I__585\ : Odrv12
    port map (
            O => \N__3026\,
            I => electr_config_in_c_46
        );

    \I__584\ : CascadeMux
    port map (
            O => \N__3023\,
            I => \N__3020\
        );

    \I__583\ : InMux
    port map (
            O => \N__3020\,
            I => \N__3017\
        );

    \I__582\ : LocalMux
    port map (
            O => \N__3017\,
            I => \shift_regZ0Z_45\
        );

    \I__581\ : InMux
    port map (
            O => \N__3014\,
            I => \N__3011\
        );

    \I__580\ : LocalMux
    port map (
            O => \N__3011\,
            I => \shift_regZ0Z_46\
        );

    \I__579\ : InMux
    port map (
            O => \N__3008\,
            I => \N__3005\
        );

    \I__578\ : LocalMux
    port map (
            O => \N__3005\,
            I => \N__3002\
        );

    \I__577\ : Span4Mux_v
    port map (
            O => \N__3002\,
            I => \N__2999\
        );

    \I__576\ : Sp12to4
    port map (
            O => \N__2999\,
            I => \N__2996\
        );

    \I__575\ : Span12Mux_h
    port map (
            O => \N__2996\,
            I => \N__2993\
        );

    \I__574\ : Odrv12
    port map (
            O => \N__2993\,
            I => electr_config_in_c_2
        );

    \I__573\ : InMux
    port map (
            O => \N__2990\,
            I => \N__2987\
        );

    \I__572\ : LocalMux
    port map (
            O => \N__2987\,
            I => \N__2984\
        );

    \I__571\ : Span4Mux_h
    port map (
            O => \N__2984\,
            I => \N__2981\
        );

    \I__570\ : Span4Mux_h
    port map (
            O => \N__2981\,
            I => \N__2978\
        );

    \I__569\ : Span4Mux_h
    port map (
            O => \N__2978\,
            I => \N__2975\
        );

    \I__568\ : Span4Mux_h
    port map (
            O => \N__2975\,
            I => \N__2972\
        );

    \I__567\ : Odrv4
    port map (
            O => \N__2972\,
            I => electr_config_in_c_0
        );

    \I__566\ : InMux
    port map (
            O => \N__2969\,
            I => \N__2966\
        );

    \I__565\ : LocalMux
    port map (
            O => \N__2966\,
            I => \shift_regZ0Z_33\
        );

    \I__564\ : InMux
    port map (
            O => \N__2963\,
            I => \N__2960\
        );

    \I__563\ : LocalMux
    port map (
            O => \N__2960\,
            I => \N__2957\
        );

    \I__562\ : Span4Mux_v
    port map (
            O => \N__2957\,
            I => \N__2954\
        );

    \I__561\ : Sp12to4
    port map (
            O => \N__2954\,
            I => \N__2951\
        );

    \I__560\ : Span12Mux_h
    port map (
            O => \N__2951\,
            I => \N__2948\
        );

    \I__559\ : Span12Mux_v
    port map (
            O => \N__2948\,
            I => \N__2945\
        );

    \I__558\ : Odrv12
    port map (
            O => \N__2945\,
            I => electr_config_in_c_34
        );

    \I__557\ : InMux
    port map (
            O => \N__2942\,
            I => \N__2939\
        );

    \I__556\ : LocalMux
    port map (
            O => \N__2939\,
            I => \shift_regZ0Z_34\
        );

    \I__555\ : InMux
    port map (
            O => \N__2936\,
            I => counter_sr_cry_0
        );

    \I__554\ : InMux
    port map (
            O => \N__2933\,
            I => counter_sr_cry_1
        );

    \I__553\ : InMux
    port map (
            O => \N__2930\,
            I => \N__2924\
        );

    \I__552\ : InMux
    port map (
            O => \N__2929\,
            I => \N__2921\
        );

    \I__551\ : InMux
    port map (
            O => \N__2928\,
            I => \N__2916\
        );

    \I__550\ : InMux
    port map (
            O => \N__2927\,
            I => \N__2916\
        );

    \I__549\ : LocalMux
    port map (
            O => \N__2924\,
            I => \counter_srZ0Z_3\
        );

    \I__548\ : LocalMux
    port map (
            O => \N__2921\,
            I => \counter_srZ0Z_3\
        );

    \I__547\ : LocalMux
    port map (
            O => \N__2916\,
            I => \counter_srZ0Z_3\
        );

    \I__546\ : InMux
    port map (
            O => \N__2909\,
            I => \N__2906\
        );

    \I__545\ : LocalMux
    port map (
            O => \N__2906\,
            I => \counter_sr_cry_2_THRU_CO\
        );

    \I__544\ : InMux
    port map (
            O => \N__2903\,
            I => counter_sr_cry_2
        );

    \I__543\ : InMux
    port map (
            O => \N__2900\,
            I => \N__2895\
        );

    \I__542\ : InMux
    port map (
            O => \N__2899\,
            I => \N__2892\
        );

    \I__541\ : InMux
    port map (
            O => \N__2898\,
            I => \N__2889\
        );

    \I__540\ : LocalMux
    port map (
            O => \N__2895\,
            I => \counter_srZ0Z_4\
        );

    \I__539\ : LocalMux
    port map (
            O => \N__2892\,
            I => \counter_srZ0Z_4\
        );

    \I__538\ : LocalMux
    port map (
            O => \N__2889\,
            I => \counter_srZ0Z_4\
        );

    \I__537\ : InMux
    port map (
            O => \N__2882\,
            I => \N__2879\
        );

    \I__536\ : LocalMux
    port map (
            O => \N__2879\,
            I => \counter_sr_cry_3_THRU_CO\
        );

    \I__535\ : InMux
    port map (
            O => \N__2876\,
            I => counter_sr_cry_3
        );

    \I__534\ : InMux
    port map (
            O => \N__2873\,
            I => counter_sr_cry_4
        );

    \I__533\ : CascadeMux
    port map (
            O => \N__2870\,
            I => \N__2867\
        );

    \I__532\ : InMux
    port map (
            O => \N__2867\,
            I => \N__2863\
        );

    \I__531\ : InMux
    port map (
            O => \N__2866\,
            I => \N__2860\
        );

    \I__530\ : LocalMux
    port map (
            O => \N__2863\,
            I => \counter_srZ0Z_5\
        );

    \I__529\ : LocalMux
    port map (
            O => \N__2860\,
            I => \counter_srZ0Z_5\
        );

    \I__528\ : InMux
    port map (
            O => \N__2855\,
            I => \N__2852\
        );

    \I__527\ : LocalMux
    port map (
            O => \N__2852\,
            I => \counter_sr_cry_1_THRU_CO\
        );

    \I__526\ : CascadeMux
    port map (
            O => \N__2849\,
            I => \N__2844\
        );

    \I__525\ : InMux
    port map (
            O => \N__2848\,
            I => \N__2840\
        );

    \I__524\ : InMux
    port map (
            O => \N__2847\,
            I => \N__2837\
        );

    \I__523\ : InMux
    port map (
            O => \N__2844\,
            I => \N__2834\
        );

    \I__522\ : InMux
    port map (
            O => \N__2843\,
            I => \N__2831\
        );

    \I__521\ : LocalMux
    port map (
            O => \N__2840\,
            I => \counter_srZ0Z_2\
        );

    \I__520\ : LocalMux
    port map (
            O => \N__2837\,
            I => \counter_srZ0Z_2\
        );

    \I__519\ : LocalMux
    port map (
            O => \N__2834\,
            I => \counter_srZ0Z_2\
        );

    \I__518\ : LocalMux
    port map (
            O => \N__2831\,
            I => \counter_srZ0Z_2\
        );

    \I__517\ : CascadeMux
    port map (
            O => \N__2822\,
            I => \N_115_mux_cascade_\
        );

    \I__516\ : CascadeMux
    port map (
            O => \N__2819\,
            I => \counter_sre_0_cascade_\
        );

    \I__515\ : InMux
    port map (
            O => \N__2816\,
            I => \N__2812\
        );

    \I__514\ : InMux
    port map (
            O => \N__2815\,
            I => \N__2809\
        );

    \I__513\ : LocalMux
    port map (
            O => \N__2812\,
            I => counter_sre_0_2
        );

    \I__512\ : LocalMux
    port map (
            O => \N__2809\,
            I => counter_sre_0_2
        );

    \I__511\ : CascadeMux
    port map (
            O => \N__2804\,
            I => \un22_next_state_1_cascade_\
        );

    \I__510\ : InMux
    port map (
            O => \N__2801\,
            I => \N__2798\
        );

    \I__509\ : LocalMux
    port map (
            O => \N__2798\,
            I => \N_118_mux\
        );

    \I__508\ : InMux
    port map (
            O => \N__2795\,
            I => \N__2792\
        );

    \I__507\ : LocalMux
    port map (
            O => \N__2792\,
            I => next_state32
        );

    \I__506\ : CascadeMux
    port map (
            O => \N__2789\,
            I => \N__2786\
        );

    \I__505\ : InMux
    port map (
            O => \N__2786\,
            I => \N__2783\
        );

    \I__504\ : LocalMux
    port map (
            O => \N__2783\,
            I => \N__2780\
        );

    \I__503\ : Span4Mux_v
    port map (
            O => \N__2780\,
            I => \N__2777\
        );

    \I__502\ : Span4Mux_h
    port map (
            O => \N__2777\,
            I => \N__2774\
        );

    \I__501\ : Sp12to4
    port map (
            O => \N__2774\,
            I => \N__2771\
        );

    \I__500\ : Span12Mux_h
    port map (
            O => \N__2771\,
            I => \N__2768\
        );

    \I__499\ : Span12Mux_v
    port map (
            O => \N__2768\,
            I => \N__2765\
        );

    \I__498\ : Odrv12
    port map (
            O => \N__2765\,
            I => electr_config_in_c_36
        );

    \I__497\ : CascadeMux
    port map (
            O => \N__2762\,
            I => \N__2759\
        );

    \I__496\ : InMux
    port map (
            O => \N__2759\,
            I => \N__2756\
        );

    \I__495\ : LocalMux
    port map (
            O => \N__2756\,
            I => \N__2753\
        );

    \I__494\ : Sp12to4
    port map (
            O => \N__2753\,
            I => \N__2750\
        );

    \I__493\ : Span12Mux_v
    port map (
            O => \N__2750\,
            I => \N__2747\
        );

    \I__492\ : Span12Mux_h
    port map (
            O => \N__2747\,
            I => \N__2744\
        );

    \I__491\ : Odrv12
    port map (
            O => \N__2744\,
            I => electr_config_in_c_35
        );

    \I__490\ : InMux
    port map (
            O => \N__2741\,
            I => \N__2738\
        );

    \I__489\ : LocalMux
    port map (
            O => \N__2738\,
            I => \shift_regZ0Z_35\
        );

    \I__488\ : InMux
    port map (
            O => \N__2735\,
            I => \N__2732\
        );

    \I__487\ : LocalMux
    port map (
            O => \N__2732\,
            I => \N__2729\
        );

    \I__486\ : Span12Mux_h
    port map (
            O => \N__2729\,
            I => \N__2726\
        );

    \I__485\ : Odrv12
    port map (
            O => \N__2726\,
            I => electr_config_in_c_7
        );

    \I__484\ : InMux
    port map (
            O => \N__2723\,
            I => \N__2720\
        );

    \I__483\ : LocalMux
    port map (
            O => \N__2720\,
            I => \N__2717\
        );

    \I__482\ : Span4Mux_s2_v
    port map (
            O => \N__2717\,
            I => \N__2714\
        );

    \I__481\ : Sp12to4
    port map (
            O => \N__2714\,
            I => \N__2711\
        );

    \I__480\ : Span12Mux_h
    port map (
            O => \N__2711\,
            I => \N__2708\
        );

    \I__479\ : Span12Mux_h
    port map (
            O => \N__2708\,
            I => \N__2705\
        );

    \I__478\ : Odrv12
    port map (
            O => \N__2705\,
            I => electr_config_in_c_5
        );

    \I__477\ : CascadeMux
    port map (
            O => \N__2702\,
            I => \N__2699\
        );

    \I__476\ : InMux
    port map (
            O => \N__2699\,
            I => \N__2696\
        );

    \I__475\ : LocalMux
    port map (
            O => \N__2696\,
            I => \N__2693\
        );

    \I__474\ : Span4Mux_v
    port map (
            O => \N__2693\,
            I => \N__2690\
        );

    \I__473\ : Span4Mux_h
    port map (
            O => \N__2690\,
            I => \N__2687\
        );

    \I__472\ : Sp12to4
    port map (
            O => \N__2687\,
            I => \N__2684\
        );

    \I__471\ : Span12Mux_h
    port map (
            O => \N__2684\,
            I => \N__2681\
        );

    \I__470\ : Odrv12
    port map (
            O => \N__2681\,
            I => electr_config_in_c_4
        );

    \I__469\ : InMux
    port map (
            O => \N__2678\,
            I => \N__2675\
        );

    \I__468\ : LocalMux
    port map (
            O => \N__2675\,
            I => \shift_regZ0Z_4\
        );

    \I__467\ : InMux
    port map (
            O => \N__2672\,
            I => \N__2669\
        );

    \I__466\ : LocalMux
    port map (
            O => \N__2669\,
            I => \N__2666\
        );

    \I__465\ : Span4Mux_v
    port map (
            O => \N__2666\,
            I => \N__2663\
        );

    \I__464\ : Span4Mux_h
    port map (
            O => \N__2663\,
            I => \N__2660\
        );

    \I__463\ : Sp12to4
    port map (
            O => \N__2660\,
            I => \N__2657\
        );

    \I__462\ : Span12Mux_h
    port map (
            O => \N__2657\,
            I => \N__2654\
        );

    \I__461\ : Odrv12
    port map (
            O => \N__2654\,
            I => electr_config_in_c_6
        );

    \I__460\ : InMux
    port map (
            O => \N__2651\,
            I => \N__2648\
        );

    \I__459\ : LocalMux
    port map (
            O => \N__2648\,
            I => \shift_regZ0Z_5\
        );

    \I__458\ : InMux
    port map (
            O => \N__2645\,
            I => \N__2642\
        );

    \I__457\ : LocalMux
    port map (
            O => \N__2642\,
            I => \shift_regZ0Z_6\
        );

    \I__456\ : InMux
    port map (
            O => \N__2639\,
            I => \N__2636\
        );

    \I__455\ : LocalMux
    port map (
            O => \N__2636\,
            I => \shift_regZ0Z_7\
        );

    \I__454\ : CascadeMux
    port map (
            O => \N__2633\,
            I => \N__2630\
        );

    \I__453\ : InMux
    port map (
            O => \N__2630\,
            I => \N__2627\
        );

    \I__452\ : LocalMux
    port map (
            O => \N__2627\,
            I => \N__2624\
        );

    \I__451\ : Sp12to4
    port map (
            O => \N__2624\,
            I => \N__2621\
        );

    \I__450\ : Span12Mux_v
    port map (
            O => \N__2621\,
            I => \N__2618\
        );

    \I__449\ : Span12Mux_h
    port map (
            O => \N__2618\,
            I => \N__2615\
        );

    \I__448\ : Odrv12
    port map (
            O => \N__2615\,
            I => electr_config_in_c_8
        );

    \I__447\ : CascadeMux
    port map (
            O => \N__2612\,
            I => \N__2609\
        );

    \I__446\ : InMux
    port map (
            O => \N__2609\,
            I => \N__2606\
        );

    \I__445\ : LocalMux
    port map (
            O => \N__2606\,
            I => \N__2603\
        );

    \I__444\ : Span4Mux_v
    port map (
            O => \N__2603\,
            I => \N__2600\
        );

    \I__443\ : Sp12to4
    port map (
            O => \N__2600\,
            I => \N__2597\
        );

    \I__442\ : Span12Mux_h
    port map (
            O => \N__2597\,
            I => \N__2594\
        );

    \I__441\ : Odrv12
    port map (
            O => \N__2594\,
            I => electr_config_in_c_50
        );

    \I__440\ : InMux
    port map (
            O => \N__2591\,
            I => \N__2588\
        );

    \I__439\ : LocalMux
    port map (
            O => \N__2588\,
            I => \shift_regZ0Z_50\
        );

    \I__438\ : InMux
    port map (
            O => \N__2585\,
            I => \N__2582\
        );

    \I__437\ : LocalMux
    port map (
            O => \N__2582\,
            I => \N__2579\
        );

    \I__436\ : Span12Mux_h
    port map (
            O => \N__2579\,
            I => \N__2576\
        );

    \I__435\ : Odrv12
    port map (
            O => \N__2576\,
            I => electr_config_in_c_9
        );

    \I__434\ : InMux
    port map (
            O => \N__2573\,
            I => \N__2570\
        );

    \I__433\ : LocalMux
    port map (
            O => \N__2570\,
            I => \shift_regZ0Z_8\
        );

    \I__432\ : InMux
    port map (
            O => \N__2567\,
            I => \N__2564\
        );

    \I__431\ : LocalMux
    port map (
            O => \N__2564\,
            I => \N__2561\
        );

    \I__430\ : Span4Mux_h
    port map (
            O => \N__2561\,
            I => \N__2558\
        );

    \I__429\ : Odrv4
    port map (
            O => \N__2558\,
            I => \shift_regZ0Z_9\
        );

    \I__428\ : CascadeMux
    port map (
            O => \N__2555\,
            I => \N__2552\
        );

    \I__427\ : InMux
    port map (
            O => \N__2552\,
            I => \N__2549\
        );

    \I__426\ : LocalMux
    port map (
            O => \N__2549\,
            I => \N__2546\
        );

    \I__425\ : Span4Mux_v
    port map (
            O => \N__2546\,
            I => \N__2543\
        );

    \I__424\ : Sp12to4
    port map (
            O => \N__2543\,
            I => \N__2540\
        );

    \I__423\ : Span12Mux_v
    port map (
            O => \N__2540\,
            I => \N__2537\
        );

    \I__422\ : Odrv12
    port map (
            O => \N__2537\,
            I => electr_config_in_c_10
        );

    \I__421\ : InMux
    port map (
            O => \N__2534\,
            I => \N__2531\
        );

    \I__420\ : LocalMux
    port map (
            O => \N__2531\,
            I => \shift_regZ0Z_10\
        );

    \I__419\ : CascadeMux
    port map (
            O => \N__2528\,
            I => \N__2525\
        );

    \I__418\ : InMux
    port map (
            O => \N__2525\,
            I => \N__2522\
        );

    \I__417\ : LocalMux
    port map (
            O => \N__2522\,
            I => \N__2519\
        );

    \I__416\ : Span4Mux_v
    port map (
            O => \N__2519\,
            I => \N__2516\
        );

    \I__415\ : Span4Mux_h
    port map (
            O => \N__2516\,
            I => \N__2513\
        );

    \I__414\ : Sp12to4
    port map (
            O => \N__2513\,
            I => \N__2510\
        );

    \I__413\ : Span12Mux_v
    port map (
            O => \N__2510\,
            I => \N__2507\
        );

    \I__412\ : Odrv12
    port map (
            O => \N__2507\,
            I => electr_config_in_c_31
        );

    \I__411\ : InMux
    port map (
            O => \N__2504\,
            I => \N__2501\
        );

    \I__410\ : LocalMux
    port map (
            O => \N__2501\,
            I => \shift_regZ0Z_25\
        );

    \I__409\ : InMux
    port map (
            O => \N__2498\,
            I => \N__2495\
        );

    \I__408\ : LocalMux
    port map (
            O => \N__2495\,
            I => \N__2492\
        );

    \I__407\ : Span4Mux_v
    port map (
            O => \N__2492\,
            I => \N__2489\
        );

    \I__406\ : Sp12to4
    port map (
            O => \N__2489\,
            I => \N__2486\
        );

    \I__405\ : Span12Mux_h
    port map (
            O => \N__2486\,
            I => \N__2483\
        );

    \I__404\ : Span12Mux_v
    port map (
            O => \N__2483\,
            I => \N__2480\
        );

    \I__403\ : Odrv12
    port map (
            O => \N__2480\,
            I => electr_config_in_c_26
        );

    \I__402\ : CascadeMux
    port map (
            O => \N__2477\,
            I => \N__2474\
        );

    \I__401\ : InMux
    port map (
            O => \N__2474\,
            I => \N__2471\
        );

    \I__400\ : LocalMux
    port map (
            O => \N__2471\,
            I => \N__2468\
        );

    \I__399\ : Span4Mux_v
    port map (
            O => \N__2468\,
            I => \N__2465\
        );

    \I__398\ : Span4Mux_h
    port map (
            O => \N__2465\,
            I => \N__2462\
        );

    \I__397\ : Sp12to4
    port map (
            O => \N__2462\,
            I => \N__2459\
        );

    \I__396\ : Span12Mux_v
    port map (
            O => \N__2459\,
            I => \N__2456\
        );

    \I__395\ : Odrv12
    port map (
            O => \N__2456\,
            I => electr_config_in_c_30
        );

    \I__394\ : InMux
    port map (
            O => \N__2453\,
            I => \N__2450\
        );

    \I__393\ : LocalMux
    port map (
            O => \N__2450\,
            I => \shift_regZ0Z_30\
        );

    \I__392\ : CascadeMux
    port map (
            O => \N__2447\,
            I => \N__2444\
        );

    \I__391\ : InMux
    port map (
            O => \N__2444\,
            I => \N__2441\
        );

    \I__390\ : LocalMux
    port map (
            O => \N__2441\,
            I => \N__2438\
        );

    \I__389\ : Span4Mux_v
    port map (
            O => \N__2438\,
            I => \N__2435\
        );

    \I__388\ : Sp12to4
    port map (
            O => \N__2435\,
            I => \N__2432\
        );

    \I__387\ : Span12Mux_h
    port map (
            O => \N__2432\,
            I => \N__2429\
        );

    \I__386\ : Span12Mux_v
    port map (
            O => \N__2429\,
            I => \N__2426\
        );

    \I__385\ : Odrv12
    port map (
            O => \N__2426\,
            I => electr_config_in_c_33
        );

    \I__384\ : CascadeMux
    port map (
            O => \N__2423\,
            I => \N__2420\
        );

    \I__383\ : InMux
    port map (
            O => \N__2420\,
            I => \N__2417\
        );

    \I__382\ : LocalMux
    port map (
            O => \N__2417\,
            I => \N__2414\
        );

    \I__381\ : Span4Mux_v
    port map (
            O => \N__2414\,
            I => \N__2411\
        );

    \I__380\ : Sp12to4
    port map (
            O => \N__2411\,
            I => \N__2408\
        );

    \I__379\ : Span12Mux_h
    port map (
            O => \N__2408\,
            I => \N__2405\
        );

    \I__378\ : Span12Mux_v
    port map (
            O => \N__2405\,
            I => \N__2402\
        );

    \I__377\ : Odrv12
    port map (
            O => \N__2402\,
            I => electr_config_in_c_29
        );

    \I__376\ : InMux
    port map (
            O => \N__2399\,
            I => \N__2396\
        );

    \I__375\ : LocalMux
    port map (
            O => \N__2396\,
            I => \shift_regZ0Z_29\
        );

    \I__374\ : InMux
    port map (
            O => \N__2393\,
            I => \N__2390\
        );

    \I__373\ : LocalMux
    port map (
            O => \N__2390\,
            I => \shift_regZ0Z_26\
        );

    \I__372\ : InMux
    port map (
            O => \N__2387\,
            I => \N__2384\
        );

    \I__371\ : LocalMux
    port map (
            O => \N__2384\,
            I => \N__2381\
        );

    \I__370\ : Span4Mux_v
    port map (
            O => \N__2381\,
            I => \N__2378\
        );

    \I__369\ : Span4Mux_h
    port map (
            O => \N__2378\,
            I => \N__2375\
        );

    \I__368\ : Sp12to4
    port map (
            O => \N__2375\,
            I => \N__2372\
        );

    \I__367\ : Span12Mux_v
    port map (
            O => \N__2372\,
            I => \N__2369\
        );

    \I__366\ : Odrv12
    port map (
            O => \N__2369\,
            I => electr_config_in_c_27
        );

    \I__365\ : InMux
    port map (
            O => \N__2366\,
            I => \N__2363\
        );

    \I__364\ : LocalMux
    port map (
            O => \N__2363\,
            I => \shift_regZ0Z_31\
        );

    \I__363\ : CascadeMux
    port map (
            O => \N__2360\,
            I => \N__2357\
        );

    \I__362\ : InMux
    port map (
            O => \N__2357\,
            I => \N__2354\
        );

    \I__361\ : LocalMux
    port map (
            O => \N__2354\,
            I => \N__2351\
        );

    \I__360\ : Span4Mux_v
    port map (
            O => \N__2351\,
            I => \N__2348\
        );

    \I__359\ : Sp12to4
    port map (
            O => \N__2348\,
            I => \N__2345\
        );

    \I__358\ : Span12Mux_h
    port map (
            O => \N__2345\,
            I => \N__2342\
        );

    \I__357\ : Span12Mux_v
    port map (
            O => \N__2342\,
            I => \N__2339\
        );

    \I__356\ : Odrv12
    port map (
            O => \N__2339\,
            I => electr_config_in_c_32
        );

    \I__355\ : InMux
    port map (
            O => \N__2336\,
            I => \N__2333\
        );

    \I__354\ : LocalMux
    port map (
            O => \N__2333\,
            I => \shift_regZ0Z_32\
        );

    \I__353\ : InMux
    port map (
            O => \N__2330\,
            I => \N__2327\
        );

    \I__352\ : LocalMux
    port map (
            O => \N__2327\,
            I => \shift_regZ0Z_27\
        );

    \I__351\ : CascadeMux
    port map (
            O => \N__2324\,
            I => \N__2321\
        );

    \I__350\ : InMux
    port map (
            O => \N__2321\,
            I => \N__2318\
        );

    \I__349\ : LocalMux
    port map (
            O => \N__2318\,
            I => \N__2315\
        );

    \I__348\ : Span4Mux_v
    port map (
            O => \N__2315\,
            I => \N__2312\
        );

    \I__347\ : Span4Mux_h
    port map (
            O => \N__2312\,
            I => \N__2309\
        );

    \I__346\ : Sp12to4
    port map (
            O => \N__2309\,
            I => \N__2306\
        );

    \I__345\ : Span12Mux_v
    port map (
            O => \N__2306\,
            I => \N__2303\
        );

    \I__344\ : Odrv12
    port map (
            O => \N__2303\,
            I => electr_config_in_c_28
        );

    \I__343\ : InMux
    port map (
            O => \N__2300\,
            I => \N__2297\
        );

    \I__342\ : LocalMux
    port map (
            O => \N__2297\,
            I => \shift_regZ0Z_28\
        );

    \I__341\ : InMux
    port map (
            O => \N__2294\,
            I => \N__2291\
        );

    \I__340\ : LocalMux
    port map (
            O => \N__2291\,
            I => \shift_regZ0Z_24\
        );

    \I__339\ : CascadeMux
    port map (
            O => \N__2288\,
            I => \N__2285\
        );

    \I__338\ : InMux
    port map (
            O => \N__2285\,
            I => \N__2282\
        );

    \I__337\ : LocalMux
    port map (
            O => \N__2282\,
            I => \N__2279\
        );

    \I__336\ : Span4Mux_v
    port map (
            O => \N__2279\,
            I => \N__2276\
        );

    \I__335\ : Sp12to4
    port map (
            O => \N__2276\,
            I => \N__2273\
        );

    \I__334\ : Span12Mux_h
    port map (
            O => \N__2273\,
            I => \N__2270\
        );

    \I__333\ : Span12Mux_v
    port map (
            O => \N__2270\,
            I => \N__2267\
        );

    \I__332\ : Odrv12
    port map (
            O => \N__2267\,
            I => electr_config_in_c_25
        );

    \I__331\ : CascadeMux
    port map (
            O => \N__2264\,
            I => \N__2261\
        );

    \I__330\ : InMux
    port map (
            O => \N__2261\,
            I => \N__2258\
        );

    \I__329\ : LocalMux
    port map (
            O => \N__2258\,
            I => \N__2255\
        );

    \I__328\ : IoSpan4Mux
    port map (
            O => \N__2255\,
            I => \N__2252\
        );

    \I__327\ : IoSpan4Mux
    port map (
            O => \N__2252\,
            I => \N__2249\
        );

    \I__326\ : Odrv4
    port map (
            O => \N__2249\,
            I => electr_config_in_c_52
        );

    \I__325\ : CascadeMux
    port map (
            O => \N__2246\,
            I => \N__2243\
        );

    \I__324\ : InMux
    port map (
            O => \N__2243\,
            I => \N__2240\
        );

    \I__323\ : LocalMux
    port map (
            O => \N__2240\,
            I => \N__2237\
        );

    \I__322\ : Span4Mux_v
    port map (
            O => \N__2237\,
            I => \N__2234\
        );

    \I__321\ : Sp12to4
    port map (
            O => \N__2234\,
            I => \N__2231\
        );

    \I__320\ : Span12Mux_h
    port map (
            O => \N__2231\,
            I => \N__2228\
        );

    \I__319\ : Odrv12
    port map (
            O => \N__2228\,
            I => electr_config_in_c_51
        );

    \I__318\ : InMux
    port map (
            O => \N__2225\,
            I => \N__2222\
        );

    \I__317\ : LocalMux
    port map (
            O => \N__2222\,
            I => \shift_regZ0Z_51\
        );

    \I__316\ : CascadeMux
    port map (
            O => \N__2219\,
            I => \N__2216\
        );

    \I__315\ : InMux
    port map (
            O => \N__2216\,
            I => \N__2213\
        );

    \I__314\ : LocalMux
    port map (
            O => \N__2213\,
            I => \N__2210\
        );

    \I__313\ : Span4Mux_h
    port map (
            O => \N__2210\,
            I => \N__2207\
        );

    \I__312\ : Odrv4
    port map (
            O => \N__2207\,
            I => electr_config_in_c_54
        );

    \I__311\ : InMux
    port map (
            O => \N__2204\,
            I => \N__2201\
        );

    \I__310\ : LocalMux
    port map (
            O => \N__2201\,
            I => \shift_regZ0Z_52\
        );

    \I__309\ : CascadeMux
    port map (
            O => \N__2198\,
            I => \N__2195\
        );

    \I__308\ : InMux
    port map (
            O => \N__2195\,
            I => \N__2192\
        );

    \I__307\ : LocalMux
    port map (
            O => \N__2192\,
            I => \N__2189\
        );

    \I__306\ : IoSpan4Mux
    port map (
            O => \N__2189\,
            I => \N__2186\
        );

    \I__305\ : IoSpan4Mux
    port map (
            O => \N__2186\,
            I => \N__2183\
        );

    \I__304\ : Odrv4
    port map (
            O => \N__2183\,
            I => electr_config_in_c_53
        );

    \I__303\ : InMux
    port map (
            O => \N__2180\,
            I => \N__2177\
        );

    \I__302\ : LocalMux
    port map (
            O => \N__2177\,
            I => \shift_regZ0Z_53\
        );

    \I__301\ : InMux
    port map (
            O => \N__2174\,
            I => \N__2171\
        );

    \I__300\ : LocalMux
    port map (
            O => \N__2171\,
            I => \N__2168\
        );

    \I__299\ : Odrv4
    port map (
            O => \N__2168\,
            I => \shift_regZ0Z_54\
        );

    \I__298\ : IoInMux
    port map (
            O => \N__2165\,
            I => \N__2162\
        );

    \I__297\ : LocalMux
    port map (
            O => \N__2162\,
            I => \N__2159\
        );

    \I__296\ : Span4Mux_s3_h
    port map (
            O => \N__2159\,
            I => \N__2156\
        );

    \I__295\ : Span4Mux_h
    port map (
            O => \N__2156\,
            I => \N__2153\
        );

    \I__294\ : Span4Mux_h
    port map (
            O => \N__2153\,
            I => \N__2150\
        );

    \I__293\ : Odrv4
    port map (
            O => \N__2150\,
            I => serial_out_c
        );

    \I__292\ : InMux
    port map (
            O => \N__2147\,
            I => \N__2144\
        );

    \I__291\ : LocalMux
    port map (
            O => \N__2144\,
            I => \N__2141\
        );

    \I__290\ : Span4Mux_v
    port map (
            O => \N__2141\,
            I => \N__2138\
        );

    \I__289\ : Span4Mux_h
    port map (
            O => \N__2138\,
            I => \N__2135\
        );

    \I__288\ : Odrv4
    port map (
            O => \N__2135\,
            I => enable_desp_c
        );

    \I__287\ : InMux
    port map (
            O => \N__2132\,
            I => \N__2129\
        );

    \I__286\ : LocalMux
    port map (
            O => \N__2129\,
            I => \shift_regZ0Z_16\
        );

    \I__285\ : CascadeMux
    port map (
            O => \N__2126\,
            I => \N__2123\
        );

    \I__284\ : InMux
    port map (
            O => \N__2123\,
            I => \N__2120\
        );

    \I__283\ : LocalMux
    port map (
            O => \N__2120\,
            I => \N__2117\
        );

    \I__282\ : Span4Mux_v
    port map (
            O => \N__2117\,
            I => \N__2114\
        );

    \I__281\ : Sp12to4
    port map (
            O => \N__2114\,
            I => \N__2111\
        );

    \I__280\ : Odrv12
    port map (
            O => \N__2111\,
            I => electr_config_in_c_17
        );

    \I__279\ : InMux
    port map (
            O => \N__2108\,
            I => \N__2105\
        );

    \I__278\ : LocalMux
    port map (
            O => \N__2105\,
            I => \shift_regZ0Z_17\
        );

    \I__277\ : CascadeMux
    port map (
            O => \N__2102\,
            I => \N__2099\
        );

    \I__276\ : InMux
    port map (
            O => \N__2099\,
            I => \N__2096\
        );

    \I__275\ : LocalMux
    port map (
            O => \N__2096\,
            I => \N__2093\
        );

    \I__274\ : Span4Mux_h
    port map (
            O => \N__2093\,
            I => \N__2090\
        );

    \I__273\ : Sp12to4
    port map (
            O => \N__2090\,
            I => \N__2087\
        );

    \I__272\ : Span12Mux_v
    port map (
            O => \N__2087\,
            I => \N__2084\
        );

    \I__271\ : Odrv12
    port map (
            O => \N__2084\,
            I => electr_config_in_c_11
        );

    \I__270\ : InMux
    port map (
            O => \N__2081\,
            I => \N__2078\
        );

    \I__269\ : LocalMux
    port map (
            O => \N__2078\,
            I => \shift_regZ0Z_11\
        );

    \I__268\ : InMux
    port map (
            O => \N__2075\,
            I => \N__2072\
        );

    \I__267\ : LocalMux
    port map (
            O => \N__2072\,
            I => \N__2069\
        );

    \I__266\ : Sp12to4
    port map (
            O => \N__2069\,
            I => \N__2066\
        );

    \I__265\ : Span12Mux_v
    port map (
            O => \N__2066\,
            I => \N__2063\
        );

    \I__264\ : Odrv12
    port map (
            O => \N__2063\,
            I => electr_config_in_c_15
        );

    \I__263\ : CascadeMux
    port map (
            O => \N__2060\,
            I => \N__2057\
        );

    \I__262\ : InMux
    port map (
            O => \N__2057\,
            I => \N__2054\
        );

    \I__261\ : LocalMux
    port map (
            O => \N__2054\,
            I => \shift_regZ0Z_14\
        );

    \I__260\ : InMux
    port map (
            O => \N__2051\,
            I => \N__2048\
        );

    \I__259\ : LocalMux
    port map (
            O => \N__2048\,
            I => \shift_regZ0Z_15\
        );

    \I__258\ : InMux
    port map (
            O => \N__2045\,
            I => \N__2042\
        );

    \I__257\ : LocalMux
    port map (
            O => \N__2042\,
            I => \N__2039\
        );

    \I__256\ : Span4Mux_v
    port map (
            O => \N__2039\,
            I => \N__2036\
        );

    \I__255\ : Sp12to4
    port map (
            O => \N__2036\,
            I => \N__2033\
        );

    \I__254\ : Span12Mux_h
    port map (
            O => \N__2033\,
            I => \N__2030\
        );

    \I__253\ : Span12Mux_v
    port map (
            O => \N__2030\,
            I => \N__2027\
        );

    \I__252\ : Odrv12
    port map (
            O => \N__2027\,
            I => electr_config_in_c_19
        );

    \I__251\ : InMux
    port map (
            O => \N__2024\,
            I => \N__2021\
        );

    \I__250\ : LocalMux
    port map (
            O => \N__2021\,
            I => \shift_regZ0Z_18\
        );

    \I__249\ : InMux
    port map (
            O => \N__2018\,
            I => \N__2015\
        );

    \I__248\ : LocalMux
    port map (
            O => \N__2015\,
            I => \N__2012\
        );

    \I__247\ : Span4Mux_v
    port map (
            O => \N__2012\,
            I => \N__2009\
        );

    \I__246\ : Sp12to4
    port map (
            O => \N__2009\,
            I => \N__2006\
        );

    \I__245\ : Span12Mux_h
    port map (
            O => \N__2006\,
            I => \N__2003\
        );

    \I__244\ : Span12Mux_v
    port map (
            O => \N__2003\,
            I => \N__2000\
        );

    \I__243\ : Span12Mux_v
    port map (
            O => \N__2000\,
            I => \N__1997\
        );

    \I__242\ : Odrv12
    port map (
            O => \N__1997\,
            I => electr_config_in_c_23
        );

    \I__241\ : CascadeMux
    port map (
            O => \N__1994\,
            I => \N__1991\
        );

    \I__240\ : InMux
    port map (
            O => \N__1991\,
            I => \N__1988\
        );

    \I__239\ : LocalMux
    port map (
            O => \N__1988\,
            I => \N__1985\
        );

    \I__238\ : Sp12to4
    port map (
            O => \N__1985\,
            I => \N__1982\
        );

    \I__237\ : Span12Mux_v
    port map (
            O => \N__1982\,
            I => \N__1979\
        );

    \I__236\ : Span12Mux_v
    port map (
            O => \N__1979\,
            I => \N__1976\
        );

    \I__235\ : Odrv12
    port map (
            O => \N__1976\,
            I => electr_config_in_c_22
        );

    \I__234\ : InMux
    port map (
            O => \N__1973\,
            I => \N__1970\
        );

    \I__233\ : LocalMux
    port map (
            O => \N__1970\,
            I => \shift_regZ0Z_22\
        );

    \I__232\ : InMux
    port map (
            O => \N__1967\,
            I => \N__1964\
        );

    \I__231\ : LocalMux
    port map (
            O => \N__1964\,
            I => \N__1961\
        );

    \I__230\ : Span4Mux_v
    port map (
            O => \N__1961\,
            I => \N__1958\
        );

    \I__229\ : Sp12to4
    port map (
            O => \N__1958\,
            I => \N__1955\
        );

    \I__228\ : Span12Mux_h
    port map (
            O => \N__1955\,
            I => \N__1952\
        );

    \I__227\ : Span12Mux_v
    port map (
            O => \N__1952\,
            I => \N__1949\
        );

    \I__226\ : Span12Mux_v
    port map (
            O => \N__1949\,
            I => \N__1946\
        );

    \I__225\ : Odrv12
    port map (
            O => \N__1946\,
            I => electr_config_in_c_21
        );

    \I__224\ : InMux
    port map (
            O => \N__1943\,
            I => \N__1940\
        );

    \I__223\ : LocalMux
    port map (
            O => \N__1940\,
            I => \shift_regZ0Z_21\
        );

    \I__222\ : InMux
    port map (
            O => \N__1937\,
            I => \N__1934\
        );

    \I__221\ : LocalMux
    port map (
            O => \N__1934\,
            I => \N__1931\
        );

    \I__220\ : Span12Mux_h
    port map (
            O => \N__1931\,
            I => \N__1928\
        );

    \I__219\ : Span12Mux_v
    port map (
            O => \N__1928\,
            I => \N__1925\
        );

    \I__218\ : Span12Mux_v
    port map (
            O => \N__1925\,
            I => \N__1922\
        );

    \I__217\ : Odrv12
    port map (
            O => \N__1922\,
            I => electr_config_in_c_20
        );

    \I__216\ : InMux
    port map (
            O => \N__1919\,
            I => \N__1916\
        );

    \I__215\ : LocalMux
    port map (
            O => \N__1916\,
            I => \shift_regZ0Z_19\
        );

    \I__214\ : InMux
    port map (
            O => \N__1913\,
            I => \N__1910\
        );

    \I__213\ : LocalMux
    port map (
            O => \N__1910\,
            I => \shift_regZ0Z_20\
        );

    \I__212\ : InMux
    port map (
            O => \N__1907\,
            I => \N__1904\
        );

    \I__211\ : LocalMux
    port map (
            O => \N__1904\,
            I => \shift_regZ0Z_23\
        );

    \I__210\ : CascadeMux
    port map (
            O => \N__1901\,
            I => \N__1898\
        );

    \I__209\ : InMux
    port map (
            O => \N__1898\,
            I => \N__1895\
        );

    \I__208\ : LocalMux
    port map (
            O => \N__1895\,
            I => \N__1892\
        );

    \I__207\ : Span4Mux_h
    port map (
            O => \N__1892\,
            I => \N__1889\
        );

    \I__206\ : Sp12to4
    port map (
            O => \N__1889\,
            I => \N__1886\
        );

    \I__205\ : Span12Mux_v
    port map (
            O => \N__1886\,
            I => \N__1883\
        );

    \I__204\ : Span12Mux_v
    port map (
            O => \N__1883\,
            I => \N__1880\
        );

    \I__203\ : Odrv12
    port map (
            O => \N__1880\,
            I => electr_config_in_c_24
        );

    \I__202\ : InMux
    port map (
            O => \N__1877\,
            I => \N__1874\
        );

    \I__201\ : LocalMux
    port map (
            O => \N__1874\,
            I => \RST_N_c\
        );

    \I__200\ : IoInMux
    port map (
            O => \N__1871\,
            I => \N__1868\
        );

    \I__199\ : LocalMux
    port map (
            O => \N__1868\,
            I => \N__1865\
        );

    \I__198\ : IoSpan4Mux
    port map (
            O => \N__1865\,
            I => \N__1862\
        );

    \I__197\ : IoSpan4Mux
    port map (
            O => \N__1862\,
            I => \N__1859\
        );

    \I__196\ : IoSpan4Mux
    port map (
            O => \N__1859\,
            I => \N__1856\
        );

    \I__195\ : IoSpan4Mux
    port map (
            O => \N__1856\,
            I => \N__1853\
        );

    \I__194\ : Odrv4
    port map (
            O => \N__1853\,
            I => \RST_N_c_i\
        );

    \I__193\ : IoInMux
    port map (
            O => \N__1850\,
            I => \N__1847\
        );

    \I__192\ : LocalMux
    port map (
            O => \N__1847\,
            I => \N__1844\
        );

    \I__191\ : Span12Mux_s5_h
    port map (
            O => \N__1844\,
            I => \N__1841\
        );

    \I__190\ : Odrv12
    port map (
            O => \N__1841\,
            I => enable_config_c
        );

    \I__189\ : IoInMux
    port map (
            O => \N__1838\,
            I => \N__1835\
        );

    \I__188\ : LocalMux
    port map (
            O => \N__1835\,
            I => \N__1832\
        );

    \I__187\ : Span12Mux_s3_h
    port map (
            O => \N__1832\,
            I => \N__1829\
        );

    \I__186\ : Odrv12
    port map (
            O => \N__1829\,
            I => sr_finish_c
        );

    \I__185\ : CascadeMux
    port map (
            O => \N__1826\,
            I => \N__1823\
        );

    \I__184\ : InMux
    port map (
            O => \N__1823\,
            I => \N__1820\
        );

    \I__183\ : LocalMux
    port map (
            O => \N__1820\,
            I => \N__1817\
        );

    \I__182\ : Span4Mux_v
    port map (
            O => \N__1817\,
            I => \N__1814\
        );

    \I__181\ : Span4Mux_v
    port map (
            O => \N__1814\,
            I => \N__1811\
        );

    \I__180\ : Span4Mux_v
    port map (
            O => \N__1811\,
            I => \N__1808\
        );

    \I__179\ : Sp12to4
    port map (
            O => \N__1808\,
            I => \N__1805\
        );

    \I__178\ : Odrv12
    port map (
            O => \N__1805\,
            I => electr_config_in_c_13
        );

    \I__177\ : CascadeMux
    port map (
            O => \N__1802\,
            I => \N__1799\
        );

    \I__176\ : InMux
    port map (
            O => \N__1799\,
            I => \N__1796\
        );

    \I__175\ : LocalMux
    port map (
            O => \N__1796\,
            I => \N__1793\
        );

    \I__174\ : Span4Mux_v
    port map (
            O => \N__1793\,
            I => \N__1790\
        );

    \I__173\ : Sp12to4
    port map (
            O => \N__1790\,
            I => \N__1787\
        );

    \I__172\ : Span12Mux_h
    port map (
            O => \N__1787\,
            I => \N__1784\
        );

    \I__171\ : Span12Mux_v
    port map (
            O => \N__1784\,
            I => \N__1781\
        );

    \I__170\ : Span12Mux_v
    port map (
            O => \N__1781\,
            I => \N__1778\
        );

    \I__169\ : Odrv12
    port map (
            O => \N__1778\,
            I => electr_config_in_c_18
        );

    \I__168\ : InMux
    port map (
            O => \N__1775\,
            I => \N__1772\
        );

    \I__167\ : LocalMux
    port map (
            O => \N__1772\,
            I => \N__1769\
        );

    \I__166\ : Span4Mux_v
    port map (
            O => \N__1769\,
            I => \N__1766\
        );

    \I__165\ : Sp12to4
    port map (
            O => \N__1766\,
            I => \N__1763\
        );

    \I__164\ : Odrv12
    port map (
            O => \N__1763\,
            I => electr_config_in_c_16
        );

    \I__163\ : InMux
    port map (
            O => \N__1760\,
            I => \N__1757\
        );

    \I__162\ : LocalMux
    port map (
            O => \N__1757\,
            I => \shift_regZ0Z_13\
        );

    \I__161\ : CascadeMux
    port map (
            O => \N__1754\,
            I => \N__1751\
        );

    \I__160\ : InMux
    port map (
            O => \N__1751\,
            I => \N__1748\
        );

    \I__159\ : LocalMux
    port map (
            O => \N__1748\,
            I => \N__1745\
        );

    \I__158\ : Span4Mux_h
    port map (
            O => \N__1745\,
            I => \N__1742\
        );

    \I__157\ : Sp12to4
    port map (
            O => \N__1742\,
            I => \N__1739\
        );

    \I__156\ : Span12Mux_v
    port map (
            O => \N__1739\,
            I => \N__1736\
        );

    \I__155\ : Odrv12
    port map (
            O => \N__1736\,
            I => electr_config_in_c_14
        );

    \I__154\ : CascadeMux
    port map (
            O => \N__1733\,
            I => \N__1730\
        );

    \I__153\ : InMux
    port map (
            O => \N__1730\,
            I => \N__1727\
        );

    \I__152\ : LocalMux
    port map (
            O => \N__1727\,
            I => \N__1724\
        );

    \I__151\ : Span4Mux_h
    port map (
            O => \N__1724\,
            I => \N__1721\
        );

    \I__150\ : Sp12to4
    port map (
            O => \N__1721\,
            I => \N__1718\
        );

    \I__149\ : Span12Mux_v
    port map (
            O => \N__1718\,
            I => \N__1715\
        );

    \I__148\ : Odrv12
    port map (
            O => \N__1715\,
            I => electr_config_in_c_12
        );

    \I__147\ : InMux
    port map (
            O => \N__1712\,
            I => \N__1709\
        );

    \I__146\ : LocalMux
    port map (
            O => \N__1709\,
            I => \shift_regZ0Z_12\
        );

    \IN_MUX_bfv_14_4_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_14_4_0_\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \RST_N_ibuf_RNIBJGC_0\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__1871\,
            GLOBALBUFFEROUTPUT => \RST_N_c_i_g\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \RST_N_ibuf_RNIBJGC_LC_1_3_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1877\,
            lcout => \RST_N_c_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \enable_configZ0_LC_11_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__3795\,
            in2 => \_gnd_net_\,
            in3 => \N__4124\,
            lcout => enable_config_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3569\,
            ce => 'H',
            sr => \N__3509\
        );

    \sr_finishZ0_LC_11_5_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__3796\,
            in2 => \_gnd_net_\,
            in3 => \N__4125\,
            lcout => sr_finish_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3569\,
            ce => 'H',
            sr => \N__3509\
        );

    \shift_reg_13_LC_11_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__1712\,
            in1 => \N__3800\,
            in2 => \N__1826\,
            in3 => \N__4122\,
            lcout => \shift_regZ0Z_13\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_18_LC_11_6_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4119\,
            in1 => \N__2108\,
            in2 => \N__1802\,
            in3 => \N__3807\,
            lcout => \shift_regZ0Z_18\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_16_LC_11_6_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000110010100000"
        )
    port map (
            in0 => \N__2051\,
            in1 => \N__1775\,
            in2 => \N__3890\,
            in3 => \N__4123\,
            lcout => \shift_regZ0Z_16\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_14_LC_11_6_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4116\,
            in1 => \N__1760\,
            in2 => \N__1754\,
            in3 => \N__3804\,
            lcout => \shift_regZ0Z_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_12_LC_11_6_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__2081\,
            in1 => \N__3799\,
            in2 => \N__1733\,
            in3 => \N__4121\,
            lcout => \shift_regZ0Z_12\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_17_LC_11_6_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4118\,
            in1 => \N__2132\,
            in2 => \N__2126\,
            in3 => \N__3806\,
            lcout => \shift_regZ0Z_17\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_11_LC_11_6_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__2534\,
            in1 => \N__3798\,
            in2 => \N__2102\,
            in3 => \N__4120\,
            lcout => \shift_regZ0Z_11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_15_LC_11_6_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000010001000"
        )
    port map (
            in0 => \N__4117\,
            in1 => \N__2075\,
            in2 => \N__2060\,
            in3 => \N__3805\,
            lcout => \shift_regZ0Z_15\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3567\,
            ce => 'H',
            sr => \N__3507\
        );

    \shift_reg_19_LC_11_7_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4169\,
            in1 => \N__2045\,
            in2 => \N__3912\,
            in3 => \N__2024\,
            lcout => \shift_regZ0Z_19\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3565\,
            ce => 'H',
            sr => \N__3505\
        );

    \shift_reg_23_LC_11_7_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4172\,
            in1 => \N__2018\,
            in2 => \N__3915\,
            in3 => \N__1973\,
            lcout => \shift_regZ0Z_23\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3565\,
            ce => 'H',
            sr => \N__3505\
        );

    \shift_reg_22_LC_11_7_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__1943\,
            in1 => \N__3871\,
            in2 => \N__1994\,
            in3 => \N__4173\,
            lcout => \shift_regZ0Z_22\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3565\,
            ce => 'H',
            sr => \N__3505\
        );

    \shift_reg_21_LC_11_7_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4171\,
            in1 => \N__1967\,
            in2 => \N__3914\,
            in3 => \N__1913\,
            lcout => \shift_regZ0Z_21\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3565\,
            ce => 'H',
            sr => \N__3505\
        );

    \shift_reg_20_LC_11_7_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4170\,
            in1 => \N__1937\,
            in2 => \N__3913\,
            in3 => \N__1919\,
            lcout => \shift_regZ0Z_20\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3565\,
            ce => 'H',
            sr => \N__3505\
        );

    \shift_reg_24_LC_11_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000010001000"
        )
    port map (
            in0 => \N__3857\,
            in1 => \N__1907\,
            in2 => \N__1901\,
            in3 => \N__4174\,
            lcout => \shift_regZ0Z_24\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3564\,
            ce => 'H',
            sr => \N__3504\
        );

    \shift_reg_25_LC_11_8_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000010001000"
        )
    port map (
            in0 => \N__3858\,
            in1 => \N__2294\,
            in2 => \N__2288\,
            in3 => \N__4175\,
            lcout => \shift_regZ0Z_25\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3564\,
            ce => 'H',
            sr => \N__3504\
        );

    \shift_reg_52_LC_12_2_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000010001000"
        )
    port map (
            in0 => \N__3812\,
            in1 => \N__2225\,
            in2 => \N__2264\,
            in3 => \N__4205\,
            lcout => \shift_regZ0Z_52\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3576\,
            ce => 'H',
            sr => \N__3516\
        );

    \shift_reg_51_LC_12_2_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000010001000"
        )
    port map (
            in0 => \N__3811\,
            in1 => \N__2591\,
            in2 => \N__2246\,
            in3 => \N__4204\,
            lcout => \shift_regZ0Z_51\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3576\,
            ce => 'H',
            sr => \N__3516\
        );

    \shift_reg_54_LC_12_2_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4203\,
            in1 => \N__2180\,
            in2 => \N__2219\,
            in3 => \N__3814\,
            lcout => \shift_regZ0Z_54\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3576\,
            ce => 'H',
            sr => \N__3516\
        );

    \shift_reg_53_LC_12_2_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4202\,
            in1 => \N__2204\,
            in2 => \N__2198\,
            in3 => \N__3813\,
            lcout => \shift_regZ0Z_53\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3576\,
            ce => 'H',
            sr => \N__3516\
        );

    \serial_outZ0_LC_12_4_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2174\,
            in2 => \_gnd_net_\,
            in3 => \N__2795\,
            lcout => serial_out_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3573\,
            ce => 'H',
            sr => \N__3513\
        );

    \current_state_1_LC_12_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__3791\,
            in2 => \_gnd_net_\,
            in3 => \N__4187\,
            lcout => \current_stateZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3571\,
            ce => 'H',
            sr => \N__3511\
        );

    \current_state_0_LC_12_5_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101010000000100"
        )
    port map (
            in0 => \N__4186\,
            in1 => \N__2147\,
            in2 => \N__3889\,
            in3 => \N__2801\,
            lcout => \current_stateZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3571\,
            ce => 'H',
            sr => \N__3511\
        );

    \shift_reg_10_LC_12_6_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__2567\,
            in1 => \N__3797\,
            in2 => \N__2555\,
            in3 => \N__4126\,
            lcout => \shift_regZ0Z_10\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3570\,
            ce => 'H',
            sr => \N__3510\
        );

    \shift_reg_31_LC_12_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4163\,
            in1 => \N__2453\,
            in2 => \N__2528\,
            in3 => \N__3867\,
            lcout => \shift_regZ0Z_31\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_26_LC_12_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0010110000100000"
        )
    port map (
            in0 => \N__2504\,
            in1 => \N__4165\,
            in2 => \N__3910\,
            in3 => \N__2498\,
            lcout => \shift_regZ0Z_26\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_30_LC_12_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4162\,
            in1 => \N__2399\,
            in2 => \N__2477\,
            in3 => \N__3866\,
            lcout => \shift_regZ0Z_30\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_33_LC_12_8_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__2336\,
            in1 => \N__3870\,
            in2 => \N__2447\,
            in3 => \N__4168\,
            lcout => \shift_regZ0Z_33\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_29_LC_12_8_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4161\,
            in1 => \N__2300\,
            in2 => \N__2423\,
            in3 => \N__3865\,
            lcout => \shift_regZ0Z_29\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_27_LC_12_8_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000110010100000"
        )
    port map (
            in0 => \N__2393\,
            in1 => \N__2387\,
            in2 => \N__3911\,
            in3 => \N__4166\,
            lcout => \shift_regZ0Z_27\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_32_LC_12_8_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4164\,
            in1 => \N__2366\,
            in2 => \N__2360\,
            in3 => \N__3868\,
            lcout => \shift_regZ0Z_32\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_28_LC_12_8_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__2330\,
            in1 => \N__3869\,
            in2 => \N__2324\,
            in3 => \N__4167\,
            lcout => \shift_regZ0Z_28\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3566\,
            ce => 'H',
            sr => \N__3506\
        );

    \shift_reg_7_LC_13_2_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000110010100000"
        )
    port map (
            in0 => \N__2645\,
            in1 => \N__2735\,
            in2 => \N__3920\,
            in3 => \N__4201\,
            lcout => \shift_regZ0Z_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3579\,
            ce => 'H',
            sr => \N__3519\
        );

    \shift_reg_5_LC_13_2_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4198\,
            in1 => \N__2723\,
            in2 => \N__3892\,
            in3 => \N__2678\,
            lcout => \shift_regZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3579\,
            ce => 'H',
            sr => \N__3519\
        );

    \shift_reg_4_LC_13_2_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3407\,
            in1 => \N__3820\,
            in2 => \N__2702\,
            in3 => \N__4200\,
            lcout => \shift_regZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3579\,
            ce => 'H',
            sr => \N__3519\
        );

    \shift_reg_6_LC_13_2_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4199\,
            in1 => \N__2672\,
            in2 => \N__3893\,
            in3 => \N__2651\,
            lcout => \shift_regZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3579\,
            ce => 'H',
            sr => \N__3519\
        );

    \shift_reg_8_LC_13_3_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__2639\,
            in1 => \N__3816\,
            in2 => \N__2633\,
            in3 => \N__4190\,
            lcout => \shift_regZ0Z_8\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3577\,
            ce => 'H',
            sr => \N__3517\
        );

    \shift_reg_50_LC_13_3_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3188\,
            in1 => \N__3815\,
            in2 => \N__2612\,
            in3 => \N__4189\,
            lcout => \shift_regZ0Z_50\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3577\,
            ce => 'H',
            sr => \N__3517\
        );

    \shift_reg_9_LC_13_3_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4188\,
            in1 => \N__2585\,
            in2 => \N__3891\,
            in3 => \N__2573\,
            lcout => \shift_regZ0Z_9\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3577\,
            ce => 'H',
            sr => \N__3517\
        );

    \counter_sr_RNIMNUD1_0_LC_13_4_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0001010101010101"
        )
    port map (
            in0 => \N__2927\,
            in1 => \N__3172\,
            in2 => \N__2849\,
            in3 => \N__3084\,
            lcout => OPEN,
            ltout => \N_115_mux_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \current_state_RNIE7OV2_0_LC_13_4_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000010000000000"
        )
    port map (
            in0 => \N__4029\,
            in1 => \N__3808\,
            in2 => \N__2822\,
            in3 => \N__2816\,
            lcout => counter_sre_0,
            ltout => \counter_sre_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \counter_sr_3_LC_13_4_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010000110100010"
        )
    port map (
            in0 => \N__2928\,
            in1 => \N__3119\,
            in2 => \N__2819\,
            in3 => \N__2909\,
            lcout => \counter_srZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3574\,
            ce => 'H',
            sr => \N__3514\
        );

    \counter_sr_4_LC_13_4_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101110101110"
        )
    port map (
            in0 => \N__3145\,
            in1 => \N__2900\,
            in2 => \N__3125\,
            in3 => \N__2882\,
            lcout => \counter_srZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3574\,
            ce => 'H',
            sr => \N__3514\
        );

    \counter_sr_RNI1IVM_5_LC_13_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2866\,
            in2 => \_gnd_net_\,
            in3 => \N__2898\,
            lcout => counter_sre_0_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \current_state_RNINTPQ_0_LC_13_5_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101011111111"
        )
    port map (
            in0 => \N__4030\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__3809\,
            lcout => next_state32_i,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \current_state_RNO_1_0_LC_13_5_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2843\,
            in2 => \_gnd_net_\,
            in3 => \N__3171\,
            lcout => OPEN,
            ltout => \un22_next_state_1_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \current_state_RNO_0_0_LC_13_5_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000001000000"
        )
    port map (
            in0 => \N__2930\,
            in1 => \N__2815\,
            in2 => \N__2804\,
            in3 => \N__3085\,
            lcout => \N_118_mux\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \current_state_RNINTPQ_0_0_LC_13_5_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010100000000"
        )
    port map (
            in0 => \N__4031\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__3810\,
            lcout => next_state32,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \shift_reg_36_LC_13_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0010001011000000"
        )
    port map (
            in0 => \N__2741\,
            in1 => \N__4193\,
            in2 => \N__2789\,
            in3 => \N__3888\,
            lcout => \shift_regZ0Z_36\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3568\,
            ce => 'H',
            sr => \N__3508\
        );

    \shift_reg_35_LC_13_8_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4191\,
            in1 => \N__2942\,
            in2 => \N__2762\,
            in3 => \N__3887\,
            lcout => \shift_regZ0Z_35\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3568\,
            ce => 'H',
            sr => \N__3508\
        );

    \shift_reg_34_LC_13_8_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0010110000100000"
        )
    port map (
            in0 => \N__2969\,
            in1 => \N__4192\,
            in2 => \N__3916\,
            in3 => \N__2963\,
            lcout => \shift_regZ0Z_34\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3568\,
            ce => 'H',
            sr => \N__3508\
        );

    \counter_sr_cry_c_0_LC_14_4_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__3083\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_14_4_0_\,
            carryout => counter_sr_cry_0,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \counter_sr_cry_0_THRU_LUT4_0_LC_14_4_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__3170\,
            in2 => \_gnd_net_\,
            in3 => \N__2936\,
            lcout => \counter_sr_cry_0_THRU_CO\,
            ltout => OPEN,
            carryin => counter_sr_cry_0,
            carryout => counter_sr_cry_1,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \counter_sr_cry_1_THRU_LUT4_0_LC_14_4_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2847\,
            in2 => \_gnd_net_\,
            in3 => \N__2933\,
            lcout => \counter_sr_cry_1_THRU_CO\,
            ltout => OPEN,
            carryin => counter_sr_cry_1,
            carryout => counter_sr_cry_2,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \counter_sr_cry_2_THRU_LUT4_0_LC_14_4_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2929\,
            in2 => \_gnd_net_\,
            in3 => \N__2903\,
            lcout => \counter_sr_cry_2_THRU_CO\,
            ltout => OPEN,
            carryin => counter_sr_cry_2,
            carryout => counter_sr_cry_3,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \counter_sr_cry_3_THRU_LUT4_0_LC_14_4_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2899\,
            in2 => \_gnd_net_\,
            in3 => \N__2876\,
            lcout => \counter_sr_cry_3_THRU_CO\,
            ltout => OPEN,
            carryin => counter_sr_cry_3,
            carryout => counter_sr_cry_4,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \counter_sr_5_LC_14_4_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101110111010"
        )
    port map (
            in0 => \N__3146\,
            in1 => \N__3111\,
            in2 => \N__2870\,
            in3 => \N__2873\,
            lcout => \counter_srZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3578\,
            ce => 'H',
            sr => \N__3518\
        );

    \counter_sr_2_LC_14_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101100000100"
        )
    port map (
            in0 => \N__3149\,
            in1 => \N__2855\,
            in2 => \N__3124\,
            in3 => \N__2848\,
            lcout => \counter_srZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \shift_reg_48_LC_14_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4182\,
            in1 => \N__3041\,
            in2 => \N__3251\,
            in3 => \N__3855\,
            lcout => \shift_regZ0Z_48\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \shift_reg_45_LC_14_5_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3263\,
            in1 => \N__3850\,
            in2 => \N__3233\,
            in3 => \N__4184\,
            lcout => \shift_regZ0Z_45\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \shift_reg_49_LC_14_5_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4183\,
            in1 => \N__3212\,
            in2 => \N__3206\,
            in3 => \N__3856\,
            lcout => \shift_regZ0Z_49\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \counter_sr_1_LC_14_5_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101100000100"
        )
    port map (
            in0 => \N__3148\,
            in1 => \N__3179\,
            in2 => \N__3123\,
            in3 => \N__3173\,
            lcout => \counter_srZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \counter_sr_0_LC_14_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1100000011010010"
        )
    port map (
            in0 => \N__3398\,
            in1 => \N__3147\,
            in2 => \N__3089\,
            in3 => \N__3112\,
            lcout => \counter_srZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \shift_reg_47_LC_14_5_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3014\,
            in1 => \N__3851\,
            in2 => \N__3062\,
            in3 => \N__4185\,
            lcout => \shift_regZ0Z_47\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \shift_reg_46_LC_14_5_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000010001000"
        )
    port map (
            in0 => \N__4181\,
            in1 => \N__3035\,
            in2 => \N__3023\,
            in3 => \N__3854\,
            lcout => \shift_regZ0Z_46\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3575\,
            ce => 'H',
            sr => \N__3515\
        );

    \shift_reg_2_LC_15_2_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4194\,
            in1 => \N__3008\,
            in2 => \N__3917\,
            in3 => \N__3440\,
            lcout => \shift_regZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3581\,
            ce => 'H',
            sr => \N__3521\
        );

    \shift_reg_0_LC_15_2_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0010001000000000"
        )
    port map (
            in0 => \N__2990\,
            in1 => \N__3894\,
            in2 => \_gnd_net_\,
            in3 => \N__4196\,
            lcout => \shift_regZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3581\,
            ce => 'H',
            sr => \N__3521\
        );

    \shift_reg_1_LC_15_2_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3461\,
            in1 => \N__3895\,
            in2 => \N__3455\,
            in3 => \N__4197\,
            lcout => \shift_regZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3581\,
            ce => 'H',
            sr => \N__3521\
        );

    \shift_reg_3_LC_15_2_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101100000001000"
        )
    port map (
            in0 => \N__4195\,
            in1 => \N__3434\,
            in2 => \N__3918\,
            in3 => \N__3413\,
            lcout => \shift_regZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3581\,
            ce => 'H',
            sr => \N__3521\
        );

    \CONSTANT_ONE_LUT4_LC_15_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \CONSTANT_ONE_NET\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \shift_reg_38_LC_15_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4206\,
            in1 => \N__3338\,
            in2 => \N__3392\,
            in3 => \N__3919\,
            lcout => \shift_regZ0Z_38\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3572\,
            ce => 'H',
            sr => \N__3512\
        );

    \shift_reg_37_LC_15_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3371\,
            in1 => \N__3902\,
            in2 => \N__3362\,
            in3 => \N__4207\,
            lcout => \shift_regZ0Z_37\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3572\,
            ce => 'H',
            sr => \N__3512\
        );

    \shift_reg_39_LC_15_8_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3332\,
            in1 => \N__3903\,
            in2 => \N__3326\,
            in3 => \N__4208\,
            lcout => \shift_regZ0Z_39\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3572\,
            ce => 'H',
            sr => \N__3512\
        );

    \shift_reg_41_LC_16_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__4214\,
            in1 => \N__3848\,
            in2 => \N__3302\,
            in3 => \N__4179\,
            lcout => \shift_regZ0Z_41\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3580\,
            ce => 'H',
            sr => \N__3520\
        );

    \shift_reg_44_LC_16_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000010001000"
        )
    port map (
            in0 => \N__4177\,
            in1 => \N__3281\,
            in2 => \N__4259\,
            in3 => \N__3853\,
            lcout => \shift_regZ0Z_44\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3580\,
            ce => 'H',
            sr => \N__3520\
        );

    \shift_reg_43_LC_16_5_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__3587\,
            in1 => \N__3849\,
            in2 => \N__4277\,
            in3 => \N__4180\,
            lcout => \shift_regZ0Z_43\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3580\,
            ce => 'H',
            sr => \N__3520\
        );

    \shift_reg_40_LC_16_5_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000010001000"
        )
    port map (
            in0 => \N__4250\,
            in1 => \N__3847\,
            in2 => \N__4241\,
            in3 => \N__4178\,
            lcout => \shift_regZ0Z_40\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3580\,
            ce => 'H',
            sr => \N__3520\
        );

    \shift_reg_42_LC_16_5_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100010010100000"
        )
    port map (
            in0 => \N__4176\,
            in1 => \N__3947\,
            in2 => \N__3941\,
            in3 => \N__3852\,
            lcout => \shift_regZ0Z_42\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__3580\,
            ce => 'H',
            sr => \N__3520\
        );
end \INTERFACE\;
