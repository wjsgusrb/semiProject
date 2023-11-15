 const ajaxController = {
    getChartInfo : function(data,callback){
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

    getSelectUser : (data, callback) =>{
        $.ajax({
            url: "selectId.me",
            type: "post",
            dataType: "JSON",
            data,
            success: (result) => {
                callback(result);
            },
            error: (err) => {
                console.log(err)
            }
        })  
    },
    sendFrieds:  (data,callback) =>{
        $.ajax({
            url: "sendFrieds.me",
            type: "post",
            dataType: "JSON",
            data,
            success: (result) => {
                console.log(result)
                callback(result)
            },
            error: (err) => {
                console.log(err)
            }
        })  
    },
    checkSendFrieds:  (callback) =>{
        $.ajax({
            url: "checkSeedFrieds.me",
            type: "post",
            dataType: "JSON",
            success: (result) => {
                callback(result);
            },
            error: (err) => {
                console.log("친구 추가 목록 가져오기 실패")
            }
        })  
    },
    selecttopFiveList: (callback) =>{
        $.ajax({
            url: "selecttopFiveList.bo",
            type: "post",
            dataType: "JSON",    
            success: (result) => {  
              
                callback(result);
            },
            error: (err) => {
                console.log("친구 추가 목록 가져오기 실패")
            }
        })  
    },


    successFriedsPostAjax: (data,callback) =>{
        console.log(data);
        $.ajax({
            url: "successFriedsPost.bo",
            type: "post",
            data,
            dataType: "JSON",    
            success: (result) => {  
                callback(result);
            },
            error: (err) => {
                console.log("친구 추가 목록 가져오기 실패")
            }
        })  
    },

    deleteFriedsPostAjax: (data,callback) =>{
        console.log(data);
        $.ajax({
            url: "deleteFriendsPost.bo",
            type: "post",
            data,
            dataType: "JSON",    
            success: (result) => {  
                callback(result);
            },
            error: (err) => {
                console.log("친구 삭제  실패")
            }
        })  
    },

    updateChartInfoAjax: (data,callback) =>{
        $.ajax({
            url: "updateChartInfo.bo",
            type: "post",
            data,
            dataType: "JSON",    
            success: (result) => {  
                callback(result);
            },
            error: (err) => {
                console.log("운동정보 수정 실패")
            }
        })  
    },






    
}