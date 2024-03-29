module Model.Radio exposing (Episode(..), Radio(..), episodes, toDescription, toLinks, toString, urlParser)

import Url.Parser as UrlParser exposing ((</>))


type Radio
    = Top
    | Selected Episode


type Episode
    = One
    | Two
    | Three
    | Four
    | Five
    | Six
    | Seven
    | Eight
    | Nine
    | Ten
    | Eleven
    | Twelve
    | Thirteen
    | Fourteen
    | Fifteen
    | Sixteen
    | Seventeen
    | Eighteen
    | Nineteen
    | Twenty
    | TwentyOne
    | TwentyTwo
    | TwentyThree
    | TwentyFour
    | TwentyFive
    | TwentySix
    | TwentySeven
    | TwentyEight
    | TwentyNine
    | Thirty


type alias Links =
    { soundcloud : String
    , tidal : String
    , spotify : Maybe String
    }


type alias Description =
    String


episodes : List Episode
episodes =
    [ Thirty
    , TwentyNine
    , TwentyEight
    , TwentySeven
    , TwentySix
    , TwentyFive
    , TwentyFour
    , TwentyThree
    , TwentyTwo
    , TwentyOne
    , Twenty
    , Nineteen
    , Eighteen
    , Seventeen
    , Sixteen
    , Fifteen
    , Fourteen
    , Thirteen
    , Twelve
    , Eleven
    , Ten
    , Nine
    , Eight
    , Seven
    , Six
    , Five
    , Four
    , Three
    , Two
    , One
    ]


toLinks : Episode -> Links
toLinks episode =
    case episode of
        One ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1298355940&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/0c492f3a-7ac4-4e57-a28d-9f2c401cf9c0"
            , spotify = Nothing
            }

        Two ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1302046477&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/e97a487d-e5e7-4b9d-8d12-33443e3e133b"
            , spotify = Nothing
            }

        Three ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1306015858&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/playlist/290a1e7b-905a-4a41-8a89-3e8800228a77"
            , spotify = Nothing
            }

        Four ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1310032537&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/99bee693-230d-486b-b1f5-5836512b01f0"
            , spotify = Nothing
            }

        Five ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1314234892&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/129dffca-a010-4fc0-beb5-4c1792b4e6c6"
            , spotify = Nothing
            }

        Six ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1318767130&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/76fae6bb-53d7-49f2-876f-4878f34a99b5"
            , spotify = Nothing
            }

        Seven ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1323180613&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/3f35550f-d15b-467e-ac44-a903ad2fe243"
            , spotify = Nothing
            }

        Eight ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1327248835&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/ba63e3f2-f9a4-4ddd-86b3-adac198b2e17"
            , spotify = Nothing
            }

        Nine ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1332070948&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/6d40b77e-c7f9-4ff5-bf2e-86d0cacb704b"
            , spotify = Nothing
            }

        Ten ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1336626931&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/a9aec11e-9346-4c3e-810d-df286798608f"
            , spotify = Nothing
            }

        Eleven ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1340924608&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/3e6f3b57-183a-4bac-b9da-8c4ca2308aba"
            , spotify = Nothing
            }

        Twelve ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1349827858&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/032ab8c6-a82f-4c18-b504-feb05184fd41"
            , spotify = Nothing
            }

        Thirteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1354581022&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/027e0102-4756-4033-893e-b0e415e7e674"
            , spotify = Nothing
            }

        Fourteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1358976982&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/b2bbb4b4-9d8f-4577-8934-b7de2e1d5a9e"
            , spotify = Nothing
            }

        Fifteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1363139950&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/027abc9b-41c5-4ce4-99df-2e14c8471f5b"
            , spotify = Nothing
            }

        Sixteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1367846734&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/82e5550d-a3a2-4dce-b5c3-a7914da20f48"
            , spotify = Nothing
            }

        Seventeen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1372150474&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/8b6c8b89-7fe7-401c-b495-7212b0eb25ef"
            , spotify = Nothing
            }

        Eighteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1376709226&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/1901ee8d-a608-4b68-8c36-8b7b226ba73b"
            , spotify = Nothing
            }

        Nineteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1381289725&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/9021c21f-2b25-4219-8ba3-7f7fb22ebd8e"
            , spotify = Nothing
            }

        Twenty ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1385836870&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/d503c427-25a2-48c5-a0b9-92157ff8a8c4"
            , spotify = Nothing
            }

        TwentyOne ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1394948947&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/92255c49-b9bb-4e71-95a5-3d894ad4eb50"
            , spotify = Nothing
            }

        TwentyTwo ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1404318241&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/5d45e5e0-a54f-4472-9d74-a1d21abf667d"
            , spotify = Nothing
            }

        TwentyThree ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1408978846&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/28679a32-47d9-4aa4-ab21-fb79c93f8bc5"
            , spotify = Nothing
            }

        TwentyFour ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1418412325&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/687ab44f-c8fe-4ce8-8601-b325e24896a6"
            , spotify = Nothing
            }

        TwentyFive ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1428863911&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/f9601739-1ce5-4b90-b01c-22b2b41926ab"
            , spotify = Nothing
            }

        TwentySix ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1454821873&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/9a65b0e6-e16e-4c0d-b7f7-ffb7946f501b"
            , spotify = Nothing
            }

        TwentySeven ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1465956472&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/a4ad291e-6c3f-47f1-bfb3-c9ea7fa71034"
            , spotify = Nothing
            }

        TwentyEight ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1476408715&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/cf7ac06b-430e-49dc-8d8a-49320c671100"
            , spotify = Nothing
            }

        TwentyNine ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1585814559&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/34720d3c-a6b4-42b1-af2b-c476ba2118c8"
            , spotify = Just "https://open.spotify.com/playlist/7BNGpnre8SJUOd8gNvy7fI?si=0a9738f23e594dc8"
            }

        Thirty ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1593043284&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/d314f872-704a-47cb-9676-c1f02313f60f"
            , spotify = Just "https://open.spotify.com/playlist/5SAUR8wKgqBrHXS0j5DTGp?si=71b26fb32aa44aa5"
            }


toDescription : Episode -> String
toDescription episode =
    case episode of
        One ->
            "80s Dance"

        Two ->
            "80s Mid-tempo"

        Three ->
            "Sade (Exclusive Hour)"

        Four ->
            "70s Jazz Fusion"

        Five ->
            "70s Jazz Fusion (Up-tempo)"

        Six ->
            "80s Dance"

        Seven ->
            "Samba/MPB"

        Eight ->
            "80s Dance"

        Nine ->
            "80s Funk & Boogie"

        Ten ->
            "Prince - For You (Full Album)"

        Eleven ->
            "Dego (Exclusive Hour)"

        Twelve ->
            "Contemporary Dance"

        Thirteen ->
            "Soft Sounds / Bossa Nova"

        Fourteen ->
            "Jazz Fusion"

        Fifteen ->
            "Contemporary Dance"

        Sixteen ->
            "Sade (Exclusive Hour)"

        Seventeen ->
            "Marvin Gaye (Exclusive Hour)"

        Eighteen ->
            "80s Luv"

        Nineteen ->
            "Tribute to Gal Costa"

        Twenty ->
            "Brasilidades / MPB"

        TwentyOne ->
            "Brasilidades / MPB (de novo)"

        TwentyTwo ->
            "Contemporary Italo"

        TwentyThree ->
            "Jazz Fusion / Soft Sounds"

        TwentyFour ->
            "Contemporary Boogie"

        TwentyFive ->
            "Roy Ayers & Mtume"

        TwentySix ->
            "City Pop"

        TwentySeven ->
            "Marcus Miller (Credits Mix)"

        TwentyEight ->
            "Contemporary Dance"

        TwentyNine ->
            "Brasilidades"

        Thirty ->
            "80s Sus Mix"


toString : Episode -> String
toString episode =
    case episode of
        One ->
            "001"

        Two ->
            "002"

        Three ->
            "003"

        Four ->
            "004"

        Five ->
            "005"

        Six ->
            "006"

        Seven ->
            "007"

        Eight ->
            "008"

        Nine ->
            "009"

        Ten ->
            "010"

        Eleven ->
            "011"

        Twelve ->
            "012"

        Thirteen ->
            "013"

        Fourteen ->
            "014"

        Fifteen ->
            "015"

        Sixteen ->
            "016"

        Seventeen ->
            "017"

        Eighteen ->
            "018"

        Nineteen ->
            "019"

        Twenty ->
            "020"

        TwentyOne ->
            "021"

        TwentyTwo ->
            "022"

        TwentyThree ->
            "023"

        TwentyFour ->
            "024"

        TwentyFive ->
            "025"

        TwentySix ->
            "026"

        TwentySeven ->
            "027"

        TwentyEight ->
            "028"

        TwentyNine ->
            "029"

        Thirty ->
            "030"


fromString : String -> Maybe Radio
fromString string =
    case string of
        "001" ->
            Just <| Selected One

        "002" ->
            Just <| Selected Two

        "003" ->
            Just <| Selected Three

        "004" ->
            Just <| Selected Four

        "005" ->
            Just <| Selected Five

        "006" ->
            Just <| Selected Six

        "007" ->
            Just <| Selected Seven

        "008" ->
            Just <| Selected Eight

        "009" ->
            Just <| Selected Nine

        "010" ->
            Just <| Selected Ten

        "011" ->
            Just <| Selected Eleven

        "012" ->
            Just <| Selected Twelve

        "013" ->
            Just <| Selected Thirteen

        "014" ->
            Just <| Selected Fourteen

        "015" ->
            Just <| Selected Fifteen

        "016" ->
            Just <| Selected Sixteen

        "017" ->
            Just <| Selected Seventeen

        "018" ->
            Just <| Selected Eighteen

        "019" ->
            Just <| Selected Nineteen

        "020" ->
            Just <| Selected Twenty

        "021" ->
            Just <| Selected TwentyOne

        "022" ->
            Just <| Selected TwentyTwo

        "023" ->
            Just <| Selected TwentyThree

        "024" ->
            Just <| Selected TwentyFour

        "025" ->
            Just <| Selected TwentyFive

        "026" ->
            Just <| Selected TwentySix

        "027" ->
            Just <| Selected TwentySeven

        "028" ->
            Just <| Selected TwentyEight

        "029" ->
            Just <| Selected TwentyNine

        "030" ->
            Just <| Selected Thirty

        _ ->
            Nothing


urlParser : UrlParser.Parser (Radio -> b) b
urlParser =
    let
        parser : UrlParser.Parser (Radio -> b) b
        parser =
            UrlParser.custom "EPISODE" fromString
    in
    UrlParser.s "radio" </> parser
