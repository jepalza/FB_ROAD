#ifndef FBSFML_SENSOR_BI
#define FBSFML_SENSOR_BI

#include once "inc/Window/Types.bi"
#include once "inc/System/Vector3.bi"

type sfSensorType as long
enum
  sfSensorAccelerometer,    ' Measures the raw acceleration (m/s^2)
  sfSensorGyroscope,        ' Measures the raw rotation rates (degrees/s)
  sfSensorMagnetometer,     ' Measures the ambient magnetic field (micro-teslas)
  sfSensorGravity,          ' Measures the direction and intensity of gravity, independent of device acceleration (m/s^2)
  sfSensorUserAcceleration, ' Measures the direction and intensity of device acceleration, independent of the gravity (m/s^2)
  sfSensorOrientation,      ' Measures the absolute 3D orientation (degrees)
  sfSensorCount             ' Keep last -- the total number of sensor types
end enum

extern "C"

declare function sfSensor_isAvailable(byval sensor as sfSensorType) as sfBool
declare sub      sfSensor_setEnabled(byval sensor as sfSensorType, byval enabled as sfBool )
declare function sfSensor_getValue(byval sensor as sfSensorType) as sfVector3f

end extern

#endif ' FBSFML_SENSOR_BI
