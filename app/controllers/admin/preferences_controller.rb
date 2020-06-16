class Admin::PreferencesController < ApplicationController

  def index
    @pref = Admin::Preference.find_by(id: "1")
  end

  def change_artist
    get_pref
    if params[:change_artist]
      @pref.change_artist
      redirect_to admin_preferences_path, alert: "Users can create artists: #{@pref.allow_create_artists}."
    end
  end
  def change_song
    get_pref
    if params[:change_song]
      @pref.change_song
      redirect_to admin_preferences_path, alert: "Users can create songs: #{@pref.allow_create_artists}."
    end
  end
  private
  def get_pref
    @pref = Admin::Preference.find_by(id: "1")
  end
end
