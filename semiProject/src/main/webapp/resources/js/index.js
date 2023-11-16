
init = () =>{
    ajaxController.getChartInfo(null,(result) =>{
        chartInfoData =result;
        drawMainChart(chartInfoData)
    })
    ajaxController.checkSendFrieds((result)=>{
        checkSendFrendData = result;
        drawMainCheckFrieds(checkSendFrendData)
    })
    ajaxController.selecttopFiveList((result)=>{
        selectTopFiveData = result;
        drawMainBoardList(selectTopFiveData)
    })
}

drawMainChart = (chartInfo) =>{
    const date = new Date();
    const year = date.getFullYear();
    const month = ('0' + (
        date.getMonth() + 1
    )).slice(-2);
    let weekExChartTime =""
    let weekExChartTarget=""
    for(let i=1; i <=7; i++){
       const day =  (('0' + date.getDate()).slice(-2)-i);
       const dateStr = month + '월 ' + day + ", " + year
       console.log(dateStr)
       for(const day of chartInfo){
        
         if(dateStr === day.exCharDay){
            console.log(day.exChartTime);
            console.log(day.exChartTarget);
            if(i==7){
                weekExChartTime += day.exChartTime
                weekExChartTarget += day.exChartTarget
            }else{
                weekExChartTime += day.exChartTime +",";
                weekExChartTarget += day.exChartTarget +",";
            }
            
         }
        }
      
    }
    console.log(weekExChartTime);
    const weekExChartTimeArr = weekExChartTime.split(",")
    console.log(weekExChartTimeArr);
    console.log(weekExChartTarget);
    const day1 =  (('0' + date.getDate()).slice(-2)-1)
    const day2 =  (('0' + date.getDate()).slice(-2)-2)
    const day3 =  (('0' + date.getDate()).slice(-2)-3)
    const day4 =  (('0' + date.getDate()).slice(-2)-4)
    const day5 =  (('0' + date.getDate()).slice(-2)-5)
    const day6 =  (('0' + date.getDate()).slice(-2)-6)
    const day7 =  (('0' + date.getDate()).slice(-2)-7)
    const ctx = document.getElementById('myChart');
    const data = {
        labels: [
            day7,
            day6,
            day5,
            day4,
            day3,
            day2,
            day1
        ],
        datasets: [
            {
                label: 'My First Dataset',
                data: [
                    weekExChartTimeArr[6],
                    weekExChartTimeArr[5],
                    weekExChartTimeArr[4],
                    weekExChartTimeArr[3],
                    weekExChartTimeArr[2],
                    weekExChartTimeArr[1],
                    weekExChartTimeArr[0]
                ],
                fill: false,
                borderColor: 'rgb(75, 192, 192)',
                tension: 0.1,
                borderWidth: 3,
            }
        ]
    };
    const config = {
        type: 'line',
        data: data
    };
    new Chart(ctx, config);
    
}
drawMainCheckFrieds = (checkSendFrendData) =>{
    console.log(checkSendFrendData);
    
    for(let i=0; i<checkSendFrendData.length; i++){
        const div2 = document.createElement('div');
        div2.classList.add("checkFrends");
        if(i === 0){
            div2.classList.add("active");
        }
        div2.innerHTML = "<i class = 'fa-regular fa-user fa-10x'></i>" +
                "<br>" +
                "<p>" + checkSendFrendData[i].userName + "</p>"+
                "<p class='hiddleUserNo' style='display: none;'>" + checkSendFrendData[i].userNo + "</p>"
        document.getElementById("getFriendMain").appendChild(div2)
    }
}
drawMainBoardList = (selectTopFiveData) =>{			
    for(const data of selectTopFiveData){
        const tr = document.createElement('tr');
        tr.innerHTML = "<th scope='row'>" + data.boardNo + "</th>" +
                "<td>" + data.userNo + "</td>" +
                "<td style='' colspan='3'>" + data.boardTitle + "</td>" +
                "<td>" + data.boardCount + "</td>" +
                "<td>" + data.updateDate + "</td>" 
        tr.onclick = ()=>{
        //location.href = "detail.bo?bno=" + data.boardNo;
        }	
        document.querySelector("#main-exBoard-table>tbody").appendChild(tr);						
    }
}

function PreviousFrendsCheck() {
    const active = document.querySelector(".active");
    if (active.previousElementSibling !== null) {
        active.previousElementSibling.classList.add("active");
        active.classList.remove("active");
    }
}

function nextFrendsCheck() {
    const active = document.querySelector(".active");
    if (active.nextElementSibling !== null) {
        active.nextElementSibling.classList.add("active");
        active.classList.remove("active");
    }
}



deleteFriendsPost = () =>{
    const hiddleUserNo=  document.querySelector(".active .hiddleUserNo");
    ajaxController.deleteFriedsPostAjax({hiddleUserNo: hiddleUserNo.innerText}, (result)=>{
        if(result)
        alert("친구삭제 성공");
        location.reload(true); 
       })
}

function successFriedsPost(){
    console.log(document.querySelector(".active .hiddleUserNo"));
   const hiddleUserNo=  document.querySelector(".active .hiddleUserNo");
   
   ajaxController.successFriedsPostAjax({hiddleUserNo: hiddleUserNo.innerText}, (result)=>{
    if(result)
    alert("친구추가 성공");
    location.reload(true);
    
   })
}


