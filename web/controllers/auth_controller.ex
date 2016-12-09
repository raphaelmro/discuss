defmodule Discuss.AuthController do
    use Discuss.Web, :controller
    alias Discuss.User

    plug Ueberauth


    def callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do
        user_params = %{token: auth.credentials.token, email: auth.info.email, provider: "github"}
        
        changeset = User.changeset(%User{}, user_params)
    end

    #   verify if already exists the signed in user on the database
    defp insert_or_update_user(changeset) do
        
    end
end