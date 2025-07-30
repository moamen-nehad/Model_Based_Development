
function SimpleRobotSimulation
  
    %% Create a figure
    figure('Name','Simple Robot Simulation','Position',[200 200 600 500],'NumberTitle','off','Resize','off');
    
    %% Link 1 edit
    uicontrol('Style','text','Position',[50 100 100 20],'String','Link 1 Length');
    L1_edit = uicontrol('Style','edit','Position',[60 75 80 30],'String','1');
    
    %% Link 2 edit
    uicontrol('Style','text','Position',[150 100 100 20],'String','Link 2 Length');
    L2_edit = uicontrol('Style','edit','Position',[160 75 80 30],'String','1');
    
    %% Simulate Button
    uicontrol('Style','pushbutton','Position',[500 75 80 30],'Callback',@Simulate_btn,'String','Simulate');
    
    %% Pause Button
    uicontrol('Style','pushbutton','Position',[500 40 80 30],'Callback',@Pause_btn,'String','Pause');
    
    %% Axes of the figure
    ax=axes('Units','pixels','Position',[125 150 350 300]);
    axis(ax,'tight');
    grid(ax, 'on');
    xlim(ax, [-10 10]);
    ylim(ax, [-10 10]);
    
    %% Angles of Link1 and Link2
    theta1 = 0:5:90;
    theta2 = 0:1:18;
    % Flag for pause button
    pause_flag = false;

    %% Simulate Button Action
    function Simulate_btn(~,~) 
        L1 = str2double(get(L1_edit,'String'));
        L2 = str2double(get(L2_edit,'String'));
        if isnan(L1) || isnan(L2) || L1<0.1 || L1>5 || L2<0.1 || L2>5
            errordlg('Please enter valid numeric values for link lengths in the range of (0.1-->5).');
            return; 
        end
        pause_flag = false;  
        %% Base co-ordinates of the arm
        x0 = 0; 
        y0 = 0;
        while ~pause_flag
            %% CCW direction
            for i= 1:1:length(theta1)
                if pause_flag
                    pause
                end 
                %co-ordinates of the first link
                x1 = L1 * cosd(theta1(i));
                y1 = L1 * sind(theta1(i));
                %co-ordinates of the second link
                x2 = x1 + L2 * cos(theta1(i) + theta2(i));
                y2 = y1 + L2 * sin(theta1(i) + theta2(i));
                %plot the arm
                plot(ax , [x0 x1], [y0 y1],'b',[x1 x2], [y1 y2],'g');
                title(ax, sprintf('\\theta_1 = %d°, \\theta_2 = %d°', theta1(i), theta2(i)));
                xlim(ax, [-(L1+L2) (L1+L2)]);
                ylim(ax, [-(L1+L2) (L1+L2)]);
                pause(0.1);
                drawnow();
            end
            
            %% CW direction
            for i= length(theta1):-1:1
                if pause_flag
                    pause
                end
                %co-ordinates of the first link
                x1 = L1 * cosd(theta1(i));
                y1 = L1 * sind(theta1(i));
                %co-ordinates of the second link
                x2 = x1 + L2 * cos(theta1(i) + theta2(i));
                y2 = y1 + L2 * sin(theta1(i) + theta2(i));
                %plot the arm
                plot(ax , [x0 x1], [y0 y1],'b',[x1 x2], [y1 y2],'g');
                title(ax, sprintf('\\theta_1 = %d°, \\theta_2 = %d°', theta1(i), theta2(i)));
                xlim(ax, [-(L1+L2) (L1+L2)]);
                ylim(ax, [-(L1+L2) (L1+L2)]);
                pause(0.1);
                drawnow();
            end
        end
    end
    function Pause_btn(~,~)
        pause_flag = true;
    end
end





    






  
