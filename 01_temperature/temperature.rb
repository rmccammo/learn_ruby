#write your code here
def ftoc(current_temp)
	return (current_temp.to_f - 32) * (5.0/9.0)
end

def ctof(current_temp)
	return (current_temp.to_f * (9.0/5.0)) + 32
end