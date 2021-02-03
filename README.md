## The AWS Developer Challenge for Data Engineers Section A
![SectionA](/media/BMWInterviewDiagram.png)

## The AWS Developer Challenge for Data Engineers Section B

1A: Data Source - Batched data ie: when a company only wants to ingest data once every 6 months

1B: Data Source - Streaming data this is when a company wants to store data as it is available ie: storing plant sensor information

2: The API Gateway is used to provide a contact point for the company to be able to send their data to the Data Lake. The api is to allow a company to plug into the cloud infrustructure

3: The lambda function is used to be able to distinguish what kind of data it is receiving and route the data depending on if it is batched or streamed data.

4: The Kinesis stream is used for streamed data and the reason for its use is that it can in real time transform the data into the way we want it stored in S3

5A: Prepared data store is where the data is in its final form and is ready for consumption by either business or other applications

5B:

5C:

6A:

6B:

6C:

6D:

7:

8:

9:

10:

11:

12:

13:

14:



## The AWS Developer Challenge for Data Engineers
### Instructions

In general feel free to expand/change the challenge in any way you like, just explain your solution and decision making, any concerns around it or limitations etc.

Some information/content is left out intentionally to validate your working experience, please fill in the missing parts.

> Fork this repo with your solution. Ideally, we'd like to see your progression through commits, and don't forget to update the README.md to explain your thought process.

**Please do not reference any websites or published articles. We are looking for original content!**

Please let us know how long the challenge took you. We're not looking for how fast or detailed you are. It's just to give us a clearer idea of what you've produced in the time you decided to take. Feel free to go as big or as small as you want.

### AWS Data Engineer | Challenge Information

This company is ingesting data into a 'data lake' running AWS. Below find a picture of the AWS components used for this company's architecture. 

![AWS-COMPONENTS](/media/awscp.png)

#### Section A
Use the components shown above and create an architecture with your tool of choice (powerpoint / draw.io / etc) showing how to ingest data from an on-premise site into AWS. 

Upload the diagram/picture into the Git repository and indicate where it's saved. Use the given components as far as possible to illustrate your solution.

##### Hints
* Focus on *low cost & high* performance.
* All the data are stored in S3 buckets.
* Athena is used to query the data.
* Show how you will use Step Functions to orchestrate the *ingest* process.
* AWS DynamoDB / CloudWatch must be used.
* Glue Jobs should be used to do the ingest.
* CloudFormation output is a CodeBuild Project
* Git is used to save the terraforms and python / pyspark code.
* You do not have to design/depict the CI/CD, assume that it's already in place.
* Look at the available .tf files to get an understanding of the architecture.
___

#### Section B
Within this Readme.md describe the architecture above, giving detail when and how you would use the selected components.
##### Hints
* Consider aspects like security (iam / firewalls / vpc / security groups / roles)
* To each component used, give a detailed description on how it fits into the solution, please do not reference existing AWS documentation, use your own words! Feel free to document your thought process. We are interested to find out how you think.
___

#### Section C
Within the Git Repository Structure:
* Modify the CloudFormation Template [CFN/seed.yaml] in order to create a CodeBuild Project.
* Update the _glue_jobs.tf_, _main.tf_ and _output.tf_ terraform files. 
* Provide the python script that will be used within the glue job, using either python shell or spark, think here about using DynamoDB to keep certain job settings and table structures for S3.
___

### Submit it

Please use a private repo just email us when you are done. 

### My Solution 
Use this area to describe your solution as requested in *_Section B_*. 


### Additional Comments / Information / Concerns
Add info here.
