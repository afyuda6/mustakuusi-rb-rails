class GamesController < ApplicationController
  def index
    games = Game.includes(:screenshots, :game_characters).order(release_date: :desc, id: :desc)
    render json: games.map { |game| serialize_game(game) }, status: :ok
  end

  private

  def serialize_game(game)
    {
      id: game.id,
      title: game.title,
      imageSrc: game.image_src,
      date: game.release_date.in_time_zone("Asia/Jakarta").iso8601,
      description: game.description,
      categories: game.categories,
      detail: game.detail,
      privacyPolicyLink: game.privacy_policy_link,
      downloadLink: game.download_link,
      longDescription: game.long_description,
      screenshots: game.screenshots.order(:id).pluck(:image_src),
      characters: game.characters.order(:position).pluck(:id)
    }
  end
end
