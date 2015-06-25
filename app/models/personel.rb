class Personel < ActiveRecord::Base
	has_one :personel_kart
	has_one :is_bilgisi
	has_one :etkinlik_bilgisi
end
