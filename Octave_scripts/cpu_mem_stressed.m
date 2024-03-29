clc;
clear;
DataPath = '..\';
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with malloc experiment no counter measurements
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'cpu_memory_stress\withLoad\');
% pathFiles = strcat(MainPath,'1G_1T\');
% pathFiles = strcat(MainPath,'1M_1T\');
% pathFiles = strcat(MainPath,'1M_2T\');
% pathFiles = strcat(MainPath,'16_64M\');
%
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with calloc experiment no counter measurements
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(MainPath,'calloc_measurements\');
% pathFiles = strcat(MainPath,'1G_1T\');
% pathFiles = strcat(MainPath,'1M_1T\');
% pathFiles = strcat(MainPath,'16_64M\');
%
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with malloc experiment 1
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'cpu_memory_stress\withCgroup\';
% 1 * 1G
% pathFiles = strcat(MainPath,'experiment1_C1_squared\1G_1T\');
% 16 * 64M:
% pathFiles = strcat(MainPath,'experiment1_C1_squared\16_1G_1T\');
% pathFiles = strcat(MainPath,'experiment1_C1_squared\16_1G_1T_2\');
%
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with malloc experiment 2
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'cpu_memory_stress\withCgroup\';
% 1 * 1G
% pathFiles = strcat(MainPath,'experiment2_C_2_3_stressed_C1_squared_C0_lazy\1G_1T\');
% 16 * 64M:
% pathFiles = strcat(MainPath,'experiment2_C_2_3_stressed_C1_squared_C0_lazy\16_1G_1T\'); %faulty do not use
% pathFiles = strcat(MainPath,'experiment2_C_2_3_stressed_C1_squared_C0_lazy\16_1G_1T_2\');
% 
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with calloc experiment 1
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'cpu_memory_stress\withCgroup\calloc_measurements\experiment1_C1_squared\';
% pathFiles = strcat(MainPath,'1G_1T\');
% pathFiles = strcat(MainPath,'1G_1T_2\');
% pathFiles = strcat(MainPath,'1M_1T\');
% 16 * 64M
% pathFiles = strcat(MainPath,'16_1G_1T\');
%
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with calloc experiment 2
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'cpu_memory_stress\withCgroup\calloc_measurements\experiment2_C_2_3_stressed_C1_squared_C0_lazy\';
% watch OUT these contain a few extremely high values 
% pathFiles = strcat(MainPath,'1G_1T_2\');
% pathFiles = strcat(MainPath,'1G_1T\');
% pathFiles = strcat(MainPath,'1M_1T\');
% try to devide mem load over all cores !
% 16 * 64M
% pathFiles = strcat(MainPath,'16_1G_1T\');
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with calloc experiment 3
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'cpu_memory_stress\withCgroup\calloc_measurements\experiment3_C_0_2_stressed_C1_squared_C3_lazy\';
%
% pathFiles = strcat(MainPath,'16_64M_1T\');
% pathFiles = strcat(MainPath,'16_64M_1T_2\'); 
% --> 2th time to confirm results and avoid luck
%
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress with malloc experiment 3
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'extra_exp3_malloc_16T\';
%
% pathFiles = strcat(MainPath,'16_64M\');
% pathFiles = strcat(MainPath,'16_64M_2\');
% pathFiles = strcat(MainPath,'16_64M_3_core0_3\'); %special case of exp 3
% with core 0 and 3 instead of o and 2
%
%%
%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress on C0 
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'affinity_mem_test\C0\mem_cpu\';
% ---- with affinity malloc:
% pathFiles = strcat(MainPath,'malloc\1_1G\');
% 16 * 64M:
% pathFiles = strcat(MainPath,'malloc\16_64M\');
% 
% ---- with affinity calloc:
% pathFiles = strcat(MainPath,'calloc\1_1G\');
% 16 * 64M:
% pathFiles = strcat(MainPath,'calloc\16_64M\');
%
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% stress on C2 
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'affinity_mem_test\C2\mem_cpu\';
% ---- with affinity malloc:
% pathFiles = strcat(MainPath,'malloc\1_1G\');
% 16 * 64M:
% pathFiles = strcat(MainPath,'malloc\16_64M\');
%
% ---- with affinity calloc:
% pathFiles = strcat(MainPath,'calloc\1_1G\');
% 16 * 64M:
% pathFiles = strcat(MainPath,'calloc\16_64M\');
%
%% 
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% EXTRA CPU SHARE
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% MainPath = strcat(DataPath,'cpustress\withcgroup\extra_cpuShareExperiment\');
% pathFiles = strcat(MainPath,'50_50\');
%
%%
% ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
% read out the files into the matrix in the above path
toRead = [1  2 3 4 5 6 7 8 16 32 64];
batchLenght = 102400; % number of values in file
data = zeros(length(toRead),batchLenght); % make empty matrix to hold values
border =15; % presume that anything above 15 is an extreme value

for n = 1:length(toRead)
    fileName = strcat('T' , num2str(toRead(n))); % set the right file name
    fileNameWithExt = strcat(fileName , '.txt'); % add extension
    pathFile = strcat(pathFiles,fileNameWithExt);
    
    file = textread(pathFile, '%d', 'delimiter', '\n', 'whitespace', '','bufsize', batchLenght);
    LoadTimes = file;
    for i = 1:batchLenght % loop over all the values and add to matrix
        data(n,i) = LoadTimes(i);
    end
end

data_delta = zeros(length(toRead),batchLenght);
for n = 1:length(toRead)
   data_delta(n,:) =  abs( data(n,:) - 100);
end

printGraphs = [1 4 8 9 10 11]; % max use 6 plots !

% calculate the max values
maxs = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   maxs(n) =  max(data_delta(n,:));
end

% 
% --------------------------
% calculate the count
% --------------------------
% 
countExtrema = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   deltas = data_delta(n,:); % copy of the deltas in a new matrix
   deltas(deltas < border) = []; % remove all normal values keep extrema
   countExtrema(n) =  length(deltas);
end
% 
% --------------------------
% calculate the variances
% --------------------------
% 
variances = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   deltas = data_delta(n,:);
   deltas(deltas > border) = [];% remove the extreme values
   variances(n) =  var(deltas);
end
%
% --------------------------
% calculate number of extrema's > 100
% --------------------------
% 
countExtrema_above_100 = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   deltas = data_delta(n,:); % copy of the deltas in a new matrix
   deltas(deltas < 100) = []; % remove all normal values keep extrema
   countExtrema_above_100(n) =  length(deltas);
end
% 
% --------------------------
%
figure(1)
for n = 1:length(printGraphs)
    subplot(3,2,n);
    xrange = 0:10;
    [f, x] = hist(data_delta(printGraphs(n),:) ,xrange);
    
    % generate the title for the graph
    title_graph = ['PDF abs(delta)' ' ' num2str(toRead(printGraphs(n))) ' ' ' threads, var=' num2str(variances(printGraphs(n))) ];
    
    bar(x, f/sum(f)/(x(2)-x(1)));title(title_graph);
    xlabel('absolute waarde');ylabel('kans');
end

names = { '1T' ,'2T' , '3T' , '4T' , '5T', '6T', '7T' , '8T' , '16T' , '32T' , '64T' };

figure(2);
maxBar = bar(maxs);
set(gca,'XTickLabel',names);
ylabel('max waarde');xlabel('aantal threads');

figure(3)
max_lowest5Bar = bar(maxs(1:5));
set(gca,'XTickLabel',names);
ylabel('max waarde');xlabel('aantal threads');

figure(4);
varBar = bar(variances);
set(gca,'XTickLabel',names);
ylabel('variantie');xlabel('aantal threads');

figure(5);
maxCountBar = bar(countExtrema);
set(gca,'XTickLabel',names);
ylabel('aantal extrema');xlabel('aantal threads');

figure(6)
maxCountBar_100 = bar(countExtrema_above_100);
set(gca,'XTickLabel',names);
ylabel('aantal extrema > 100');xlabel('aantal threads');
