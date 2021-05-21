%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'GK_calib';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('GK_calib.log');
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'e_A'};
M_.exo_names_tex(1) = {'e\_A'};
M_.exo_names_long(1) = {'e_A'};
M_.exo_names(2) = {'e_g'};
M_.exo_names_tex(2) = {'e\_g'};
M_.exo_names_long(2) = {'e_g'};
M_.exo_names(3) = {'e_psi'};
M_.exo_names_tex(3) = {'e\_psi'};
M_.exo_names_long(3) = {'e_psi'};
M_.endo_names = cell(50,1);
M_.endo_names_tex = cell(50,1);
M_.endo_names_long = cell(50,1);
M_.endo_names(1) = {'Y'};
M_.endo_names_tex(1) = {'Y'};
M_.endo_names_long(1) = {'Y'};
M_.endo_names(2) = {'K'};
M_.endo_names_tex(2) = {'K'};
M_.endo_names_long(2) = {'K'};
M_.endo_names(3) = {'Lab'};
M_.endo_names_tex(3) = {'Lab'};
M_.endo_names_long(3) = {'Lab'};
M_.endo_names(4) = {'I'};
M_.endo_names_tex(4) = {'I'};
M_.endo_names_long(4) = {'I'};
M_.endo_names(5) = {'C'};
M_.endo_names_tex(5) = {'C'};
M_.endo_names_long(5) = {'C'};
M_.endo_names(6) = {'R'};
M_.endo_names_tex(6) = {'R'};
M_.endo_names_long(6) = {'R'};
M_.endo_names(7) = {'Rk'};
M_.endo_names_tex(7) = {'Rk'};
M_.endo_names_long(7) = {'Rk'};
M_.endo_names(8) = {'W'};
M_.endo_names_tex(8) = {'W'};
M_.endo_names_long(8) = {'W'};
M_.endo_names(9) = {'rK'};
M_.endo_names_tex(9) = {'rK'};
M_.endo_names_long(9) = {'rK'};
M_.endo_names(10) = {'N'};
M_.endo_names_tex(10) = {'N'};
M_.endo_names_long(10) = {'N'};
M_.endo_names(11) = {'Uc'};
M_.endo_names_tex(11) = {'Uc'};
M_.endo_names_long(11) = {'Uc'};
M_.endo_names(12) = {'Q'};
M_.endo_names_tex(12) = {'Q'};
M_.endo_names_long(12) = {'Q'};
M_.endo_names(13) = {'Le'};
M_.endo_names_tex(13) = {'Le'};
M_.endo_names_long(13) = {'Le'};
M_.endo_names(14) = {'D'};
M_.endo_names_tex(14) = {'D'};
M_.endo_names_long(14) = {'D'};
M_.endo_names(15) = {'phi'};
M_.endo_names_tex(15) = {'phi'};
M_.endo_names_long(15) = {'phi'};
M_.endo_names(16) = {'S'};
M_.endo_names_tex(16) = {'S'};
M_.endo_names_long(16) = {'S'};
M_.endo_names(17) = {'Lambda'};
M_.endo_names_tex(17) = {'Lambda'};
M_.endo_names_long(17) = {'Lambda'};
M_.endo_names(18) = {'Omega'};
M_.endo_names_tex(18) = {'Omega'};
M_.endo_names_long(18) = {'Omega'};
M_.endo_names(19) = {'T'};
M_.endo_names_tex(19) = {'T'};
M_.endo_names_long(19) = {'T'};
M_.endo_names(20) = {'G'};
M_.endo_names_tex(20) = {'G'};
M_.endo_names_long(20) = {'G'};
M_.endo_names(21) = {'spread'};
M_.endo_names_tex(21) = {'spread'};
M_.endo_names_long(21) = {'spread'};
M_.endo_names(22) = {'GDP'};
M_.endo_names_tex(22) = {'GDP'};
M_.endo_names_long(22) = {'GDP'};
M_.endo_names(23) = {'Nw2Ass'};
M_.endo_names_tex(23) = {'Nw2Ass'};
M_.endo_names_long(23) = {'Nw2Ass'};
M_.endo_names(24) = {'X'};
M_.endo_names_tex(24) = {'X'};
M_.endo_names_long(24) = {'X'};
M_.endo_names(25) = {'Sinv'};
M_.endo_names_tex(25) = {'Sinv'};
M_.endo_names_long(25) = {'Sinv'};
M_.endo_names(26) = {'Sdash'};
M_.endo_names_tex(26) = {'Sdash'};
M_.endo_names_long(26) = {'Sdash'};
M_.endo_names(27) = {'spreadA'};
M_.endo_names_tex(27) = {'spreadA'};
M_.endo_names_long(27) = {'spreadA'};
M_.endo_names(28) = {'theta'};
M_.endo_names_tex(28) = {'theta'};
M_.endo_names_long(28) = {'theta'};
M_.endo_names(29) = {'A'};
M_.endo_names_tex(29) = {'A'};
M_.endo_names_long(29) = {'A'};
M_.endo_names(30) = {'g'};
M_.endo_names_tex(30) = {'g'};
M_.endo_names_long(30) = {'g'};
M_.endo_names(31) = {'psi'};
M_.endo_names_tex(31) = {'psi'};
M_.endo_names_long(31) = {'psi'};
M_.endo_names(32) = {'YY'};
M_.endo_names_tex(32) = {'YY'};
M_.endo_names_long(32) = {'YY'};
M_.endo_names(33) = {'KK'};
M_.endo_names_tex(33) = {'KK'};
M_.endo_names_long(33) = {'KK'};
M_.endo_names(34) = {'CC'};
M_.endo_names_tex(34) = {'CC'};
M_.endo_names_long(34) = {'CC'};
M_.endo_names(35) = {'LabLab'};
M_.endo_names_tex(35) = {'LabLab'};
M_.endo_names_long(35) = {'LabLab'};
M_.endo_names(36) = {'II'};
M_.endo_names_tex(36) = {'II'};
M_.endo_names_long(36) = {'II'};
M_.endo_names(37) = {'RR'};
M_.endo_names_tex(37) = {'RR'};
M_.endo_names_long(37) = {'RR'};
M_.endo_names(38) = {'RkRk'};
M_.endo_names_tex(38) = {'RkRk'};
M_.endo_names_long(38) = {'RkRk'};
M_.endo_names(39) = {'WW'};
M_.endo_names_tex(39) = {'WW'};
M_.endo_names_long(39) = {'WW'};
M_.endo_names(40) = {'rKrK'};
M_.endo_names_tex(40) = {'rKrK'};
M_.endo_names_long(40) = {'rKrK'};
M_.endo_names(41) = {'NN'};
M_.endo_names_tex(41) = {'NN'};
M_.endo_names_long(41) = {'NN'};
M_.endo_names(42) = {'UcUc'};
M_.endo_names_tex(42) = {'UcUc'};
M_.endo_names_long(42) = {'UcUc'};
M_.endo_names(43) = {'QQ'};
M_.endo_names_tex(43) = {'QQ'};
M_.endo_names_long(43) = {'QQ'};
M_.endo_names(44) = {'DD'};
M_.endo_names_tex(44) = {'DD'};
M_.endo_names_long(44) = {'DD'};
M_.endo_names(45) = {'phiphi'};
M_.endo_names_tex(45) = {'phiphi'};
M_.endo_names_long(45) = {'phiphi'};
M_.endo_names(46) = {'TT'};
M_.endo_names_tex(46) = {'TT'};
M_.endo_names_long(46) = {'TT'};
M_.endo_names(47) = {'GG'};
M_.endo_names_tex(47) = {'GG'};
M_.endo_names_long(47) = {'GG'};
M_.endo_names(48) = {'GDP1'};
M_.endo_names_tex(48) = {'GDP1'};
M_.endo_names_long(48) = {'GDP1'};
M_.endo_names(49) = {'spreadspread'};
M_.endo_names_tex(49) = {'spreadspread'};
M_.endo_names_long(49) = {'spreadspread'};
M_.endo_names(50) = {'Loansloans'};
M_.endo_names_tex(50) = {'Loansloans'};
M_.endo_names_long(50) = {'Loansloans'};
M_.endo_partitions = struct();
M_.param_names = cell(14,1);
M_.param_names_tex = cell(14,1);
M_.param_names_long = cell(14,1);
M_.param_names(1) = {'alphha'};
M_.param_names_tex(1) = {'alphha'};
M_.param_names_long(1) = {'alphha'};
M_.param_names(2) = {'betta'};
M_.param_names_tex(2) = {'betta'};
M_.param_names_long(2) = {'betta'};
M_.param_names(3) = {'gammma'};
M_.param_names_tex(3) = {'gammma'};
M_.param_names_long(3) = {'gammma'};
M_.param_names(4) = {'chil'};
M_.param_names_tex(4) = {'chil'};
M_.param_names_long(4) = {'chil'};
M_.param_names(5) = {'epsl'};
M_.param_names_tex(5) = {'epsl'};
M_.param_names_long(5) = {'epsl'};
M_.param_names(6) = {'delta'};
M_.param_names_tex(6) = {'delta'};
M_.param_names_long(6) = {'delta'};
M_.param_names(7) = {'phi_mom'};
M_.param_names_tex(7) = {'phi\_mom'};
M_.param_names_long(7) = {'phi_mom'};
M_.param_names(8) = {'sigmab'};
M_.param_names_tex(8) = {'sigmab'};
M_.param_names_long(8) = {'sigmab'};
M_.param_names(9) = {'ksi'};
M_.param_names_tex(9) = {'ksi'};
M_.param_names_long(9) = {'ksi'};
M_.param_names(10) = {'phiX'};
M_.param_names_tex(10) = {'phiX'};
M_.param_names_long(10) = {'phiX'};
M_.param_names(11) = {'G_over_Y'};
M_.param_names_tex(11) = {'G\_over\_Y'};
M_.param_names_long(11) = {'G_over_Y'};
M_.param_names(12) = {'rhoA'};
M_.param_names_tex(12) = {'rhoA'};
M_.param_names_long(12) = {'rhoA'};
M_.param_names(13) = {'rhopsi'};
M_.param_names_tex(13) = {'rhopsi'};
M_.param_names_long(13) = {'rhopsi'};
M_.param_names(14) = {'rhog'};
M_.param_names_tex(14) = {'rhog'};
M_.param_names_long(14) = {'rhog'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 50;
M_.param_nbr = 14;
M_.orig_endo_nbr = 50;
M_.aux_vars = [];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 50;
M_.eq_nbr = 50;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 10 0;
 1 11 0;
 0 12 0;
 2 13 0;
 0 14 0;
 0 15 60;
 0 16 61;
 0 17 0;
 0 18 0;
 0 19 0;
 3 20 62;
 4 21 63;
 0 22 0;
 5 23 0;
 0 24 0;
 6 25 0;
 0 26 64;
 0 27 65;
 0 28 0;
 0 29 0;
 0 30 66;
 0 31 0;
 0 32 0;
 0 33 67;
 0 34 0;
 0 35 68;
 0 36 0;
 0 37 0;
 7 38 0;
 8 39 0;
 9 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 69;
 0 47 70;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 0;]';
M_.nstatic = 32;
M_.nfwrd   = 9;
M_.npred   = 7;
M_.nboth   = 2;
M_.nsfwrd   = 11;
M_.nspred   = 9;
M_.ndynamic   = 18;
M_.dynamic_tmp_nbr = [6; 1; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'K' ;
  2 , 'name' , 'X' ;
  3 , 'name' , 'Sinv' ;
  4 , 'name' , 'Sdash' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'Y' ;
  8 , 'name' , 'Uc' ;
  9 , 'name' , 'Lambda' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , 'W' ;
  13 , 'name' , 'rK' ;
  14 , 'name' , 'Omega' ;
  15 , 'name' , '15' ;
  16 , 'name' , '16' ;
  17 , 'name' , 'phi' ;
  18 , 'name' , 'N' ;
  19 , 'name' , 'Rk' ;
  20 , 'name' , '20' ;
  21 , 'name' , 'G' ;
  22 , 'name' , '22' ;
  23 , 'name' , 'spreadA' ;
  24 , 'name' , 'spread' ;
  25 , 'name' , '25' ;
  26 , 'name' , '26' ;
  27 , 'name' , '27' ;
  28 , 'name' , 'theta' ;
  29 , 'name' , 'GDP' ;
  30 , 'name' , 'Nw2Ass' ;
  31 , 'name' , 'Le' ;
  32 , 'name' , 'YY' ;
  33 , 'name' , 'GDP1' ;
  34 , 'name' , 'Loansloans' ;
  35 , 'name' , 'KK' ;
  36 , 'name' , 'CC' ;
  37 , 'name' , 'LabLab' ;
  38 , 'name' , 'II' ;
  39 , 'name' , 'RR' ;
  40 , 'name' , 'RkRk' ;
  41 , 'name' , 'WW' ;
  42 , 'name' , 'rKrK' ;
  43 , 'name' , 'NN' ;
  44 , 'name' , 'UcUc' ;
  45 , 'name' , 'QQ' ;
  46 , 'name' , 'DD' ;
  47 , 'name' , 'phiphi' ;
  48 , 'name' , 'TT' ;
  49 , 'name' , 'GG' ;
  50 , 'name' , 'spreadspread' ;
};
M_.mapping.Y.eqidx = [7 11 12 13 20 22 32 ];
M_.mapping.K.eqidx = [1 5 7 13 35 ];
M_.mapping.Lab.eqidx = [7 11 12 37 ];
M_.mapping.I.eqidx = [1 2 20 29 38 ];
M_.mapping.C.eqidx = [8 20 29 36 ];
M_.mapping.R.eqidx = [10 17 18 23 24 39 ];
M_.mapping.Rk.eqidx = [18 19 23 24 40 ];
M_.mapping.W.eqidx = [12 41 ];
M_.mapping.rK.eqidx = [13 19 42 ];
M_.mapping.N.eqidx = [15 16 18 30 43 ];
M_.mapping.Uc.eqidx = [8 9 10 11 44 ];
M_.mapping.Q.eqidx = [6 15 16 18 19 31 45 ];
M_.mapping.Le.eqidx = [30 31 34 ];
M_.mapping.D.eqidx = [16 18 46 ];
M_.mapping.phi.eqidx = [14 15 17 47 ];
M_.mapping.S.eqidx = [5 15 16 18 31 ];
M_.mapping.Lambda.eqidx = [6 9 17 ];
M_.mapping.Omega.eqidx = [14 17 ];
M_.mapping.T.eqidx = [21 48 ];
M_.mapping.G.eqidx = [20 21 22 49 ];
M_.mapping.spread.eqidx = [17 24 ];
M_.mapping.GDP.eqidx = [29 33 ];
M_.mapping.Nw2Ass.eqidx = [30 ];
M_.mapping.X.eqidx = [2 3 4 6 ];
M_.mapping.Sinv.eqidx = [1 3 6 ];
M_.mapping.Sdash.eqidx = [4 6 ];
M_.mapping.spreadA.eqidx = [23 ];
M_.mapping.theta.eqidx = [14 17 28 ];
M_.mapping.A.eqidx = [7 26 ];
M_.mapping.g.eqidx = [22 27 ];
M_.mapping.psi.eqidx = [5 19 25 ];
M_.mapping.YY.eqidx = [32 ];
M_.mapping.KK.eqidx = [35 ];
M_.mapping.CC.eqidx = [36 ];
M_.mapping.LabLab.eqidx = [37 ];
M_.mapping.II.eqidx = [38 ];
M_.mapping.RR.eqidx = [39 50 ];
M_.mapping.RkRk.eqidx = [40 50 ];
M_.mapping.WW.eqidx = [41 ];
M_.mapping.rKrK.eqidx = [42 ];
M_.mapping.NN.eqidx = [43 ];
M_.mapping.UcUc.eqidx = [44 ];
M_.mapping.QQ.eqidx = [45 ];
M_.mapping.DD.eqidx = [46 ];
M_.mapping.phiphi.eqidx = [47 ];
M_.mapping.TT.eqidx = [48 ];
M_.mapping.GG.eqidx = [49 ];
M_.mapping.GDP1.eqidx = [33 ];
M_.mapping.spreadspread.eqidx = [50 ];
M_.mapping.Loansloans.eqidx = [34 ];
M_.mapping.e_A.eqidx = [26 ];
M_.mapping.e_g.eqidx = [27 ];
M_.mapping.e_psi.eqidx = [25 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [2 4 11 12 14 16 29 30 31 ];
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(50, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(14, 1);
M_.endo_trends = struct('deflator', cell(50, 1), 'log_deflator', cell(50, 1), 'growth_factor', cell(50, 1), 'log_growth_factor', cell(50, 1));
M_.NNZDerivatives = [143; -1; -1; ];
M_.static_tmp_nbr = [6; 1; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.33;
alphha = M_.params(1);
M_.params(2) = 0.99;
betta = M_.params(2);
M_.params(3) = 0.50;
gammma = M_.params(3);
M_.params(6) = 0.025;
delta = M_.params(6);
M_.params(4) = 5.584;
chil = M_.params(4);
M_.params(5) = 0.33;
epsl = M_.params(5);
M_.params(10) = 1.5;
phiX = M_.params(10);
M_.params(11) = 0.2;
G_over_Y = M_.params(11);
M_.params(7) = 4.5;
phi_mom = M_.params(7);
M_.params(9) = 0.003;
ksi = M_.params(9);
M_.params(8) = 0.972;
sigmab = M_.params(8);
M_.params(12) = 0.95;
rhoA = M_.params(12);
M_.params(13) = 0.95;
rhopsi = M_.params(13);
M_.params(14) = 0.95;
rhog = M_.params(14);
steady;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
oo_.dr.eigval = check(M_,options_,oo_);
steady;
options_.nograph=1;
options_.irf = 40;
options_.order = 1;
options_.periods = 10000;
var_list_ = {'YY';'KK';'CC';'LabLab';'II';'RR';'RkRk';'WW';'rKrK';'NN';'UcUc';'QQ';'DD';'phiphi';'TT';'GG';'GDP1';'spreadspread';'Loansloans'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('GK_calib_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('GK_calib_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('GK_calib_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('GK_calib_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('GK_calib_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('GK_calib_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('GK_calib_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
