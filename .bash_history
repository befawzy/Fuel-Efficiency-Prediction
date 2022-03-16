gcloud auth list
gcloud config list project
gcloud config set project <fuel-efficiency-prediction>
gcloud config set project <'fuel-efficiency-prediction'>
gcloud config list project
gcloud projects list
gcloud config set project <fuel-efficiency-prediction>
gcloud config set project $fuel-efficiency-prediction
gcloud config list project
gcloud config set project fuel-efficiency-prediction
gcloud config list project
echo $GOOGLE_CLOUD_PROJECT
gcloud services enable compute.googleapis.com                                containerregistry.googleapis.com                         aiplatform.googleapis.com
BUCKET_NAME=gs://$GOOGLE_CLOUD_PROJECT-bucket
gsutil mb -l us-central1 $BUCKET_NAME
alias python=python3
mkdir mpg
cd mpg
touch Dockerfile
mkdir trainer
touch trainer/train.py
sed -i "s|BUCKET_NAME|$BUCKET_NAME|g" trainer/train.py
/usr/bin/python3 /home/bishowahib/mpg/trainer/train.py
sed -i "s|BUCKET_NAME|$fuel-efficiency-prediction-bucket|g" trainer/train.py
sed -i "s|BUCKET_NAME|$fuel-efficiency-prediction-bucket|g" trainer\train.py
sed -i "s|BUCKET_NAME|$fuel-efficiency-prediction-bucket|g" mpg/trainer/train.py
sed -i "s|BUCKET_NAME|$BUCKET_NAME|g" mpg/trainer/train.py
echo gs://$GOOGLE_CLOUD_PROJECT-bucket.
echo gs://$GOOGLE_CLOUD_PROJECT-bucket
sed -i "s|BUCKET_NAME|$BUCKET_NAME|g" trainer/train.py
sed -i "s|BUCKET_NAME|$BUCKET_NAME|g" mpg/trainer/train.py
IMAGE_URI="gcr.io/$GOOGLE_CLOUD_PROJECT/mpg:v1"
docker build ./ -t $IMAGE_URI
cd mpg
docker build ./ -t $IMAGE_URI
docker push $IMAGE_URI
cd
pip3 install google-cloud-aiplatform --upgrade --user
cd mpg
pip3 install google-cloud-aiplatform --upgrade --user
cd
python3 deploy.py | tee deploy-output.txt
cd mpg
python3 deploy.py | tee deploy-output.txt
cd
python3 deploy.py | tee deploy-output.txt
ENDPOINT=$(cat deploy-output.txt | sed -nre 's:.*Resource name\: (.*):\1:p' | tail -1)
sed -i "s|ENDPOINT_STRING|$ENDPOINT|g" predict.py
python3 predict.py
git status
git add -A
git commit -m 'adding cloud files to the repository'
git config --global user.email 'bishowahib@gmail.com'
git config --global user.name 'Beshoy Fawzy'
git add
