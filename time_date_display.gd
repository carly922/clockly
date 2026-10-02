extends Label3D

const MONTHSTEXT = ["" , "January" , "February" , "March" , "April" , "May" , "June" , "July" , "August" , "September" , "October" , "November" , "December"]

var fulltime
var year
var day
var month
var month_string
var hour
var display_hour # later functionality: if set to 12hr clock, modulus 12
var minute
var display_minute
var second
var display_second

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# Called every second
func _on_timer_timeout() -> void:
	fulltime = Time.get_datetime_dict_from_system()
	year = fulltime["year"]
	day = fulltime["day"]
	month = fulltime["month"]
	hour = fulltime["hour"]
	minute = fulltime["minute"]
	second = fulltime["second"]
	
	month_string = MONTHSTEXT[month] if (month >= 1 and month <= 12) else "Unknown"
	if(minute < 10):
		display_minute = "0" + str(minute)
	else:
		display_minute = str(minute)
	
	if(second < 10):
		display_second = "0" + str(second)
	else:
		display_second = str(second)
	
	text = (month_string + " " + str(day) + ", " + str(year) + "\n" + str(hour) + ":" + display_minute + ":" + display_second)
	
	
		
	
	# make so not everything needs to update every second probably
	# mod operator to sort out 1st,2nd,3rd, etc
