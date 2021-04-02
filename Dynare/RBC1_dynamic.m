function [residual, g1, g2, g3] = RBC1_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(19, 1);
T41 = y(10)^params(5);
T42 = y(14)*T41;
T45 = y(2)^(1-params(5));
lhs =y(4);
rhs =log(y(8))-params(13)*y(10)^(1+params(14))/(1+params(14));
residual(1)= lhs-rhs;
lhs =y(5);
rhs =1/y(8);
residual(2)= lhs-rhs;
lhs =y(6);
rhs =(-params(13))*y(10)^params(14);
residual(3)= lhs-rhs;
lhs =y(5);
rhs =params(7)*y(7)*y(23);
residual(4)= lhs-rhs;
lhs =(-y(6))/y(5);
rhs =y(9);
residual(5)= lhs-rhs;
lhs =y(11);
rhs =T42*T45;
residual(6)= lhs-rhs;
lhs =y(11)*params(5)/y(10);
rhs =y(9);
residual(7)= lhs-rhs;
lhs =y(11)*(1-params(5))/y(2);
rhs =y(21);
residual(8)= lhs-rhs;
lhs =y(20);
rhs =y(21)+1-params(8);
residual(9)= lhs-rhs;
lhs =y(11);
rhs =y(8)+y(15)+y(13);
residual(10)= lhs-rhs;
lhs =y(12);
rhs =y(13)+y(2)*(1-params(8));
residual(11)= lhs-rhs;
lhs =y(22);
rhs =y(5)*params(7)/y(1);
residual(12)= lhs-rhs;
lhs =y(25)*y(24);
rhs =y(7)*y(25);
residual(13)= lhs-rhs;
lhs =y(15);
rhs =y(11)*params(6);
residual(14)= lhs-rhs;
lhs =y(16);
rhs =y(15);
residual(15)= lhs-rhs;
lhs =log(y(14))-log((steady_state(11)));
rhs =params(9)*(log(y(3))-log((steady_state(11))))+params(12)*x(it_, 1);
residual(16)= lhs-rhs;
lhs =y(17);
rhs =y(12)/y(11);
residual(17)= lhs-rhs;
lhs =y(18);
rhs =y(13)/y(11);
residual(18)= lhs-rhs;
lhs =y(19);
rhs =y(8)/y(11);
residual(19)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(19, 26);

  %
  % Jacobian matrix
  %

  g1(1,4)=1;
  g1(1,8)=(-(1/y(8)));
  g1(1,10)=params(13)*getPowerDeriv(y(10),1+params(14),1)/(1+params(14));
  g1(2,5)=1;
  g1(2,8)=(-((-1)/(y(8)*y(8))));
  g1(3,6)=1;
  g1(3,10)=(-((-params(13))*getPowerDeriv(y(10),params(14),1)));
  g1(4,5)=1;
  g1(4,23)=(-(params(7)*y(7)));
  g1(4,7)=(-(params(7)*y(23)));
  g1(5,5)=y(6)/(y(5)*y(5));
  g1(5,6)=(-1)/y(5);
  g1(5,9)=(-1);
  g1(6,10)=(-(T45*y(14)*getPowerDeriv(y(10),params(5),1)));
  g1(6,11)=1;
  g1(6,2)=(-(T42*getPowerDeriv(y(2),1-params(5),1)));
  g1(6,14)=(-(T41*T45));
  g1(7,9)=(-1);
  g1(7,10)=(-(y(11)*params(5)))/(y(10)*y(10));
  g1(7,11)=params(5)/y(10);
  g1(8,11)=(1-params(5))/y(2);
  g1(8,2)=(-(y(11)*(1-params(5))))/(y(2)*y(2));
  g1(8,21)=(-1);
  g1(9,20)=1;
  g1(9,21)=(-1);
  g1(10,8)=(-1);
  g1(10,11)=1;
  g1(10,13)=(-1);
  g1(10,15)=(-1);
  g1(11,2)=(-(1-params(8)));
  g1(11,12)=1;
  g1(11,13)=(-1);
  g1(12,1)=(-((-(y(5)*params(7)))/(y(1)*y(1))));
  g1(12,5)=(-(params(7)/y(1)));
  g1(12,22)=1;
  g1(13,7)=(-y(25));
  g1(13,24)=y(25);
  g1(13,25)=y(24)-y(7);
  g1(14,11)=(-params(6));
  g1(14,15)=1;
  g1(15,15)=(-1);
  g1(15,16)=1;
  g1(16,3)=(-(params(9)*1/y(3)));
  g1(16,14)=1/y(14);
  g1(16,26)=(-params(12));
  g1(17,11)=(-((-y(12))/(y(11)*y(11))));
  g1(17,12)=(-(1/y(11)));
  g1(17,17)=1;
  g1(18,11)=(-((-y(13))/(y(11)*y(11))));
  g1(18,13)=(-(1/y(11)));
  g1(18,18)=1;
  g1(19,8)=(-(1/y(11)));
  g1(19,11)=(-((-y(8))/(y(11)*y(11))));
  g1(19,19)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],19,676);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],19,17576);
end
end
end
end
