module UI.NowPlaying exposing (..)

import Html exposing (Html)
import Html.Attributes as HA


type alias Model =
    { artist : Info
    , album : Info
    , song : Info
    , lyrics : String
    , currentImagePreview : Maybe Image
    }


type alias Info =
    { name : String
    , description : String
    , image : List Image
    }


type alias Image =
    String


type Layout
    = ArtistView
    | AlbumView
    | SongView
    | CombinedView


view : Model -> Html msg
view model =
    Html.main_
        [ HA.class "w-screen h-screen" ]
        [ viewArtistBackground model.artist
        , Html.div
            [ HA.class "absolute inset-0 flex flex-col lg:grid lg:grid-cols-3 gap-2 lg:gap-4"
            ]
            [ viewInfo model.artist
            , viewInfo model.album
            , viewInfo model.song
            ]
        , case model.currentImagePreview of
            Just image ->
                Html.div
                    [ HA.class "absolute inset-0 m-12"
                    ]
                    [ Html.img
                        [ HA.src image ]
                        []
                    ]

            Nothing ->
                Html.text ""
        ]


viewInfo : Info -> Html msg
viewInfo info =
    Html.section
        [ HA.class "bg-neutral-900/50 flex flex-row lg:flex-col gap-12 p-12" ]
        [ Html.img
            [ HA.src ( info.image |> List.head |> Maybe.withDefault "")
            , HA.class "w-full h-full aspect-square object-cover z-0 w-20 h-20 lg:w-full lg:h-auto"
            ]
            []
        , Html.div
            [ HA.class "flex flex-col gap-4" ]
            [ Html.h3
                [ HA.class "text-white text-3xl"
                ]
                [ Html.text info.name ]
            , Html.p
                [ HA.class "text-white"
                ]
                [ Html.text info.description ]
            ]
        ]



viewArtistBackground : Info -> Html msg
viewArtistBackground info =
        Html.img
            [ HA.src
               ( info.image
                    |> List.head
                    |> Maybe.withDefault ""
                )
            , HA.class "w-full h-full object-cover opacity-10 z-0"
            ]
            []

