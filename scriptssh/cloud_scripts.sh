if [ "$1" == "create" ]
then
  aws cloudformation create-stack \
      --stack-name "$2" \
      --template-body file://"$3" \
      --parameters file://"$4" \
      --region eu-north-1 \
      --capabilities CAPABILITY_NAMED_IAM
elif [ "$1" == "update" ]
then
  aws cloudformation update-stack \
      --stack-name "$2" \
      --template-body file://"$3" \
      --parameters file://"$4" \
      --region eu-north-1 \
      --capabilities CAPABILITY_NAMED_IAM
elif [ "$1" == "delete" ]
then
  aws cloudformation delete-stack \
     --stack-name "$2"
fi
