# Individual Report – Cat Clean Star Project

## Cover Page
**Name:** Xi Wang  
**Student Number:** 47850299  
**Team Name:** Cat Clean Star Development  
**Team Members:** None – instructor-approved solo team  

# Question 1: Requirements and User Story

## User Story
**As a player, I want to control the cat to move towards and clean dirty stars, so that I can interact with the animation and complete the cleaning task.**

### 1.1 Explain Why This User Story Is Relevant
The selected user story is relevant because it combines the three required project keywords—cat, clean and star—into the main interactive behaviour of the program. The main stakeholder is the player, who expects the controls to be easy to understand and the cleaning action to respond clearly. As the sole developer, I am also a stakeholder because I need to keep the feature technically achievable within the project time and scope. The instructor is another stakeholder because the feature must demonstrate clear requirements, implementation and testing. A possible conflict is that the player may prefer more complex interactions, while I must limit complexity to ensure the program remains reliable and testable. This user story therefore provides a clear link between stakeholder needs, technical implementation and the final interactive outcome.

### 1.2 Acceptance Criteria
1. When an arrow key is pressed, the cat moves in the corresponding direction.
2. The cat remains inside the canvas.
3. When the cat touches a dirty star, the star changes to a clean state.
4. A star that has already been cleaned cannot be counted again.
5. When all five stars have been cleaned, the program displays a completion message.
6. Pressing R resets the stars and cleaned-star count.

These criteria directly describe the behaviour required for the user story to be considered complete. They cover movement, boundaries, cleaning interaction, state management, completion feedback and reset behaviour. Each criterion has a visible outcome that can be checked in the running program, making them suitable for both development and testing.

### 1.3 Testability and Measurability of Acceptance Criteria
All acceptance criteria are testable and measurable because each one has an observable result. Cat movement can be tested by pressing each arrow key and checking whether the cat changes position in the expected direction. Boundary behaviour can be tested by holding each direction until the cat reaches the edge of the canvas. Star cleaning can be tested by moving the cat into a dirty star and confirming that its state and colour change. Repeated cleaning can be tested by touching the same cleaned star again and confirming that the count does not increase. The completion criterion can be tested by cleaning all five stars, while reset behaviour can be tested by pressing R. These requirements are achievable with standard Processing features such as keyboard input, arrays, Boolean values, distance calculations and conditional statements.

### 1.4 Test Plan

| TC ID | Description | Environment | Steps | Expected Outcome | Result |
|---|---|---|---|---|---|
| TC-01 | Test cat movement | Processing, complete program running | Press UP, DOWN, LEFT and RIGHT separately | Cat moves in the corresponding direction | Pass |
| TC-02 | Test star cleaning | Processing, at least one dirty star visible | Move the cat until it touches a dirty star | Star changes from grey/dirty to yellow/clean and count increases by 1 | Pass |
| TC-03 | Test repeated contact | Processing, one star already clean | Stay on the cleaned star, move away, then touch it again | Star remains clean and count does not increase again | Pass |
| TC-04 | Test no-contact behaviour | Processing, dirty star visible | Move close to a dirty star without touching it | Star stays dirty and count does not change | Pass |
| TC-05 | Test boundaries | Processing, complete program running | Hold each arrow key until the cat reaches every edge | Cat remains inside the canvas | Pass |
| TC-06 | Test completion | Processing, five dirty stars visible | Clean all five stars | Count reaches 5/5 and completion message appears | Pass |
| TC-07 | Test reset | Processing, after one or more stars are clean | Press R | Cat returns to start, stars become dirty, count returns to 0 | Pass |

# Question 2: Teamwork and Contribution

## Contributions Overview
**Insert screenshot: GitHub repository → Insights → Contributors.**

### 2.1 My Contributions and Trends
The GitHub contribution history shows that I am the sole contributor to this instructor-approved individual project. My commits document a staged development process rather than one single final upload. I first created the base Processing scene and cat, then added keyboard movement and canvas boundaries, followed by dirty-star objects. The next stage implemented the cat-star cleaning interaction and cleaned-star counter, after which I added the completion message, reset behaviour, project documentation, a system test plan and clearer code comments. Most activity occurred on 18 August 2026 because this was the main implementation and documentation session. The sequence of commits demonstrates progressive development, with each change corresponding to a specific project requirement or Issue rather than combining all functionality into one undocumented update.

### 2.2 Accuracy of the Contributions Overview
The GitHub contribution overview is useful because it provides objective evidence of repository activity, commit timing and authorship. In this project, it correctly identifies me as the only contributor because the instructor approved a one-person team. However, the contribution graph does not fully represent all work involved in the project. Planning the user story, defining acceptance criteria, deciding the visual layout, testing behaviour, identifying edge cases and managing the Project board required additional effort that is not fully represented by the number of code changes. For this reason, I consider GitHub accurate for recorded repository activity but incomplete as a measure of total project effort. The contribution graph should therefore be interpreted together with the Issues, commit history, Project board, test plan and final program behaviour.

### 2.3 Teamwork and Roles
Because my instructor approved me to complete the project as a one-person team, traditional team roles were not divided among several members. I was responsible for requirements planning, programming, testing, GitHub management and project tracking. My development responsibilities included implementing cat movement, drawing the game objects, managing dirty and clean star states, detecting cat-star contact, tracking cleaned stars and adding completion and reset behaviour. Working individually reduced communication delays and avoided merge conflicts because I could make technical decisions consistently. However, it also required stronger self-management because there was no teammate to distribute tasks or provide immediate feedback. To improve the process, I used separate GitHub Issues, explicit acceptance criteria, meaningful commit messages and a structured test plan to create checkpoints similar to those used in a collaborative software project.

### 2.4 Team Concerns
There were no concerns about another team member’s contribution because this was an instructor-approved solo project. The main concern was the lack of independent peer review. In a normal team, another developer could identify unclear logic, unexpected behaviour or missing edge cases before a task was marked complete. In my project, I had to perform both development and review responsibilities myself, increasing the possibility of overlooking a defect. I addressed this by dividing the work into separate Issues, maintaining acceptance criteria and executing system tests that cover normal behaviour, boundaries, repeated contact, completion and reset conditions. A second concern was ensuring that repository activity reflected a genuine development sequence rather than only the final product. Using staged commits and Project tasks helped make the development process more transparent and traceable.

# Question 3: Project Management

### 3.1 Kanban Issue Link
**GitHub Issue:** https://github.com/aaaaguo/cat-clean-star/issues/4  
**Issue Title:** Implement cat-star cleaning interaction

### 3.2 Task Explanation
The selected Project board task was “Implement cat-star cleaning interaction.” The purpose of this task was to connect the required subject, action and object by allowing the cat to clean a star when contact occurred. To complete the task, I used the position of the cat and each star and calculated the distance between them. A loop checks every star, while a conditional statement determines whether the cat is close enough to a star and whether that star is still dirty. When both conditions are true, the star changes to the clean state and the cleaned-star count increases. The Boolean state prevents the same star from being counted repeatedly. This task is important because it creates the main interaction of the program and directly implements the core user story.

### 3.3 Initial Acceptance Criteria
The initial acceptance criteria for this task were: contact between the cat and a dirty star must be detected; the contacted star must change from dirty to clean; the cleaned-star count must increase by one; an already cleaned star must not be counted again; and the program must continue running without errors. These criteria were selected because they cover the essential behaviour of the cleaning interaction rather than simply confirming that code was added. They also provide observable outcomes that can be verified in the complete program. The first two criteria validate collision and state change, the third validates progress tracking, the fourth tests an important edge case, and the final criterion checks that the new interaction does not break normal execution or movement.

### 3.4 Testing and Satisfaction
All initial acceptance criteria were satisfied during testing in Processing. I moved the cat into dirty stars and confirmed that contact was detected, the star changed to the clean state and the cleaned-star count increased by exactly one. I then remained on a cleaned star, moved away and returned to it to confirm that the count did not increase again. The program continued running normally, and all seven planned tests passed. Because this was an instructor-approved solo project, I used a structured self-review rather than peer review. My Definition of Done required: (1) no compilation or runtime errors; (2) all relevant acceptance criteria tested and passed; (3) completed code committed to GitHub; (4) the corresponding Issue updated and closed; and (5) final behaviour matching the user story. These conditions were met before the task was marked complete.

# Question 4: Code and Testing

### 4.1 Link to Commit
**Code-comment commit:** https://github.com/aaaaguo/cat-clean-star/commit/10c08925e78e3758a92fd4b03f0820e8bdb719a8  
**Original cleaning implementation commit:** https://github.com/aaaaguo/cat-clean-star/commit/458d8dbc36fdeb5d37967e32726ec93a40c619cc  
**Final tested program commit:** https://github.com/aaaaguo/cat-clean-star/commit/5c649dbbddabfff9ca02433506ad1fab46e87816

**Insert a screenshot of the `checkStarCleaning()` code from the commit above.**

```java
void checkStarCleaning() {
  for (int i = 0; i < starCount; i++) { // Check every star in the game
    float distanceToStar = dist(catX, catY, starX[i], starY[i]); // Calculate cat-star distance

    if (distanceToStar < 45 && !starClean[i]) { // Detect contact with a dirty star
      starClean[i] = true;                      // Change the star to clean
      cleanedCount++;                           // Increase progress exactly once
    }
  }
}
```

The selected code block controls the main cleaning interaction between the cat and the stars. The `for` loop checks every star so the program can support multiple targets. The `dist()` calculation measures the distance between the cat and the current star. The `if` statement combines two conditions: the cat must be close enough to touch the star, and the star must still be dirty. If both conditions are satisfied, the Boolean value for that star changes to `true` and the cleaned-star counter increases. The `!starClean[i]` condition is important because it prevents the same star from being counted repeatedly. This code therefore demonstrates looping, branching, computation, state management and progress tracking and directly implements the main user story.

### 4.2 System Test
**Test ID:** ST-01  
**Test Objective:** Verify that a dirty star changes to a clean state exactly once when the player moves the cat into it.  
**Test Environment/Conditions:** Processing with the complete Cat Clean Star program running and at least one dirty star visible.  

**Test Steps:**
1. Launch the program.
2. Record the current cleaned-star count.
3. Use the arrow keys to move the cat towards a dirty star.
4. Move the cat until it touches the star.
5. Observe the star and cleaned-star count.
6. Keep the cat on the same star for several frames.
7. Move away from the star and return to it.

**Expected Outcome:** The star changes from dirty to clean on first contact and the cleaned-star count increases by exactly one. Remaining on or returning to the same star does not increase the count again.  
**Pass/Fail Status:** **Pass**

The observed result matched the expected outcome. The star changed to the clean state on first contact, the count increased exactly once and repeated contact did not increase the count again. The cat remained controllable and no runtime error occurred. This is a system test because it verifies the cleaning code while it is integrated with keyboard movement, collision detection, star-state management and the cleaned-star counter in the complete running program.

# Evidence Checklist Before PDF Submission
- [x] Name and Student Number entered.
- [x] Complete program run successfully in Processing.
- [x] TC-01 to TC-07 executed and passed.
- [ ] Insert GitHub Insights → Contributors screenshot.
- [x] Project Board screenshot is available from the project setup/development evidence.
- [ ] Insert Issue #4 screenshot showing title and acceptance criteria.
- [ ] Insert Question 4 commit/code screenshot.
- [x] Running Processing program screenshot available.
- [ ] Confirm completed Issues are shown as Done/Closed in GitHub Project.
- [ ] Export the final report as PDF and keep it within the page limit.
