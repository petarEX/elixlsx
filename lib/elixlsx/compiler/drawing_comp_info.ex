defmodule Elixlsx.Compiler.DrawingCompInfo do
  alias Elixlsx.Compiler.DrawingCompInfo

  @moduledoc ~S"""
  Compilation info for a Drawing, to be filled during the actual
  write process.
  """
  defstruct rId: "", filename: "drawing1.xml", drawingId: 0, sheet_id: 0

  @type t :: %DrawingCompInfo{
          rId: String.t(),
          filename: String.t(),
          drawingId: non_neg_integer,
          sheet_id: non_neg_integer
        }

  @spec make(non_neg_integer, non_neg_integer, non_neg_integer) :: DrawingCompInfo.t()
  def make(drawingidx, rId, sheet_id) do
    %DrawingCompInfo{
      rId: "rId" <> to_string(rId),
      filename: "drawing" <> to_string(drawingidx) <> ".xml",
      drawingId: drawingidx,
      sheet_id: sheet_id
    }
  end
end
