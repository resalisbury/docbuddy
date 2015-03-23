class DocumentPdf < Prawn::Document
  def initialize(doc)
    super()
    @doc = doc
    render_text
  end

  def render_text
    text "Document Id: #{@doc.id}", style: :bold
    move_down 15
    text "Name: #{@doc.name}"
    move_down 15
    text "Color: #{@doc.color}"
    move_down 15
    text "Wish: #{@doc.wish}"
  end
end