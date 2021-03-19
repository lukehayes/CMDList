# Module contains helper functions return ANSI escape
# codes that change the output color/look of text.
module Color

  def self.clear
    "\e[00;00m"
  end

  def self.red(str)
    "\e[00;31m #{str} #{clear}"
  end

  def self.green(str)
    "\e[00;32m #{str} #{clear}"
  end

  def self.yellow(str)
    "\e[00;33m #{str} #{clear}"
  end

  def self.blue(str)
    "\e[00;34m #{str} #{clear}"
  end

  def self.strike(str)
    "\e[00;9m #{str}  #{clear}"
  end

  # Color the output green and then strike-through.
  def self.completed(str)
    "\e[32;09m #{str}  #{clear}"
  end

end
