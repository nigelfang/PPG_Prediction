clc
clear
dataset = load("bidmc_data.mat");
spo2_data_for_patient1 = dataset.data(1).ref.params.spo2.v;
ppg_for_patient1 = dataset.data(1).ppg.v;
ppg_for_first_8_sec = ppg_for_patient1(1:125*8+1);


whole_ppg = zeros(60001,53);
whole_spo2 = zeros(481,53);



for i = 1:53
spo2_temp = dataset.data(i).ref.params.spo2.v;
ppg_temp =  dataset.data(i).ppg.v;

whole_ppg(:,i) = ppg_temp;
whole_spo2(:,i) = spo2_temp;

end


csvwrite('spo2.csv',whole_spo2);
csvwrite('ppg_files.csv',whole_ppg);


