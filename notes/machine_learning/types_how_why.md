# Things to look into

Online - Online data feeding is done.
Batch - Is trained offline and then is put up. Also uses all the available data.
Instance based and Model based

How can you know which values will make your model perform best? To answer this
question, you need to specify a performance measure. You can either define a utility
function (or fitness function) that measures how good your model is, or you can define
a cost function that measures how bad it is. For linear regression problems, people
typically use a cost function that measures the distance between the linear model’s
predictions and the training examples; the objective is to minimize this distance.
This is where the Linear Regression algorithm comes in: you feed it your training
examples and it finds the parameters that make the linear model fit best to your data.
This is called training the model
