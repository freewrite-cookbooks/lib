module Credentials

	def fetch_credentials(group, key, defaults = {})
		return defaults unless group && key
		return (defaults || {}).merge(data_bag_item('credentials', group).fetch(group, {}).fetch(key, {}))
	end

end
