class Images < ActiveRecord::Base
  belongs_to :project
    
    has_attached :image, processor: :image, styles: {
      small:   { size: '140x140>'},
      large:   { size: '160x160<'},
      default: { size: '160x120#'},
    }

    after_save do
      remote.encode(self.image.url)
    end
    
end
