# Important practises

* Use the issue tracker of the code platform (aka: github issues + github repo).
* Maintainers SHALL NOT accept their own patches. (Code review, bias)
* If a patch is correct, it shall be accepted without value judgements.
* Correct patches are merged rapidly by maintainers.
* Maintainers should ask for improvement if a patch is incorrect.
* Maintainers should reject a patch if the contributor doesn't respond constructively to improvement requests.
* Value judgements on patches should be expressed by making your own patches as a contributor.
* Maintainers may commit non-source documentation without the patching process.

## Project requirements

* The core problems should be defined.
* The contribution process should be explained.
* A license should be provided.
* Contributors should be identified.

## Correct patches

A patch is correct when:

* The author is identified and reachable.
* It is a minimal and accurate answer for EXACTLY one agreed upon problem.
* It adheres to the code style guide.
* It roughly adheres to architectural design principles.
  (Deviation is allowed when it arguably increases simplicity.)
* It does not include significant code from other projects unless they are the author of the project.
* It compiles cleanly on the target platforms.

## Step by step check list for patches

### Concepts

* **Core problems**: The problems that collectively define the purpose of the product. They should be narrow and well documented.
* **Relating to the core problems**: To relate to one of the core problems means that it either is a step towards solving that core problem, or solving it better than it was before.
* **Proof of a problem**: Proof in this case means both reproduction steps and arguments that it IS a real-life problem people run into.

### Step 1 - Verification

Everything should be positively answered.

- Is there an issue/bug-report that provides PROOF* of the problem?
- Is the problem accurately defined?
- Does the problem relate* to the CORE PROBLEMS* of the project?
- Is there a consensus on the value of fixing this problem?
- Do you know who the author of the code is?
- Do you know how to reach this author?
- Is the contributor the author of the code? (No code from other projects?)
- Does the patch fix the specified problem exactly? (No more and no less?)
- Is the approach to this fix a minimal approach? (No needless complexity?)
- Does the code adhere to the style guides?
- Does the code fit in the general software architecture? (So it is minimal and easy to understand by other developers.)
- Does the code pass testing requirements? (Compiles on the target platforms, passes unit-tests?)

_\* = Explained in Concepts section._

### Step 2 - Follow up

- If problems arise in the step 1 verification points, ask the contributor to fix them. (Maybe help them a bit)
- If the problems from step 1 are not being fixed, reject the patch on the platform used (like github).
- If or once everything from step 1 checks out, mark the patch as correct. (Using a label or something.)
- A maintainer, different from the patch author, rapidly accepts the patch on the platform used (like github).
- Notify the user(s) that reported the corresponding issue/bug-report that their problem may be fixed now.
- Evaluate whether the problem is actually fixed.
- If anyone has a value judgement of a correct patch, encourage them to express it through creating their own patch.