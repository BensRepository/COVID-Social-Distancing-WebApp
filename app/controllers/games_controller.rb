class GamesController < ApplicationController
  def games
  end

  def download_game_windows
    send_file "#{Rails.root}public/PersonalSpaceInvaders(windows).zip", type: "application/zip", x_sendfile: true
  end

  def download_game_mac
    send_file "#{Rails.root}public/PersonalSpaceInvaders(mac).zip", type: "application/zip", x_sendfile: true
  end
