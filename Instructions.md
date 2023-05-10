## step by step checks
### To check data ingestion

`python src/components/data_ingestion.py`


## HTML
`predict_datapoint ` in the following line calls the same function in `app.py`:

`<form action="{{ url_for('predict_datapoint')}}" method="post">`




## Microsoft Azure deployment
- Go to [azure.microsoft.com](azure.microsoft.com)
- Create a resource
- Create web app > create
	-  **Basics**
		-  create new resource group: e.g. housingprediction_rg
		-  Name: e.g. housingprediction
		-  Publish: Code
		-  Runtime stack: Python 3.9 (or the version of your local python env)
		-  Pricing Plan: Basic B1
	-  **Deployment**
		-  	GitHub Actions settings: enable
		-  Configure with Github account
		-  Review + create
		-  create

- Once you see *Your deployment is complete*, you can check on  that `.github/workflows` has been created in your repo. If you click on it and open the `yml` file, you will see the steps that has been taken to deploy your app. You will see `publish-profile` in the end that has a secret key. To see the value of this secret:
	- click on Settings > Secrets and Variables > Actions
	- You will see the key that was created. 

### See the deployed model
- Go to Github Actions
- Click on the workflow run 

<figure align="center">
	<img src="figures/github actions-azure workflow runs.png" width="400"/>
	<figcaption>Fig.1</figcaption>
</figure> 

- Click on *build* or *deploy* to see the steps taken. 

<figure align="center">
	<img src="figures/azure build and deployed workflow.png" width="400"/>
	<figcaption>Fig.2</figcaption>
</figure>

- Click on the link on deploy box. Add `predictdata` to the hyperlink and you will be able to see the prediction page. Fill in and see the prediction. 

<figure align="center">
	<img src="figures/deployed app.png" width="400"/>
	<figcaption>Fig.3</figcaption>
</figure>


### Cleanup to avoid charges
On Microsoft Azure, delete 

- the deployment
- the app service