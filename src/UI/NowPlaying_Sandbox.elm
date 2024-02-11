module UI.NowPlaying_Sandbox exposing (..)

import Browser
import Html exposing (Html)
import Html.Attributes as HA
import UI.NowPlaying as Page


main : Html msg
main =
    Html.section
        []
        [ assets
        , Page.view dummy
        ]



dummy : Page.Model
dummy =
    { artist =
        { name = "Toto"
        , description = "Toto (stylized as TOTO) is an American rock band formed in 1977 in Los Angeles, California. Toto combines elements of pop, rock, soul, funk, progressive rock, hard rock, R&B, blues, and jazz. Having released 14 studio albums and sold over 40 million records worldwide,[2] the group has received several Grammy Awards and was inducted into the Musicians Hall of Fame and Museum in 2009.[3]"
        , image = ["https://cdn.smehost.net/2020sonymusiccouk-ukprod/wp-content/uploads/2019/10/9882bb51febb14e9ec4e3c0aca3bf194.jpg"]
        }
    , album =
        { name = "Toto IV"
        , description = "Toto IV is the fourth studio album by American rock band Toto, released in March 1982 by Columbia Records."
        , image = ["https://upload.wikimedia.org/wikipedia/en/b/bd/Toto_Toto_IV.jpg"]
        }
    , song =
        { name = "Africa"
        , description = "Africa is a song by American rock band Toto, appearing as the tenth and final track on their fourth studio album Toto IV (1982). It was released as a single in the US through Columbia Records in October 1982, the album's third single overall and second in Europe. The song was written by band members David Paich and Jeff Porcaro, produced by the band, and mixed by Grammy-winning engineer Elliot Scheiner."
        , image = ["https://i.ytimg.com/vi/FTQbiNvZqaY/maxresdefault.jpg"]
        }
    , lyrics = "Lorem ipsum dolor sit amet, officia excepteur ex fugiat reprehenderit enim labore culpa sint ad nisi Lorem pariatur mollit ex esse exercitation amet. Nisi anim cupidatat excepteur officia. Reprehenderit nostrud nostrud ipsum Lorem est aliquip amet voluptate voluptate dolor minim nulla est proident. Nostrud officia pariatur ut officia. Sit irure elit esse ea nulla sunt ex occaecat reprehenderit commodo officia dolor Lorem duis laboris cupidatat officia voluptate. Culpa proident adipisicing id nulla nisi laboris ex in Lorem sunt duis officia eiusmod. Aliqua reprehenderit commodo ex non excepteur duis sunt velit enim. Voluptate laboris sint cupidatat ullamco ut ea consectetur et est culpa et culpa duis."
    , currentImagePreview = Nothing
    }


assets : Html msg
assets =
    Html.node
        "link"
        [ HA.href "../../all.css"
        , HA.rel "stylesheet"
        ]
        []
