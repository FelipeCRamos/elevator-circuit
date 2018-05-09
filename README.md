# Elevator Circuit
## Objectives
Implement the VHDL structure of an 15-floor building elevator.

## I/O Interface
### Input
+ Numeric keyboard

### Output
+ Door control (open/close)
+ Motor control (ON/OFF)
+ 2 digit display (current floor)


## Workflow

Always when the user press a key, the andar code for the key is compared with
the current floor.

```python
if( currentFloor != desiredFloor ):
	start(motor)
	for eachFloor in floor:
		display_show(eachFloor)
		if( eachFloor == desiredFloor )
			stop(motor)
			open(door)
```

## Authorship
This project was made by Felipe Ramos and Paulo Augusto for the Logical Circuits
discipline on UFRN.
