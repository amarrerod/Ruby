
 nombres = 'Dave Thomas:Andy Hunt:Chad Fowler'.split(':')
 nombres.each do  |valor|
  for i in 1..valor.length
    first_name, last_name = valor[i].split(/\s+/)
            outName = "#{last_name} #{first_name[0]}"
            ( " #{last_name} " + " " + first_name[0] + " " )
           end
end
