function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = BGGflexi.static_g1_tt(T, y, x, params);
end
g1 = zeros(46, 46);
g1(1,1)=(-(T(17)-params(3)*params(2)*T(17)));
g1(1,2)=1;
g1(2,3)=1;
g1(3,3)=y(5);
g1(3,5)=y(3);
g1(4,2)=(1-params(1))*y(6);
g1(4,4)=(-(params(4)*T(9)+y(4)*params(4)*getPowerDeriv(y(4),params(5),1)));
g1(4,6)=y(2)*(1-params(1));
g1(5,4)=(-(T(11)*getPowerDeriv(y(4),1-params(1),1)));
g1(5,6)=1;
g1(5,7)=(-(T(12)*y(10)*y(22)*T(18)));
g1(5,10)=(-(T(10)*T(12)));
g1(5,22)=(-(T(12)*y(10)*y(7)*T(18)));
g1(6,4)=(-((-((1-params(1))*y(6)))/(y(4)*y(4))));
g1(6,6)=(-((1-params(1))/y(4)));
g1(6,8)=1;
g1(7,6)=(-(params(1)/(y(22)*y(7))));
g1(7,7)=(-((-(y(22)*params(1)*y(6)))/(y(22)*y(7)*y(22)*y(7))));
g1(7,9)=1;
g1(7,22)=(-((-(y(7)*params(1)*y(6)))/(y(22)*y(7)*y(22)*y(7))));
g1(8,7)=1-y(22)*(1-params(6));
g1(8,20)=(-y(22));
g1(8,22)=(-(y(20)+y(7)*(1-params(6))));
g1(9,21)=1;
g1(10,9)=(-(y(22)/y(21)));
g1(10,11)=1;
g1(10,21)=(-((y(21)*y(22)*(1-params(6))-y(22)*(y(9)+(1-params(6))*y(21)))/(y(21)*y(21))));
g1(10,22)=(-((y(9)+(1-params(6))*y(21))/y(21)));
g1(11,7)=y(21);
g1(11,13)=(-1);
g1(11,15)=(-1);
g1(11,21)=y(7);
g1(12,7)=(-(y(21)*y(11)*(y(26)+params(7))*T(13)));
g1(12,11)=(-(y(7)*y(21)*(y(26)+params(7))*T(13)));
g1(12,13)=1;
g1(12,19)=(-(y(7)*y(21)*y(11)*(y(26)+params(7))*T(25)));
g1(12,21)=(-(y(7)*y(11)*(y(26)+params(7))*T(13)));
g1(12,26)=(-(y(7)*y(21)*y(11)*T(13)));
g1(12,27)=(-(y(7)*y(21)*y(11)*(y(26)+params(7))*T(28)));
g1(13,7)=(-(y(21)*y(11)*T(13)*(1-params(7))*(1-y(26))));
g1(13,11)=(-(y(7)*y(21)*T(13)*(1-params(7))*(1-y(26))));
g1(13,16)=1;
g1(13,19)=(-(y(7)*y(21)*y(11)*(1-params(7))*(1-y(26))*T(25)));
g1(13,21)=(-(y(7)*y(11)*T(13)*(1-params(7))*(1-y(26))));
g1(13,26)=(-(y(7)*y(21)*y(11)*T(13)*(-(1-params(7)))));
g1(13,27)=(-(y(7)*y(21)*y(11)*(1-params(7))*(1-y(26))*T(28)));
g1(14,7)=(-y(21));
g1(14,13)=y(14);
g1(14,14)=y(13);
g1(14,21)=(-y(7));
g1(15,5)=y(7)*(-((T(5)-T(4)*y(29))*(-y(11))/(y(5)*y(5))));
g1(15,7)=1-T(14)*(T(5)-T(4)*y(29));
g1(15,11)=y(7)*(-((T(5)-T(4)*y(29))*1/y(5)));
g1(15,13)=(-1);
g1(15,19)=y(7)*(-(T(14)*(T(24)-y(29)*(-T(20)))));
g1(15,27)=y(7)*(-(T(14)*(T(27)-y(29)*(-T(26)))));
g1(15,29)=y(7)*(-(T(14)*(-T(4))));
g1(16,7)=(-((-(y(15)*y(12)*y(21)*y(11)))/(y(7)*y(21)*y(11)*y(7)*y(21)*y(11))));
g1(16,11)=(-((-(y(7)*y(21)*y(15)*y(12)))/(y(7)*y(21)*y(11)*y(7)*y(21)*y(11))));
g1(16,12)=(-(y(15)/(y(7)*y(21)*y(11))));
g1(16,15)=(-(y(12)/(y(7)*y(21)*y(11))));
g1(16,19)=1;
g1(16,21)=(-((-(y(15)*y(12)*y(7)*y(11)))/(y(7)*y(21)*y(11)*y(7)*y(21)*y(11))));
g1(17,17)=1;
g1(17,19)=(-((T(16)*(-T(21))-(1-T(2))*((T(5)-T(4)*y(29))*(-T(21))+(1-T(2))*(T(24)-y(29)*(-T(20)))+T(15)*T(25)+T(13)*((-T(21))-y(29)*(T(7)*(-(y(27)*2.506628274631))/(y(19)*y(27)*2.506628274631*y(19)*y(27)*2.506628274631)+1/(y(19)*y(27)*2.506628274631)*T(7)*(-(1/y(19)*2*(log(y(19))+T(1)*.5)))/(2*T(1))))))/(T(16)*T(16))));
g1(17,27)=(-((T(16)*(-(T(23)+T(22)*(-0.5)*2*y(27)))-(1-T(2))*((T(5)-T(4)*y(29))*(-(T(23)+T(22)*(-0.5)*2*y(27)))+(1-T(2))*(T(27)-y(29)*(-T(26)))+T(15)*T(28)+T(13)*((-(T(23)+T(22)*(-0.5)*2*y(27)))-y(29)*(T(7)*(-(y(19)*2.506628274631))/(y(19)*y(27)*2.506628274631*y(19)*y(27)*2.506628274631)+1/(y(19)*y(27)*2.506628274631)*T(7)*(2*T(1)*(-(2*(log(y(19))+T(1)*.5)*.5*2*y(27)))-T(6)*2*2*y(27))/(2*T(1)*2*T(1))))))/(T(16)*T(16))));
g1(17,29)=(-((-((1-T(2))*((1-T(2))*(-T(4))+T(13)*(-(1/(y(19)*y(27)*2.506628274631)*T(7))))))/(T(16)*T(16))));
g1(18,5)=(-y(17));
g1(18,17)=(-y(5));
g1(18,18)=1;
g1(19,11)=1;
g1(19,18)=(-1);
g1(20,1)=(-1);
g1(20,6)=1;
g1(20,7)=(-(y(21)*y(11)*T(4)*y(29)));
g1(20,11)=(-(y(7)*y(21)*T(4)*y(29)));
g1(20,16)=(-1);
g1(20,19)=(-(y(7)*y(21)*y(11)*y(29)*(-T(20))));
g1(20,20)=(-1);
g1(20,21)=(-(y(7)*y(11)*T(4)*y(29)));
g1(20,23)=(-1);
g1(20,27)=(-(y(7)*y(21)*y(11)*y(29)*(-T(26))));
g1(20,29)=(-(y(7)*y(21)*T(4)*y(11)));
g1(21,23)=1;
g1(21,24)=(-1);
g1(22,6)=(-params(10));
g1(22,23)=1;
g1(23,5)=1;
g1(23,11)=(-1);
g1(23,25)=1;
g1(24,10)=1/y(10)-0.75*1/y(10);
g1(25,31)=1/y(31)-params(18)*1/y(31);
g1(26,27)=T(29)-params(17)*T(29);
g1(26,28)=T(30)-params(17)*T(30);
g1(27,22)=1/y(22)-params(18)*1/y(22);
g1(28,19)=(-T(21));
g1(28,27)=(-(T(23)+T(22)*(-0.5)*2*y(27)));
g1(28,30)=1;
g1(29,6)=(-(((y(6))-y(6))/((y(6))*(y(6)))));
g1(29,32)=1;
g1(30,7)=(-(((y(7))-y(7))/((y(7))*(y(7)))));
g1(30,41)=1;
g1(31,20)=(-(((y(20))-y(20))/((y(20))*(y(20)))));
g1(31,34)=1;
g1(32,1)=(-(((y(1))-y(1))/((y(1))*(y(1)))));
g1(32,33)=1;
g1(33,8)=(-(((y(8))-y(8))/((y(8))*(y(8)))));
g1(33,35)=1;
g1(34,4)=(-(((y(4))-y(4))/((y(4))*(y(4)))));
g1(34,43)=1;
g1(35,21)=(-(((y(21))-y(21))/((y(21))*(y(21)))));
g1(35,37)=1;
g1(36,5)=(-(((y(5))-y(5))/((y(5))*(y(5)))));
g1(36,36)=1;
g1(37,11)=(-(((y(11))-y(11))/((y(11))*(y(11)))));
g1(37,38)=1;
g1(38,36)=1;
g1(38,38)=(-1);
g1(38,40)=1;
g1(39,13)=(-(((y(13))-y(13))/((y(13))*(y(13)))));
g1(39,39)=1;
g1(40,17)=(-(((y(17))-y(17))/((y(17))*(y(17)))));
g1(40,42)=1;
g1(41,22)=(-(((y(22))-y(22))/((y(22))*(y(22)))));
g1(41,45)=1;
g1(42,14)=(-(((y(14))-y(14))/((y(14))*(y(14)))));
g1(42,44)=1;
g1(43,15)=(-(((y(15))-y(15))/((y(15))*(y(15)))));
g1(43,46)=1;
g1(45,27)=(-1);
g1(45,28)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end