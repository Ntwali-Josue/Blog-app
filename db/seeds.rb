# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
text = "This is the text example."
users = User.create([
  { name: 'Josh', photo: 'https://lh3.googleusercontent.com/2hD1txiPmYIil0urV0Ib2dhQ5z_EU03AcFnxUbG0-1xbVOo12bgJYxvkAc4yeASaN4EOIhGlpXLNJos4-vXnpSO67u__nikXdjDovJlXAIQBL-dveSgSIZfRSiIpqm5gn6rVJ48KrVpTuyWM0E_yVYI4ydvxrI3xnAeTTkpZoGT7IXRhVZdaJ0OwNNT6u7j8WvrwHJnWzHpI9QUOS1gu5fEeULsM19_0FyvlSIheF8FK2eYTA_R0pbGk4o71zDU33HLFQgnRzTAlymmjMr2AC0rO_CbZlrH8YqOX9BkJ3kVzAuJiumPYsGqg0aCS2OhLklLfJ4igbH_XFCRmELLsACx3iSozHhSC2tBpbL69CJM4EBJ01drGvA867chDtf0MgBj4hpOhrQgt2toPcpHgbXvQfgbBQq8WAd0wm3epfwUC4PwIAOEnA4_kkS2R7ASw4giZ7kkiCZ288nYHYvgUGwv_yNuIMSXsnBuX2syN_Jn4j28R4pQaW48PADUDIGslrjg_t2OowG23B2CDAuosfcWzLFs3b0BQe0K7w1blVAVKM-CSOnmkdA38W_YzCG_FUja1wloApaOpzCZ4AxogfjQDTa2RrKCe3M4Z6ucrudFypqP1UhjqrVTYSeY5wNoAL69JdP4fJYW9TFNcbXWne0mlfVA4XAYz05NEBCgqELmAYTvyYi6wYOmjE_qApv5iSsy9pO79cW1xT4uM=w1123-h1497-no?authuser=0', bio: "This is my biography", PostsCounter: 0},
  { name: 'Hope', photo: 'https://lh3.googleusercontent.com/2hD1txiPmYIil0urV0Ib2dhQ5z_EU03AcFnxUbG0-1xbVOo12bgJYxvkAc4yeASaN4EOIhGlpXLNJos4-vXnpSO67u__nikXdjDovJlXAIQBL-dveSgSIZfRSiIpqm5gn6rVJ48KrVpTuyWM0E_yVYI4ydvxrI3xnAeTTkpZoGT7IXRhVZdaJ0OwNNT6u7j8WvrwHJnWzHpI9QUOS1gu5fEeULsM19_0FyvlSIheF8FK2eYTA_R0pbGk4o71zDU33HLFQgnRzTAlymmjMr2AC0rO_CbZlrH8YqOX9BkJ3kVzAuJiumPYsGqg0aCS2OhLklLfJ4igbH_XFCRmELLsACx3iSozHhSC2tBpbL69CJM4EBJ01drGvA867chDtf0MgBj4hpOhrQgt2toPcpHgbXvQfgbBQq8WAd0wm3epfwUC4PwIAOEnA4_kkS2R7ASw4giZ7kkiCZ288nYHYvgUGwv_yNuIMSXsnBuX2syN_Jn4j28R4pQaW48PADUDIGslrjg_t2OowG23B2CDAuosfcWzLFs3b0BQe0K7w1blVAVKM-CSOnmkdA38W_YzCG_FUja1wloApaOpzCZ4AxogfjQDTa2RrKCe3M4Z6ucrudFypqP1UhjqrVTYSeY5wNoAL69JdP4fJYW9TFNcbXWne0mlfVA4XAYz05NEBCgqELmAYTvyYi6wYOmjE_qApv5iSsy9pO79cW1xT4uM=w1123-h1497-no?authuser=0', bio: "This is my biography", PostsCounter: 0},
  { name: 'Alex', photo: 'https://lh3.googleusercontent.com/2hD1txiPmYIil0urV0Ib2dhQ5z_EU03AcFnxUbG0-1xbVOo12bgJYxvkAc4yeASaN4EOIhGlpXLNJos4-vXnpSO67u__nikXdjDovJlXAIQBL-dveSgSIZfRSiIpqm5gn6rVJ48KrVpTuyWM0E_yVYI4ydvxrI3xnAeTTkpZoGT7IXRhVZdaJ0OwNNT6u7j8WvrwHJnWzHpI9QUOS1gu5fEeULsM19_0FyvlSIheF8FK2eYTA_R0pbGk4o71zDU33HLFQgnRzTAlymmjMr2AC0rO_CbZlrH8YqOX9BkJ3kVzAuJiumPYsGqg0aCS2OhLklLfJ4igbH_XFCRmELLsACx3iSozHhSC2tBpbL69CJM4EBJ01drGvA867chDtf0MgBj4hpOhrQgt2toPcpHgbXvQfgbBQq8WAd0wm3epfwUC4PwIAOEnA4_kkS2R7ASw4giZ7kkiCZ288nYHYvgUGwv_yNuIMSXsnBuX2syN_Jn4j28R4pQaW48PADUDIGslrjg_t2OowG23B2CDAuosfcWzLFs3b0BQe0K7w1blVAVKM-CSOnmkdA38W_YzCG_FUja1wloApaOpzCZ4AxogfjQDTa2RrKCe3M4Z6ucrudFypqP1UhjqrVTYSeY5wNoAL69JdP4fJYW9TFNcbXWne0mlfVA4XAYz05NEBCgqELmAYTvyYi6wYOmjE_qApv5iSsy9pO79cW1xT4uM=w1123-h1497-no?authuser=0', bio: "This is my biography", PostsCounter: 0},
  { name: 'Leo', photo: 'https://lh3.googleusercontent.com/2hD1txiPmYIil0urV0Ib2dhQ5z_EU03AcFnxUbG0-1xbVOo12bgJYxvkAc4yeASaN4EOIhGlpXLNJos4-vXnpSO67u__nikXdjDovJlXAIQBL-dveSgSIZfRSiIpqm5gn6rVJ48KrVpTuyWM0E_yVYI4ydvxrI3xnAeTTkpZoGT7IXRhVZdaJ0OwNNT6u7j8WvrwHJnWzHpI9QUOS1gu5fEeULsM19_0FyvlSIheF8FK2eYTA_R0pbGk4o71zDU33HLFQgnRzTAlymmjMr2AC0rO_CbZlrH8YqOX9BkJ3kVzAuJiumPYsGqg0aCS2OhLklLfJ4igbH_XFCRmELLsACx3iSozHhSC2tBpbL69CJM4EBJ01drGvA867chDtf0MgBj4hpOhrQgt2toPcpHgbXvQfgbBQq8WAd0wm3epfwUC4PwIAOEnA4_kkS2R7ASw4giZ7kkiCZ288nYHYvgUGwv_yNuIMSXsnBuX2syN_Jn4j28R4pQaW48PADUDIGslrjg_t2OowG23B2CDAuosfcWzLFs3b0BQe0K7w1blVAVKM-CSOnmkdA38W_YzCG_FUja1wloApaOpzCZ4AxogfjQDTa2RrKCe3M4Z6ucrudFypqP1UhjqrVTYSeY5wNoAL69JdP4fJYW9TFNcbXWne0mlfVA4XAYz05NEBCgqELmAYTvyYi6wYOmjE_qApv5iSsy9pO79cW1xT4uM=w1123-h1497-no?authuser=0', bio: "This is my biography", PostsCounter: 0},
  ])

all_users = User.all

all_users.each do |user|
  for j in 1..5 do
    Post.create(title: "Post ##{j}", text: text, postsCounter: 0, LikesCounter: 0, user_id: user.id)
  end
end

all_posts = Post.all

# all_posts.each do |post|
#   for j in 1..5 do
#     Like.create(user_id: all_users[j].id, post_id: post.id)
#     Comment.create(user_id: all_users[j].id, post_id: post.id, text: "I'm #{all_users[j].name} and I'm trying to learn rails.")
#   end
# end