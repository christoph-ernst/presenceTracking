json.extract! player, :id, :Vorname, :Nachname, :Jahrgang, :email, :phone, :created_at, :updated_at
json.url player_url(player, format: :json)