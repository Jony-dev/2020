## The AWS Developer Challenge for Data Engineers Section A
![SectionA](/media/BMWInterviewDiagramV2.png)

## The AWS Developer Challenge for Data Engineers Section B

1A: Data Source - Batched data ie: when a company only wants to ingest data once every 6 months

1B: Data Source - Streaming data this is when a company wants to store data as it is available ie: storing plant sensor information

2: The API Gateway is used to provide a contact point for the company to be able to send their data to the Data Lake. The api is to allow a company to plug into the cloud infrustructure

3: The lambda function is used to be able to distinguish what kind of data it is receiving and route the data depending on if it is batched or streamed data.

4: The Kinesis stream is used for streamed data and the reason for its use is that it can in real time transform the data into the way we want it stored in S3

5A: Prepared data store is where the data is in its final form and is ready for consumption by either business or other applications

5B: RAW bucket is where the batched files are stored that have not been converted in anyway. The data will be moved here when the company has supplied the data through the various AWS componenets

5C: Source Data store -  this is where the data has been converted in some minimal way from the raw data to a more structured format. Ie: adding meta data, removing columns or filenames etc

6A: The step functions are used to kick off the lambda ingest functions. This is triggered when the lambda (no. 3) has routed the data towards the step function. When the step function is executed it will run the various other lambda functions and glue jobs to move the data through Raw to prepared.

6B: This lambda is used in the initial phase. In which the batched data is stored in it original form. The lambda will call the corresponding glue job to be able to move the data to the RAW bucket

6C: This lambda is used to manipulate the data in a small way. The lambda will call the corresponding ETL glue job that will move the data from Raw to Source doing minimal adjustments to the data.

6D: This lambda is used to convert move and convert the data in the source bucket to the prepared by calling the appropriate ETL glue job. The data is moved and prepared in a way that business and other applications can make use of for either business intelligence or other use cases.

7:The glue jobs component as mentioned in 6A - 6D is used to move and transform the data into the various buckets throughout the system.

8: Athen DB is used by the users to be able to query the data in a adhoc fashion when the data needs to be searched

9: CodeBuild is used to setup all the components within its security group (no 17) using terraforms to set up the ingest components (no. 2 - 10). Codebuild and terraforms can only create components based on the security group it is in based of Cloudformation and the VPC (no. 16) CodeBuild also creates a link to CloudWatch so that all process that are run can tracked and displayed in Cloudwatch.

10: The DynimoDb is used to keep track of all the various configurations that need to be used in transforming the data by the various glue jobs. This is called by the step functions.

11: CloudWatch is used by all the components to log information of what is happening throughout the system

12: Cloudformation is used to create the Codebuild and all its various components. It has its own IAM policy that allows the Cloudformation to only create the necessary components.

13: The Github repository that has all the configurations for CloudFormation and also Codebuild.

14: The user that interacts with the Githib repository that is pulled by cloudformation and codebuild. Also the user can interact with Athena to make adhoc

15: The IAM policy that specifies what CloudFormation can do



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

## Section A
### Design an Architecture Diagram - We want to see a picture.
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

## Section B
### Describe the Section A - Architecture Diagram 

Within this Readme.md describe the architecture above, giving detail when and how you would use the selected components.

**Please do not reference any websites or published articles.** 
**We are looking for original content!** 
**We do not want to see definitions of the AWS components.**


##### Hints
* Consider aspects like security (iam / firewalls / vpc / security groups / roles)
* To each component used, give a detailed description on how it fits into the solution, please do not reference existing AWS documentation, use your own words! Feel free to document your thought process. We are interested to find out how you think.
___

## Section C
**Try your best do not keep the section open, we want to see how you apply yourself**

Within the Git Repository Structure:
* Modify the CloudFormation Template [CFN/seed.yaml] in order to create a CodeBuild Project.
* Update the _glue_jobs.tf_, _main.tf_ and _output.tf_ terraform files. 
* Provide the python script that will be used within the glue job, using either python shell or spark, think here about using DynamoDB to keep certain job settings and table structures for S3.
___

## Submit it

Please use a private repo just email us when you are done. 

## Your Solution Starts HERE!!!
Use this area to describe your solution as requested in *_Section B_*. 


## Additional Comments / Information / Concerns
Add info here.
