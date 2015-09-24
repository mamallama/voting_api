Normal Mode

For this project, you will be building a Rails-based application which serves up only an API. This API will be responding with JSON. The API must have the following actions in the following locations:

/candidates
/Based on a candidates table, with at least name, hometown, district, and party attributes
/index action
show action
/voters
/Based on a voters table, with at least name and party attributes
create action
show action, with token authentication to prove that you are the voter
update action, with token authentication to prove that you are the voter
/votes
/Based on a votes table, with at least voter_id and candidate_id attributes
/Each voter can cast at most one vote, period.
create action, with token authentication to show that you are the voter
destroy action, with token authentication to show that you are the voter
index action (which shows all candidates and a number of votes for each)
See the notes section below for links that will be helpful. Your easiest path will be to accept the token from the user as a parameter.

Hard Mode

Extend the application to allow for voters to vote multiple times (one for each race, e.g. Senate race). Add the following API actions:

/api/v1/race
Based on a races table, with at least a name attribute
index action
show action
Modify the candidates, voters, and votes models and controllers as follows:

candidates belong to a race
votes belong to a candidate, a voter, and a race
votes are unique for a voter and a race, not just one vote per voter
votes index is grouped by race
votes index shows number of votes per candidate, and is sorted by number of votes (within the race)
Also, modify your token auth to receive the token in the request header rather than as a parameter.
