function [fitresult, gof] = createFit1(x_cha, c_x_ys)
%CREATEFIT1(X_HM_SMT,C_X_1_SMT)
%  创建一个拟合。
%
%  要进行 '无标题拟合 1' 拟合的数据:
%      X 输入: x_hm_smt
%      Y 输出: c_x_1_smt
%  输出:
%      fitresult: 表示拟合的拟合对象。
%      gof: 带有拟合优度信息的结构体。
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 31-Mar-2025 17:01:36 自动生成


%% 拟合: '无标题拟合 1'。
[xData, yData] = prepareCurveData( x_cha, c_x_ys );

% 设置 fittype 和选项。
ft = fittype( 'fourier4' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 2.3562062712237e-05];

% 对数据进行模型拟合。
[fitresult, gof] = fit( xData, yData, ft, opts );
fittedData = feval(fitresult, xData); % 使用拟合结果计算拟合值

% 绘制数据拟合图。
figure( 'Name', '无标题拟合 1' );
h = plot( fitresult, xData, yData );
legend( h, 'c_x_1_smt vs. x_hm_smt', '无标题拟合 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% 为坐标区加标签
xlabel( 'x_hm_smt', 'Interpreter', 'none' );
ylabel( 'c_x_1_smt', 'Interpreter', 'none' );
grid on


