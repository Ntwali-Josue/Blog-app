require 'rails_helper'

describe 'Users Index Page', type: :feature do
  context 'when successfull' do
    before :each do
      @user1 = User.new(name: 'josh', bio: 'josh bio', email: 'josh@josh', password: '123456',
                        password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
      @user2 = User.new(name: 'rafael', bio: 'rafael bio', email: 'rafa@rafa', password: '123456',
                        password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
      @user3 = User.new(name: 'promise', bio: 'promise bio', email: 'promise@promise', password: '123456',
                        password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
      @user1.save
      @user2.save
      @user3.save
      visit 'users'
    end

    it 'should see the username of users in users index page.' do
      expect(page).to have_content(@user1.name)
      expect(page).to have_content(@user2.name)
      expect(page).to have_content(@user3.name)
    end

    it 'should see the photo of users in users index page.' do
      expect(page).to have_css("img[src*='https://lh3.googleusercontent.com/fife/AAWUweWLFQK4mPB-oCOL-ayN0xUzYQ1anKvJCmL2oQOC_bcgfLKAcnTaWIGCHbKQRAtBrAQPikF7JJU4FisYOGUJcya10xy2fQ3R0Tm1VW9SseDn059OUBVy3Hrh9tIW3B7AlYCY0B0ae21Lmumzq8I2tLWeIoYzN9V6F-fdG9xdX6Y8bEok6sjBOvoKCxOvf_IJmK52VWGzGpSlv-1S70Xh5ZwhB05EPw8ha1hDmGZ3B9OBHofTHM79YLMzjBuST7nUBmkI6SX9yxQ8yXMnriRu3A64zKF_UuUibmstio746_HJ2das5XyVNic0YgHXbYnEoTEautpe9kwrMtOaD6lW2RZeK7im0ph2T93O3hazLb-solAfVKu7bZ48VSdulVqnZDqWEndI8IJpefNq7xJ74Gqrlg9j4bu9450_SYrye1XNunBnf6s-BmIwgDMDg_NeeHzsdn8PP_34otvrCaU3Gg9PLEWWrpgiBKpMpLtPWMmNOgQ0AMmK6RnDhB1oLEhKk0xckZku2wLaAEZaDGPx72cR6GmjsqdAcbrHc8yVLekEVK4NOLf42OeOUUxeJNTjGTPGTZrc1Z5jbmsP4Fe5v3HIrdhCGxGNn9paAZhqTpkGSR7P7jN52q-yRqNd1tPlRJwjfDoT7sqLbyK-wGZ1VrrcJw48Z5hzT4s_pL8jfcYjH5-4VpVXh7YLRAPdTAhZikWTTvJefP1r6PO06pzIlvwPLhxDR109v0W6QNw4zBt6qUAPQmzwUp4P7vS0BVqzx-E6fKulcnMZsU715FqAFL84t3UxXnQMrJvPjyjpL3U425TRke8_OnvBoWx_p15yG1aObe6J5QQfhW9YvlB3n71xSwHH27qL0ktl_k7mU8bJRscx8mowsfLV5XgzgFJITcXWdkiE8c_xzX-kJxD7Rb9Jtk76x6OI3bOHLle89fJozc9R2Gzf_iKzegB1YaXa9SOqDVLl77kR-Vjb_c5ZbBpzGv8Jnvwp3RSyFBlAfOo-LAfuCYj0lgeMvIeXFnYgbqPpeE1q-ShAH_kjuEWvYpuF4yFVU23iC5lzI3zjNJuC-DhWTwBXuOtdHURPVOFxGXJocJjIgKNhOMA3EofgJ8J0EmM1b-eZWuZwCEiYFh9IXePr8wIVC0hatuivrjgUbJWkmg_PWXS9MY9ZXDN1ttxpgJI38Rw2w8aYNnwjqO7JkWyO7lz-u83kpOj_X9iX325xpLhsNq8jWppAvPm2bImHYeXNs0b8a61HHuPUbJGMbmD3cPoyEruAk5gFiYvixYVO-GJoToGApkFmVrYZEwZkORYkDhi-GUz9HPUp2-DL7JCRzcPzu79hQJYqm7Vw1NWRN4qHnAZhqnXvaOGba1j-uWH-S1RL_WG_int7Qn9hBal6mtBXoGl7J7iHj9Wmm7v1vO5pYtStB-ilufXrF9CrC1GH-eq_7sUvhQ9nQEYQJU6E8hwV5eWlrdt080oHrJJjiSc3lmUMEV9yrc17HGrBkpwPnT6feReiwKiJ5n9yT0LWjmnm7nipodek2KfKUAxoeYigU9fxKNKSjYuhVgWJ-EuxZ07uNPAGxkduxfScFDYGaM2o52TqZdAZi-615z-L7aqbLPY5y8_jP23cdmrmhQSiNpcSmqoF8ZpDN0xu665pgf30onuVlEPOmW4Df3yKv-WfY3a4NiARnrfbXNWrjLsPerxZNUtRkXe46kz2FSrIK735eCpFj1zkk7h4TnMtda30oEaUl3Mc-Y3-1ycDHLyDKxpSSrboPJW5Kp5q-Ww4NCN7Xn9iCWAB9KtZ3K6P0PxB3CG5eOsUzMHWH8bsrtKDYupZIxmupDP77_3TXNbTM_yCbqHnqFai8bmW046ylqzx7ZlVzVnMOaLsaEzwV6l1G4d8Fi0zlUaS0hXW-f-G1spmfh_BXXDLSUayI7czJBymfIYhsrm_0LwIzZvgKJyJFNZDya3M69-Se72GAP1lr_YCzWhFQNCZWwNiLblpcdq6GXGnvxH43Uv1vVjuVVMixmtUGX4fV9d9lMA0itlaWUCW1hvcuSQ7zSA2zBzQTwdkTifV-3yHnU0ZiRW3YCm-oOIDdSgUJfafNV3e2Pa52xZ9OyojrKB6n8wqt8USAyhtF7q32xyLlSzkUUgyi61NBnPU_RaRDxvX1NyzPKcWlMBYG703sw4C4VwnMoViWyAJWgsR2FQZvTOGqOnhy_G8gQm5hrwhC8rNawyQtX2Bw62e6dWhjUnPOFbAbXX_M8qAKkJfBVq4UHfL61ujWZyaH18CjkIm9bc-w10MW2U_EnprzUHiZo4z0nysz9KuX_Da2LCIOSwx0gyM8rXewHcDGFMoFxbakPtjoU2dbCL7j_gqkLtIaxbtg-pRiic0CLcc8Rbs3CqPqJBtKmFVbjUe_bW6YLpzD-FRYYsBsdVjB75y0-1IBdnyQtjzdA99Wml2CzlslN6S2wpR8Yz4oBY_udm2dW5LZywZdEE2TGqIOWW9_3SuH37unhmHMrq_3LWx1YhFrJzIdFt5gQG82BamF0awijVTluCHFcJMiX6gX8-ewUliqm12iC2u3NRegDD9mE2NYawk9_murSekjFBntZUcd-8DZV7cUR_0GpzpnCnW7nWKw3mcxKfTnf44usH04ATzthiEauXDwraeXHgpGDWv3qPj_5okdO8FinuMNJKhz05rnZR9XLPgegbqwMqrBQ5h1uB1e96FWnLHUdxF6SwKj0qnmcf3SHrOxmDCSYIfxuUMnau4GuwYgM_8lJNrPEvTY5Qi-SqjP6hpg1ZP72evRJ9a7968epncDOZYwJCjNOcLkGFjcALAgy9cfBFTBAtRgj-VLDwVxoLpfUzNgZqLU26eFLXyPmfAvDNUCczySUYwmOnVQWMAhvV9wnzCayIC8EoEtEQNayYqhZqZHZURdIqBpDN82U1VDeTEH7g2BBDHdA_LJ1ArdO4y6GT0EtHdVZhFdb08Atq3PQErROFYjgE_zMORkkl1_QaPRW_NfyJ3AwxR98d83XaYEv0iZf-XS7769TMrHIO7Z6Ya8JzSIqMw5NTWOxBIENogYSn6-rVnqbQz2AcPsk0SmJGywWxzVE6LX616_18SfwaTmRW9mbkoAFOPo0dzxdHPLdNSSfkCQTtjSVlOpxhtm51uHHv402BxcDi2nRk7NpZ_p4hEeAGrnMpYlC6AaMQX0cPvECKHE7NtcKqlFTAwznN3460rLAv0E07iRuAqeJNqqyjF_7ztpJHUD7GYS2PVfCNV9h02jf-xjUwic_4PlrI_758OE-0yAntpF_aRLJhVq9QcLwizxDaUlyArcdpqe0FbcG5QAjXg7gOJQQ9lS1_GessJDA4ZV6C-pZibK3sQObS66aEiDDX992IAVA9pT1s6r2Ap1yPnunDIQPscJsX8VQfDKTitMPb-cHWnWh9kcwNcNiqtf5Ey17vJARvqjlRUfwIOJ4Kyxj1p2R-8fCIUJv4ruAYeeLpYwtajy15u_TQN4pOxahA_Ejf7bT_FPRgjfX5B2eTq5BQnlN-xRqO33PydQhxNV9EDQ-PhHVy6HaJ9ZEm6dx3TWqzGV3rhIL0WNyYtGUw4mcbNZs_3aAVlYznnz65sqhD_czBPR1aM2AXCnQAxpfw4dTQ3JggAh4vtkipT0LblS1M81j8U239MmzZcyQ7ZQUHAlO6R3AVkH7ul5NiuuV7-yBhoXiXNhgbace7wvU7t3lHVL3OP0upchrB2qdva9zzmL2shvqK_25Qo=s1497-w1123-h1497-no?authuser=0']")
    end

    it 'should see number of posts for a user' do
      expect(page).to have_content(@user1.posts.count)
    end

    it 'should directs to the show page if user is clicked' do
      click_link(@user1.name)
      expect(current_path).to eq("/users/#{@user1.id}")
    end
  end
end
