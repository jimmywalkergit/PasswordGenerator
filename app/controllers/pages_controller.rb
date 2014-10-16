class PagesController < ApplicationController


  def Homepage
  end

  def Page1
  end

  def Page2
  end

  def testinput
  forminput = params['myform']['comments']

  @formstring = forminput + " this went to the server!!!!!!!"



  end

  def stringsub
forminput = params['mystring']

  formstring = forminput + " this went to the server"


  end


end
