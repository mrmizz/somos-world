module View.Roadmap.Music exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Model.Lob as Lob
import Model.Project as Project
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)
import View.Roadmap.Generic as Generic


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.div
            [ class "mt-6"
            ]
            [ Html.div
                [ class "mb-3 is-family-secondary ml-2"
                ]
                [ Html.a
                    [ class "has-sky-blue-text"
                    , State.href <| State.Roadmap Lob.Total
                    ]
                    [ Html.text "Road Map"
                    ]
                , Html.text "/ Music"
                ]
            ]
        , Html.div
            [ class "pb-6"
            ]
            [ Generic.view
                { title = "CDMX EP"
                , todo =
                    []
                , doing =
                    []
                , done =
                    [ { body =
                            Html.a
                                [ class "has-sky-blue-text"
                                , State.href <| Releases
                                ]
                                [ Html.text "RELEASE"
                                ]
                      }
                    , { body =
                            Html.a
                                [ class "has-sky-blue-text"
                                , href "https://youtu.be/zAT2mIWgs00"
                                , target "_blank"
                                ]
                                [ Html.text "MUSIC VIDEO 01"
                                ]
                      }
                    , { body =
                            Html.a
                                [ class "has-sky-blue-text"
                                , href "https://youtu.be/N1TrMoQuKqU"
                                , target "_blank"
                                ]
                                [ Html.text "MUSIC VIDEO 02"
                                ]
                      }
                    ]
                }
            ]
        , Html.div
            [ class "pb-6"
            ]
            [ Generic.view
                { title = "SP LP"
                , todo =
                    [ { body = Html.text "MASTER" }
                    ]
                , doing =
                    [ { body = Html.text "POST-PRODUCTION" }
                    , { body = Html.text "MIX" }
                    ]
                , done =
                    [ { body = Html.text "COMPOSITION" }
                    , { body = Html.text "RECORDING" }
                    ]
                }
            ]
        , Html.div
            []
            [ Generic.view
                { title = "CASA BOLA"
                , todo =
                    [ { body = Html.text "MUSIC VIDEO 01" }
                    , { body = Html.text "MUSIC VIDEO 02" }
                    ]
                , doing =
                    [ { body = Html.text "MASTER" }
                    ]
                , done =
                    [ { body = Html.text "PARTY" }
                    , { body = Html.text "RECORDING" }
                    , { body = Html.text "MIX" }
                    ]
                }
            ]
        ]
