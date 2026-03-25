class CharactersController < ApplicationController
  def index
    characters = Character.order(:position)
    render json: characters.map { |character| serialize_character(character) }, status: :ok
  end

  private

  def serialize_character(character)
    {
      id: character.id,
      name: character.name,
      imageSrc: character.image_src,
      description: character.description,
    }
  end
end
