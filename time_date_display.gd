extends Label3D

var fulltime
var year
var day
var month
var hour
var minute
var second

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_timer_timeout() -> void:
	fulltime = Time.get_datetime_dict_from_system()
	year = fulltime["year"]
	day = fulltime["day"]
	month = fulltime["month"]
	hour = fulltime["hour"]
	minute = fulltime["minute"]
	second = fulltime["second"]
	
	print(str(hour) + ":" + str(minute) + ":" + str(second))
	
	# make so not everything needs to update every second probably
	# make so numbers < 10 have a 0 in front of it
	# have written out month
