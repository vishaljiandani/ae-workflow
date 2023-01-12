This repo is to simulate what the average Analytics Engineer might do in their day to day.

My motivation for creating this repo stems from the fact that because of the relative newness of this role compared to the traditional data roles out there, there isn't much clarity when it comes to what an AE actually does. I hope this repo helps to clear that up.

Normally, a client/stakeholder will come to you with a data request. This request can range from simple ad hoc tasks to very specific questions that need answering. In this case, I've chosen one such question, which is present in the "query.sql" file.

I've identified 3 data sources that might help answer this question, as well as any future related questions that the stakeholder might have. Being able to predict what your stakeholder might need even before they know it is a vital skill to have as an AE. The 3 json files will be used to give us our answer.

The json files are semi-structured, so I've used Python to try and make sense out of them. After structuring them to some degree, I've drawn an ERD to model how the data would look in a database. It is important to note here that there is no fixed way of modeling data. There are a variety of schemas one could use depending oon the use case. I've gone with 3rd normal form here.
