class PagesController < ApplicationController
  def home
    @page_title = 'Projeto Exemplo'
    @page_description = 'Projeto que mostra como aplicar regras básicas de SEO numa aplicação Ruby on Rails.'
    @page_keywords    = 'SEO, Ruby on Rails, exemplo, Ruby, Search'
  end
end
