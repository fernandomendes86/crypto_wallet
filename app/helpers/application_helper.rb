module ApplicationHelper

	def locale
		I18n.locale == :en ? "en-US" : "pt-BR"
	end

	def data_br(data_us)
		data_us.strftime("%d/%m/%Y")	
	end

	def ambiente_rails
		return "desenvolvimento" if Rails.env.development?
		return "produção" if Rails.env.production?
	end

	def mining_types_options(coin)
		options_for_select(MiningType.all.collect{ |m| [m.description, m.id] }, selected: coin.mining_type.id)
	end
end
