type t =
  { id : int
  ; name : string
  ; avatar_category_id : int
  ; metadata : string
  ; chat_room_count : int
  }

let to_json m =
  `Assoc
    [ "id", `Int m.id
    ; "name", `String m.name
    ; "avatarCategory_id", `Int m.avatar_category_id
    ; "metadata", `String m.metadata
    ; "chatroomcount", `Int m.chat_room_count
    ]
;;

let from_json json =
  { id = Yojson.Basic.Util.(json |> member "id" |> to_int)
  ; name = Yojson.Basic.Util.(json |> member "name" |> to_string)
  ; avatar_category_id = Yojson.Basic.Util.(json |> member "avatarCategory_id" |> to_int)
  ; metadata = Yojson.Basic.Util.(json |> member "metadata" |> to_string)
  ; chat_room_count = Yojson.Basic.Util.(json |> member "chatroomcount" |> to_int)
  }
;;
