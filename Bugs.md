#  <#Title#>

Bug #1.  Expected to decode Array<Any> but found a dictionary instead. Line 37 in MessageThreadsController.
Fix: Map the values as a Dictionary 

Bug #2. Wrong Coding Key. "messageText" is supposed to be "text" as the mock data shows.  Line 48 in MesssageThread.

Bug #3. Missing retrurn call on Do,Try Catch for createMessageThread. Line 65
Fix: Added 'return'

Bug #4. Missing Resume on Data Task for createMessagethread
Fix: Added '.resume()'


Bug #5. Send Button does not work properly. No Action called.

Bug #6. Typo Error on segue for 'AddMessage'
