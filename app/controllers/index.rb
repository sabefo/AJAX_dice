get '/' do
	@roll = Roll.create
  erb :index
end


# QUE HACER?: Convierte esta ruta para que utilice Ajax y si la petición no es de Ajax de igual forma sirva. 
post '/rolls' do
	puts params
	# Si el user nos pasa un valor, lo usamos y so no creamos uno. 
	puts "-"*41
	puts "El valor de params es: #{params[:value].class}"
  value = params[:value] ? params[:value].to_i : nil
	puts "-"*41
  puts "El valor de value es: #{value}"
	puts "-"*41
  @roll = value ? Roll.create({ value: value }) : Roll.create
	puts "-"*41
  puts "El valor de @roll es: #{@roll}"
	puts "-"*41
  @roll = params[:value] ? Roll.create({ value: params[:value].to_i }) : Roll.create
	puts "-"*41
  puts "El valor de @roll es: #{@roll}"
	puts "El valor de params es: #{params[:value].class}"
	puts "-"*41


	roll_error = Roll.create({value: 9})
	puts roll_error.errors.class

  # erb :index  # TIP: Que esta haciendo esto y que debe hacer diferente. 
  	erb :_die_roll, layout: false
end
