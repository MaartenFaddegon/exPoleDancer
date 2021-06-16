defmodule MyException do
  # used in the ExceptionalsErrorMonad example
  defexception [:reason]
  @type t() :: %__MODULE__{
          reason: atom | nil
        }

  @impl Exception
  def exception(reason) do
    %__MODULE__{reason: reason}
  end

  @impl Exception
  def message(%__MODULE__{reason: reason}) do
    to_string(reason)
  end
end
