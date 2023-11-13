 const ajaxController = {
    getChartInfo : function(data, callback){
        $.ajax({
            url: "getChartInfo",
            type: "post",
            dataType: "JSON",
            success: (result) => {
                callback(result);
            },
            error: (err) => {
                console.log(err)
            }
        })
    },

    getSelectUser : function(data, callback){
        $.ajax({
            url: "selectId.me",
            type: "post",
            dataType: "JSON",
            data: {
                selectId : data
            },
            success: (result) => {
                callback(result);
            },
            error: (err) => {
                console.log(err)
            }
        })  
    }




    
}