defmodule Libraries do
  def format(), do: :io.format("Some info ~10.2f~n",[4444.4325])

  def path(), do: System.get_env("PATH")

  def cwd(), do: System.cwd()

  def ls(), do: System.cmd("ls",["."])

  def get_extension() do 
    Regex.run ~r{\..*$}, "chris/myfile.exs" 
  end

end
