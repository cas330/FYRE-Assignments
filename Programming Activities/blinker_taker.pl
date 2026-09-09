# ESP32 MicroPython Starter Program
# Board: ESP32 Development Board
# Purpose: Blinks the onboard LED (GPIO 2) and sends status to REPL console.

import machine
import utime

# ESP32 Onboard LED is typically connected to GPIO 2.
# We initialize pin 2 as an OUTPUT.
LED_GPIO_PIN = 2
led = machine.Pin(LED_GPIO_PIN, machine.Pin.OUT)

print("ESP32 MicroPython program started successfully!")

# Main execution loop
while True:
    # Set GPIO 2 to HIGH (3.3V) - LED turns ON
    led.value(1)
    print("ESP32 LED is ON")
    utime.sleep(1)  # Pause for 1 second

    # Set GPIO 2 to LOW (0V) - LED turns OFF
    led.value(0)
    print("ESP32 LED is OFF")
    utime.sleep(1)  # Pause for 1 second