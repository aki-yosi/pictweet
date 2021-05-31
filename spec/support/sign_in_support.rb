modele SingnInSupport
    def sign_in(user)
        visit new_user_session_path
        fill_in 'Email', user.email
        fill_in 'Password', user.password
        find('input[name="commit"]').click
        expect(current_path).to eq(root_path)
    end
end