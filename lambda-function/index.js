exports.handler = function (event, context, callback) {
    const responseString = "Welcome to CloudFormationTemplate";
    const response = {
        response: responseString
    };
    console.log(response);
    callback(null, response);
};