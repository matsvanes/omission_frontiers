clear 
close all

global ft_default
ft_default = [];
ft_default.checksize = inf;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% enable reproducescript
ft_default.reproducescript = 'reproduce';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Create all relevant directories where all data and all figures will be
% saved
create_MEG_BIDS_data_structure

% Go from raw MEG data to a time-frequency representation
sensor_space_analysis

% Go from raw MRI data to a volume conductor and a forward model
mr_preprocessing

% Extract fourier transforms and do beamformer source reconstructions
source_space_analysis

% Do grand averages across subjects for both sensor and source spaces
grand_averages

% Do statistics on time-frequency representations and beamformer source
% reconstructions
statistics

% Plot all steps in the sensor space analysis
plot_sensor_space

% Plot all steps in the MR processing
plot_processed_mr

% Plot all steps in the source space analysis
plot_source_space

% Plot grand averages in both the sensor and source spaces, with and
% without statistical masking
plot_grand_averages


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% disable reproducescript
ft_default.reproducescript = []; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
