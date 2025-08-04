// Package weather provides tools 
// to forecast the weather.
package weather

// CurrentCondition is a string that should tell us the current condition.
var CurrentCondition string
// CurrentLocation is a string telling us where we are located.
var CurrentLocation string

// Forecast returns a string with the forecast for the given city and condition.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
