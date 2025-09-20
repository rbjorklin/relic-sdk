type t =
  { matchhistory_id : int
  ; profile_id : int
  ; race_id : int
  ; statgroup_id : int
  ; team_id : int
  ; wins : int
  ; losses : int
  ; streak : int
  ; arbitration : int
  ; outcome : int
  ; old_rating : int
  ; new_rating : int
  ; report_type : int
  }

let to_json m =
  `Assoc
    [ "matchhistory_id", `Int m.matchhistory_id
    ; "profile_id", `Int m.profile_id
    ; "race_id", `Int m.race_id
    ; "statgroup_id", `Int m.statgroup_id
    ; "teamid", `Int m.team_id
    ; "wins", `Int m.wins
    ; "losses", `Int m.losses
    ; "streak", `Int m.streak
    ; "arbitration", `Int m.arbitration
    ; "outcome", `Int m.outcome
    ; "oldrating", `Int m.old_rating
    ; "newrating", `Int m.new_rating
    ; "reporttype", `Int m.report_type
    ]
;;

let from_json json =
  let open Yojson.Basic.Util in
  { matchhistory_id = json |> member "matchhistory_id" |> to_int
  ; profile_id = json |> member "profile_id" |> to_int
  ; race_id = json |> member "race_id" |> to_int
  ; statgroup_id = json |> member "statgroup_id" |> to_int
  ; team_id = json |> member "teamid" |> to_int
  ; wins = json |> member "wins" |> to_int
  ; losses = json |> member "losses" |> to_int
  ; streak = json |> member "streak" |> to_int
  ; arbitration = json |> member "arbitration" |> to_int
  ; outcome = json |> member "outcome" |> to_int
  ; old_rating = json |> member "oldrating" |> to_int
  ; new_rating = json |> member "newrating" |> to_int
  ; report_type = json |> member "reporttype" |> to_int
  }
;;
