clear all
clc

% Condition and participant
prompt = 'Write down the filename subject_condition \n';
condition_str = input(prompt, 's');

% Number of trial
Trial = 1;
Max_trial = 150; %ou 15 ? 

%%

% Array creation
A = 1*ones(5,1);
B = 2*ones(4,1);
C = 3*ones(3,1);
D = 4*ones(2,1);
E = 5*ones(1,1);

matrix_1 = vertcat(A,B,C,D,E);
matrix_2 = [1,2,3,4,5,2,3,4,5,3,4,5,4,5,5];
matrix_2 = matrix_2.';

Audios = horzcat(matrix_1,matrix_2);
Audio = repmat(Audios,10,1);
Audio = Audio(randperm(size(Audio,1)),:); % WARNING! each time you run the script, the matrix changes. Don't forget to save the matrix for each participant

% playing the audio files

% for i = 1:length(filelist)
%         Filename = filelist(i).name;
%         [y, Fs] = audioread(Filename);
%         player = audioplayer(y, Fs);
%         playblocking(player);
%         mydlg = warndlg('Close me to continue the experiment', 'Warning Dialog'); %close the window to play the next song
%         waitfor(mydlg);
% end

%% Solution to read song files in a specific order / save answer
answers = zeros(150,3);
for i = 1:150
    % 1st column
    if(Audio(i,1))==1
        [y, Fs] = audioread('dots.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('dots \n');
        pause(0.5);
    end

    if(Audio(i,1))==2
        [y, Fs] = audioread('text16.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text16 \n');
        pause(0.5);
    end
    
     if(Audio(i,1))==3
        [y, Fs] = audioread('text24.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text24 \n');
        pause(0.5);
     end
     
     if(Audio(i,1))==4
        [y, Fs] = audioread('text3.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text3 \n');
        pause(0.5);
     end
        
    if(Audio(i,1))==5
        [y, Fs] = audioread('text9.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text9 \n');
        pause(0.5);
    
     end
    
    % 2nd columns
  
     if(Audio(i,2))==1
        [y, Fs] = audioread('dots.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('dots_2 \n');
        %pause(1);
        mydlg = warndlg('Close to continue the experiment', 'Warning Dialog'); %close the window to play the next vibration
        waitfor(mydlg);
    end

    if(Audio(i,2))==2
        [y, Fs] = audioread('text16.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text16_2 \n');
        %pause(1);
        mydlg = warndlg('Close to continue the experiment', 'Warning Dialog'); 
        waitfor(mydlg);
    end
    
     if(Audio(i,2))==3
        [y, Fs] = audioread('text24.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text24_2 \n');
        %pause(1);
        mydlg = warndlg('Close to continue the experiment', 'Warning Dialog'); 
        waitfor(mydlg);
     end
     
     if(Audio(i,2))==4
        [y, Fs] = audioread('text3.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text3_2 \n');
        %pause(1);
        mydlg = warndlg('Close to continue the experiment', 'Warning Dialog'); 
        waitfor(mydlg);
        %pause(1);
    end
        
    if(Audio(i,2))==5
        [y, Fs] = audioread('text9.wav');
        player = audioplayer(y, Fs);
        playblocking(player);
        fprintf('text9_2 \n');
        %pause(1);
        mydlg = warndlg('Close to continue the experiment', 'Warning Dialog'); 
        waitfor(mydlg);
    end    
        
end



prompt = 'The 2 vibrations were similar (Press 1) or different (Press 2) ? \n';
ans_str = input(prompt,'s');
%pause(1);

% Check the input

while ans_str ~= '1'& ans_str ~= '2'& ans_str ~= 'n'
    disp('Wrong input ?')
    prompt = 'Please retype your input \n';
    ans_str = input(prompt,'s');
    pause(1);
end

filename = 'test_.csv'; %file
newData = {ans_str}; %data
Rep = readcell('test_.csv'); % read in Réponses 
Rep = [Rep; newData]; % append Rep to list
writecell(Rep,filename); % write it to file

% Check the input 
% while ans_str ~= '1' & ans_str ~= '2' & ans_str ~= 'n'
%       disp('Wrong input ?')
%       prompt = 'Please retype your input \n';
%       ans_str = input(prompt,'s');
% end


%% 
% Tracking the anwsers
% answers = zeros(150,3);
 
% 
% formatSpec = '%s %s';
% formatSpec_trial = '%s_%s_%d';
% save_str = sprintf(formatSpec_trial, condition_str,'_trial',Trial);
% save_strans = sprintf(formatSpec, condition_str,'_answers')

% Compare the 2 vibrations
% prompt = 'The 2 vibrations were similiar (Press 1) or different (Press 2) ?'; %bad trial press n ?
% ans_str = input(prompt,'s');
% 
% % Check the input 
% while ans_str ~= '1' & ans_str ~= '2' & ans_str ~= 'n'
%       disp('Wrong input ?')
%       prompt = 'Please retype your input \n';
%       ans_str = input(prompt,'s');
% end
% 
% %% save the data 
%save(save_str, 'answers')


% prompt = 'The 2 vibrations were similar (Press 1) or different (Press 2) ? \n';
% ans_str = input(prompt,'s');
% %pause(1);
% 
% % Check the input
% while ans_str ~= '1'& ans_str ~= '2'& ans_str ~= 'n'
% disp('Wrong input ?')
% prompt = 'Please retype your input \n';
% ans_str = input(prompt,'s');
% pause(1);
% end
% filename = 'RepGui3.xlsx'; %file
% newData = {ans_str}; %data
% Rep = readcell('RepGui3.xlsx'); % read in Réponses (j'ai crée à part un fichier excel Réponses vide)
% % append new row to Réponses
% Rep = [Rep; newData]; % append Rep to list
% writecell(Rep,filename); % write it to file