defmodule Phodash.Events do
  @moduledoc """
  Defines Event structs for use within the pubsub system.
  """

  defmodule CategoryAdded do
    defstruct category: nil
  end

  defmodule CategoryUpdated do
    defstruct category: nil
  end

  defmodule CategoryRepositioned do
    defstruct category: nil
  end

  defmodule CategoryDeleted do
    defstruct category: nil
  end

  defmodule ItemAdded do
    defstruct item: nil
  end

  defmodule ItemUpdated do
    defstruct item: nil
  end

  defmodule ItemDeleted do
    defstruct item: nil
  end

  defmodule ItemRepositioned do
    defstruct item: nil
  end
end
