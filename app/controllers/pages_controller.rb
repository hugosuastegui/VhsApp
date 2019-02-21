class PagesController < ApplicationController
  def inicio
    @page_title = "VHS | Inicio" 
  end

  def nosotros
    @page_title = "VHS | Nosotros"
  end

  def proyectos
    @page_title = "VHS | Proyectos"
  end

  def contacto
    @page_title = "VHS | Contacto"
  end

  def intranet
    @page_title = "VHS | intranet"
  end
end
