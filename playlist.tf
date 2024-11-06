resource "spotify_playlist" "afrobeats" {
  name = "afrobeat"
  tracks = ["3Z3vEAKA8bDbO3y9HWGZlu"]
}

data "spotify_search_track" "wizkid" {
    artist = "wizkid"
}

resource "spotify_playlist" "Tate" {
  name = "Tate"
  tracks = [data.spotify_search_track.wizkid.tracks[0].id,
  data.spotify_search_track.wizkid.tracks[1].id]
}