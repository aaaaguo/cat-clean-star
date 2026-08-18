# Individual Report – Cat Clean Star Project

## Cover Page
**Name:** [Your Name]  
**Student Number:** [Your Student Number]  
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
See `TEST_PLAN.md` in the repository. Use TC-01 to TC-07 and replace Pending with the actual Pass/Fail result after running the program in Processing.

# Question 2: Teamwork and Contribution

## Contributions Overview
**Insert screenshot: GitHub repository → Insights → Contributors.**

### 2.1 My Contributions and Trends
The GitHub contribution history shows that I am the sole contributor to this instructor-approved individual project. My commits document a staged development process rather than one single final upload. I first created the base Processing scene and cat, then added keyboard movement and canvas boundaries, followed by dirty-star objects. The next stage implemented the cat-star cleaning interaction and cleaned-star counter, after which I added the completion message, reset behaviour, project documentation, a system test plan and clearer code comments. Most activity occurred on 18 August 2026 because this was the main implementation and documentation session. The sequence of commits demonstrates progressive development, with each change corresponding to a specific project requirement or Issue rather than combining all functionality into one undocumented update.

### 2.2 Accuracy of the Contributions Overview
The GitHub contribution overview is useful because it provides objective evidence of repository activity, commit timing and authorship. In this project, it should correctly identify me as the only contributor because the instructor approved a one-person team. However, the contribution graph does not fully represent all work involved in the project. Planning the user story, defining acceptance criteria, deciding the visual layout, testing behaviour, identifying edge cases and managing the Project board may require significant effort without producing a large number of code changes. For this reason, I consider GitHub accurate for recorded repository activity but incomplete as a measure of total project effort. The contribution graph should therefore be interpreted together with the Issues, commit history, Project board, test plan and final program behaviour.

### 2.3 Teamwork and Roles
Because my instructor approved me to complete the project as a one-person team, traditional team roles were not divided among several members. I was responsible for requirements planning, programming, testing, GitHub management and project tracking. My development responsibilities included implementing cat movement, drawing the game objects, managing dirty and clean star states, detecting cat-star contact, tracking cleaned stars and adding completion and reset behaviour. Working individually reduced communication delays and avoided merge conflicts because I could make technical decisions consistently. However, it also required stronger self-management because there was no teammate to distribute tasks or provide immediate feedback. To improve the process, I used separate GitHub Issues, explicit acceptance criteria, meaningful commit messages and a structured test plan to create checkpoints similar to those used in a collaborative software project.

### 2.4 Team Concerns
There were no concerns about another team member’s contribution because this was an instructor-approved solo project. The main concern was the lack of independent peer review. In a normal team, another developer could identify unclear logic, unexpected behaviour or missing edge cases before a task was marked complete. In my project, I had to perform both development and review responsibilities myself, increasing the possibility of overlooking a defect. I addressed this by dividing the work into separate Issues, maintaining acceptance criteria and creating system tests that cover normal behaviour, boundaries, repeated contact, completion and reset conditions. A second concern was ensuring that repository activity reflected a genuine development sequence rather than only the final product. Using staged commits and Project tasks helped make the development process more transparent and traceable.

# Question 3: Project Management

### 3.1 Kanban Issue Link
**GitHub Issue:** https://github.com/aaaaguo/cat-clean-star/issues/4  
**Issue Title:** Implement cat-star cleaning interaction

### 3.2 Task Explanation
The selected Project board task was “Implement cat-star cleaning interaction.” The purpose of this task was to connect the required subject, action and object by allowing the cat to clean a star when contact occurred. To complete the task, I used the position of the cat and each star and calculated the distance between them. A loop checks every star, while a conditional statement determines whether the cat is close enough to a star and whether that star is still dirty. When both conditions are true, the star changes to the clean state and the cleaned-star count increases. The Boolean state prevents the same star from being counted repeatedly. This task is important because it creates the main interaction of the program and directly implements the core user story.

### 3.3 Initial Acceptance Criteria
The initial acceptance criteria for this task were: contact between the cat and a dirty star must be detected; the contacted star must change from dirty to clean; the cleaned-star count must increase by one; an already cleaned star must not be counted again; and the program must continue running without errors. These criteria were selected because they cover the essential behaviour of the cleaning interaction rather than simply confirming that code was added. They also provide observable outcomes that can be verified in the complete program. The first two criteria validate collision and state change, the third validates progress tracking, the fourth tests an important edge case, and the final criterion checks that the new interaction does not break normal execution or movement.

### 3.4 Testing and Satisfaction
The task should only be marked complete after the tests in `TEST_PLAN.md` are executed in Processing. The key checks are TC-02, TC-03 and ST-01. A structured self-review is appropriate because this is an instructor-approved solo project. The Definition of Done used for this project is: (1) the code runs without compilation or runtime errors; (2) all relevant acceptance criteria are tested and pass; (3) the completed code is committed to GitHub; (4) the corresponding GitHub Issue is updated after completion; and (5) the final behaviour matches the user story. After running the program, record the actual Pass/Fail result and update this paragraph so it states only results that were genuinely observed.

# Question 4: Code and Testing

### 4.1 Link to Commit
**Recommended code commit:** https://github.com/aaaaguo/cat-clean-star/commit/10c08925e78e3758a92fd4b03f0820e8bdb719a8

Use this code block from `checkStarCleaning()`:

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
**Environment:** Processing with the complete program running and at least one dirty star visible.  

**Steps:**
1. Launch the program.
2. Record the current cleaned-star count.
3. Use the arrow keys to move the cat towards a dirty star.
4. Move the cat until it touches the star.
5. Observe the star and cleaned-star count.
6. Keep the cat on the same star for several frames.
7. Move away from the star and return to it.

**Expected Outcome:** The star changes from dirty to clean on first contact and the cleaned-star count increases by exactly one. Remaining on or returning to the same star does not increase the count again.  
**Pass/Fail Status:** [Enter actual result after running the program]

This is a system test because it evaluates the cleaning logic while it operates as part of the complete running program. It checks keyboard movement, collision detection, star state management and progress tracking together rather than testing an isolated function.

# Evidence Checklist Before PDF Submission
- [ ] Fill in Name and Student Number.
- [ ] Run `CatCleanStar.pde` in Processing.
- [ ] Complete TC-01 to TC-07 in `TEST_PLAN.md` with actual Pass/Fail results.
- [ ] Insert GitHub Insights → Contributors screenshot.
- [ ] Insert GitHub Project Board screenshot.
- [ ] Insert Issue #4 screenshot showing title and acceptance criteria.
- [ ] Insert the Question 4 commit/code screenshot.
- [ ] Insert one screenshot of the running Processing program.
- [ ] Update Issue states only after the relevant tests genuinely pass.
- [ ] Export the final report as PDF and keep it within the page limit.
