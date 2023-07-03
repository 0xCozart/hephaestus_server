# Composite IDs

| model/file               | id                                                              | composite order |
| ------------------------ | --------------------------------------------------------------- | --------------- |
| profile                  | kjzl6hvfrbw6c7m2o4v21vs0zc5b7y4lxrepf67z42ydmifpcnvxtby4fhu6mhl | 1               |
| dao                      | kjzl6hvfrbw6c5e8lzp8pes8n3yrq5o3kai7el3yi7oqy44d85oksz90lczdfte | 2               |
| membersDaoProfile        | kjzl6hvfrbw6c8sng6iui873clf3hq4lom692367zm0mmqo588639t9i22busph | 3               |
| relations                | kjzl6hvfrbw6c9z2icyjqjgwdgxdhnpn87ruzqybhubv3djnf27avbd2w86f3hf | 4               |
| profileWithDaoList       | profile + relations                                             | 5               |
| daoWithMemberList        | dao + relations                                                 | 6               |
| membersDaoProfileWithDao | membersDaoProfile + relations                                   | 7               |

profile <---> dao
<---> daoProfile

dao <---> daoProfile

create profile comp
create dao comp
create members comp (includes dao model)
create relation comp
create new profile comp with list of daos and members
create new dao with list of members
create new daoProfile with DAO property pointing to dao in relation container
