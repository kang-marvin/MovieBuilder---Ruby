require 'require_all'
require_all 'movie/**/builder.rb'

movie = {
  lotr: {
    cast: [
      {
        full_name: "Ian McKellen",
        character: "Gandalf",
        image: nil,
        quote: "You shall not pass",
        interviews: []
      }
    ],
    description: {
      rating: 92,
      bio: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
      trailers: [],
      poster: ""
    },
    images: {
      poster: "",
      premiere_photos: [],
    }
  }
}

test_cast = Movie::Casts::Builder.new movie[:lotr][:cast][0]
test_bio = Movie::Info::Builder.new movie[:lotr][:description]
test_image = Movie::Images::Builder.new movie[:lotr][:images]
# test_cast = CastBuilder.new movie[:lotr][:cast][0]

test_cast.test_values
test_bio.test_values
test_image.test_values




