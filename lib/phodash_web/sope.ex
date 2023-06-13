defmodule PhodashWeb.Scope do
  def on_mount(:default, _params, _session, socket) do
    current_user = socket.assigns[:current_user]
    {:cont, Phoenix.Component.assign(socket, :scope, Phodash.Scope.for_user(current_user))}
  end
end
