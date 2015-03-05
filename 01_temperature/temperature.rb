def ftoc(ftemp)
	ftemp = ftemp.to_f
	ctemp = 0.56 * (ftemp - 32)
	return ctemp.to_i
end

def ctof(ctemp)
	ctemp = ctemp.to_f
	ftemp = (ctemp * 1.8) + 32
	return ftemp
end
