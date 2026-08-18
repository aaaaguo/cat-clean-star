# Cat Clean Star — System Test Plan

Run these tests in Processing and record the actual result as Pass or Fail.

| Test ID | Objective | Environment | Steps | Expected Outcome | Actual Result |
|---|---|---|---|---|---|
| TC-01 | Verify cat movement | Processing, complete program running | Press UP, DOWN, LEFT and RIGHT separately | Cat moves in the corresponding direction | Pending |
| TC-02 | Verify star cleaning | Processing, at least one dirty star visible | Move the cat until it touches a dirty star | Star changes from grey/dirty to yellow/clean and count increases by 1 | Pending |
| TC-03 | Prevent repeated cleaning | Processing, one star already clean | Stay on the cleaned star, move away, then touch it again | Star remains clean and count does not increase again | Pending |
| TC-04 | Verify no-contact behaviour | Processing, dirty star visible | Move close to a dirty star without touching it | Star stays dirty and count does not change | Pending |
| TC-05 | Verify canvas boundaries | Processing, complete program running | Hold each arrow key until the cat reaches every edge | Cat remains inside the canvas | Pending |
| TC-06 | Verify completion condition | Processing, five dirty stars visible | Clean all five stars | Cleaned count reaches 5/5 and completion message appears | Pending |
| TC-07 | Verify reset | Processing, after one or more stars are clean | Press R | Cat returns to start, all stars become dirty, count returns to 0 | Pending |

## System Test for Individual Report Question 4

**Test ID:** ST-01  
**Objective:** Verify that a dirty star changes to a clean state exactly once when the player moves the cat into it.  
**Environment:** Processing with the complete Cat Clean Star program running and at least one dirty star visible.  

### Steps
1. Launch the program.
2. Record the current cleaned-star count.
3. Use the arrow keys to move the cat towards a dirty star.
4. Move the cat until it touches the star.
5. Observe the star and cleaned-star count.
6. Keep the cat on the same star for several frames.
7. Move away from the star and return to it.

**Expected Outcome:** The star changes from dirty to clean on first contact and the cleaned-star count increases by exactly one. Remaining on or returning to the same star does not increase the count again.  
**Pass/Fail:** Pending actual execution in Processing.
