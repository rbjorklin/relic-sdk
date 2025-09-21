type t =
  { result : Stub.Community.Response.t
  ; chat_rooms : Stub.Game.Chat_room.t list
  ; chat_room_count_max : int
  }

let to_json r =
  `Assoc
    [ "result", Stub.Community.Response.to_json r.result
    ; "chatrooms", `List (List.map Stub.Game.Chat_room.to_json r.chat_rooms)
    ; "chatroomCountMax", `Int r.chat_room_count_max
    ]
;;

let from_json json =
  let open Yojson.Basic.Util in
  { result = Yojson.Basic.Util.(json |> member "result" |> Stub.Community.Response.from_json)
  ; chat_rooms = Yojson.Basic.Util.(json |> member "chatrooms" |> to_list |> List.map Stub.Game.Chat_room.from_json)
  ; chat_room_count_max = json |> member "chatroomCountMax" |> to_int
  }
;;
