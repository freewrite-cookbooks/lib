module Services

	def has_service?(service_name)
		return system("service --status-all 2>&1 |grep -q #{service_name}")
	end

end
