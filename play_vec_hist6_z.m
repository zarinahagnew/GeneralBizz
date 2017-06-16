function tmp_cat = play_vec_hist6_z(vec_hist,itrial,fs,yes_play)
% function tmp = play_vec_hist6(vec_hist,itrial,[fs],[yes_play])
% plays the data from trial(itrial) of a new_quatier6-type vec_hist
% 'tmp_cat' is the full time waveform, peiced together from the data frames
% default for yes_play is 1.

if nargin < 3 || isempty(fs), fs = 11025; end
if nargin < 4 || isempty(yes_play), yes_play = 1; end

if ~vec_hist.playable
  reply = input(sprintf('vec_hist(%s) is not playable, override? y/[n]: ',vec_hist.name),'s')
  if isempty(reply) || reply == 'n'
    error(sprintf('vec_hist(%s) is not playable',vec_hist.name));
  end
end

trial_vec_hist = squeeze(vec_hist.data(itrial,:,:));

tmp = trial_vec_hist';
tmp_cat = tmp(:);
if yes_play, soundsc(tmp_cat,fs); end
