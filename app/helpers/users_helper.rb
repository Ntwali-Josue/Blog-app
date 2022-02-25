module UsersHelper
  def image_url(user)
    user.photo || 'https://lh3.googleusercontent.com/2hD1txiPmYIil0urV0Ib2dhQ5z_EU03AcFnxUbG0-1xbVOo12bgJYxvkAc4yeASaN4EOIhGlpXLNJos4-vXnpSO67u__nikXdjDovJlXAIQBL-dveSgSIZfRSiIpqm5gn6rVJ48KrVpTuyWM0E_yVYI4ydvxrI3xnAeTTkpZoGT7IXRhVZdaJ0OwNNT6u7j8WvrwHJnWzHpI9QUOS1gu5fEeULsM19_0FyvlSIheF8FK2eYTA_R0pbGk4o71zDU33HLFQgnRzTAlymmjMr2AC0rO_CbZlrH8YqOX9BkJ3kVzAuJiumPYsGqg0aCS2OhLklLfJ4igbH_XFCRmELLsACx3iSozHhSC2tBpbL69CJM4EBJ01drGvA867chDtf0MgBj4hpOhrQgt2toPcpHgbXvQfgbBQq8WAd0wm3epfwUC4PwIAOEnA4_kkS2R7ASw4giZ7kkiCZ288nYHYvgUGwv_yNuIMSXsnBuX2syN_Jn4j28R4pQaW48PADUDIGslrjg_t2OowG23B2CDAuosfcWzLFs3b0BQe0K7w1blVAVKM-CSOnmkdA38W_YzCG_FUja1wloApaOpzCZ4AxogfjQDTa2RrKCe3M4Z6ucrudFypqP1UhjqrVTYSeY5wNoAL69JdP4fJYW9TFNcbXWne0mlfVA4XAYz05NEBCgqELmAYTvyYi6wYOmjE_qApv5iSsy9pO79cW1xT4uM=w1123-h1497-no?authuser=0'
  end

  def post_counter(user)
    user.PostsCounter || 0
  end

  def posts?(posts)
    posts.empty? ? 'You have no posts yet, Try to add a post 😊' : "#{@user.name}\'s recents posts"
  end
end
