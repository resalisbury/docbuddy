class DocumentPdf < Prawn::Document
  def initialize
    super
    text "Document"
  end
end