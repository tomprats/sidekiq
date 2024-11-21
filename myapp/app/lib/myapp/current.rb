module Myapp
  class Current < ActiveSupport::CurrentAttributes
    attribute :favorite_post
    attribute :tenant_id
  end
end
