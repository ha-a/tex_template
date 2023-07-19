close all
% 直方体の各面の頂点を定義します。
X1 = 0.75*[-1   1    1   -1  -1   1    1   -1  ];
Y1 = [0.5  0.5  0.5 0.5 -0.5  -0.5  -0.5 -0.5];
Z1 = [-0.5 -0.5 0.5 0.5 -0.5 -0.5 0.5 0.5];
X2 = 1.5*[-1   1    1   -1  -1   1    1   -1  ] + 2.25;
Y2 = 2*[0.5  0.5  0.5 0.5 -0.5  -0.5  -0.5 -0.5];
Z2 = 0.1*[-0.5 -0.5 0.5 0.5 -0.5 -0.5 0.5 0.5];
X3 = 1.5*[-1   1    1   -1  -1   1    1   -1  ] - 2.25;

% 各面を定義します。
Faces = [1 2 6 5; 2 3 7 6; 3 4 8 7; 4 1 5 8; 1 2 3 4; 5 6 7 8];

% 各面に色を定義します。これはオプションで、任意に設定できます。
Colors = repmat(0.85*[1 1 1],6,1);
Colors(6,:) = [0.8500 0.3250 0.0980];

figure
% patch関数で直方体を描画します。
patch('Vertices',[X1' Y1' Z1'],'Faces',Faces,'FaceVertexCData',Colors,'FaceColor','flat')
axis equal
axis off
hold on;
patch('Vertices',[X2' Y2' Z2'],'Faces',Faces,'FaceVertexCData',Colors,'FaceColor','flat')
patch('Vertices',[X3' Y2' Z2'],'Faces',Faces,'FaceVertexCData',Colors,'FaceColor','flat')
view(34.6,11.8669);
text(-1,-2.5,-0.25,'Velocity','FontSize',24,'Interpreter','none')
text(-1,1,0.75,'Drag force','FontSize',24,'Color','r','Interpreter','none')

xlim([-3.7500    3.7500])
ylim([-2.5    3.6])
zlim([-1,1])


figure;
Colors(1,:) = Colors(6,:);
Colors(6,:) = Colors(2,:);
patch('Vertices',[X1' Z1' Y1'],'Faces',Faces,'FaceVertexCData',Colors,'FaceColor','flat')
axis equal
axis off
patch('Vertices',[X2' Z2' Y2'],'Faces',Faces,'FaceVertexCData',Colors,'FaceColor','flat')
patch('Vertices',[X3' Z2' Y2'],'Faces',Faces,'FaceVertexCData',Colors,'FaceColor','flat')

view(34.6,11.8669);
text(-1,-2.5,-0.75,'Velocity','FontSize',24,'Interpreter','none')
text(-1,0.25,1.2,'Drag force','FontSize',24,'Color','r','Interpreter','none')

xlim([-3.7500    3.7500])
ylim([-2.5    3.6])
zlim([-1,1])




% 円錐のパラメータを定義
h = 0.3; % 円錐の高さ
r = 0.3*h; % 円錐の底面の半径

% パラメーター空間を定義
[theta,z] = meshgrid(linspace(0,2*pi,50),linspace(0,h,50));

% 円錐の座標を計算
x = r*(1-z/h).*cos(theta);
y = r*(1-z/h).*sin(theta);

% 円錐を描く
hold on
surf(x,-z-1.5,y,'FaceColor','k','EdgeColor','k');
plot3([0,0],[-0.5,-1.5],[0,0],'k','LineWidth',3);

surf(x,z+3.2,y+0.5,'FaceColor','r','EdgeColor','r');
plot3([-0,-0],[-0.3,3.2],[0.5,0.5],'r','LineWidth',3);

figure(1);

hold on
surf(x,-z-1.5,y,'FaceColor','k','EdgeColor','k');
plot3([0,0],[-0.5,-1.5],[0,0],'k','LineWidth',3);

surf(x,z+1,y+0.5,'FaceColor','r','EdgeColor','r');
plot3([0,0],[0,1],[0.5,0.5],'r','LineWidth',3);


% 軸の比率を等しくする（オプション）
axis equal

