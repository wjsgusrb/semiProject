drawDayChart = (chartInfo) =>{ 
    let oneWeeks = 0;
    let twoWeeks = 0;
    let threeWeeks = 0;
    let foreWeeks = 0;

    const pattern1 = new RegExp("^[1-7]$");
    const pattern2 = /^(?:[8-9]|1[0-5])$/;
    const pattern3 = /^(1[6-9]|20|21|22|23)$/;
    const pattern4 = /^(24|25|26|27|28|29|30)$/;

    for (const time of chartInfo) {
        const exTime = time.exCharDay.substr(4, 2);
        switch (true) {
            case pattern1.test(exTime.replace(',', '')):
                oneWeeks += time.exChartTime
                break;
            case pattern2.test(exTime.replace(',', '')):
                twoWeeks += time.exChartTime
                break;
            case pattern3.test(exTime.replace(',', '')):
                threeWeeks += time.exChartTime
                break;
            case pattern4.test(exTime.replace(',', '')):
                foreWeeks += time.exChartTime
                break;
        }
    }
    oneWeeks = oneWeeks / 7;
    twoWeeks = twoWeeks / 7;
    threeWeeks = threeWeeks / 7;
    foreWeeks = foreWeeks / 7;

    const ctx3 = document.getElementById('daychart');
    new Chart(ctx3, {
        type: 'bar',
        data: {
            labels: [
                '1weeks', '2weeks', '3weeks', '4weeks'
            ],
            datasets: [
                {
                    label: 'day week',
                    data: [
                        oneWeeks, twoWeeks, threeWeeks, foreWeeks
                    ],
                    borderWidth: 3,
                }
            ]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

}

drawTargetChart= (chartInfo) =>{
    let shoulder = 0;
    let leg = 0;
    let chest = 0;
    let back = 0;
    let triceps = 0;
    let Biceps = 0;


    for (const time of chartInfo) {
        time
            .exChartTarget
            .includes('shoulder') === true
                ? shoulder++
                : '';
        time
            .exChartTarget
            .includes('leg') === true
                ? leg++
                : '';
        time
            .exChartTarget
            .includes('chest') === true
                ? chest++
                : '';
        time
            .exChartTarget
            .includes('back') === true
                ? back++
                : '';
        time
            .exChartTarget
            .includes('triceps') === true
                ? triceps++
                : '';
        time
            .exChartTarget
            .includes('Biceps') === true
                ? Biceps++
                : '';
    }


    const ctx2 = document.getElementById('targetchart');
    const data2 = {
        labels: [
            'shoulder',
            'chest',
            'back',
            'Biceps',
            'triceps',
            'leg'
        ],
        datasets: [
            {
                label: 'my targetDate',
                data: [
                    shoulder,
                    chest,
                    back,
                    Biceps,
                    triceps,
                    leg
                ],
                fill: true,
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgb(255, 99, 132)',
                pointBackgroundColor: 'rgb(255, 99, 132)',
                pointBorderColor: '#fff',
                pointHoverBackgroundColor: '#fff',
                pointHoverBorderColor: 'rgb(255, 99, 132)'
            }
        ]
    };

    const config2 = {
        type: 'radar',
        data: data2,
        options: {
            elements: {
                line: {
                    borderWidth: 2
                }
            }
        },
      
    };

    new Chart(ctx2, config2);
}

drawWeekChart = (chartInfo) =>{
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
    const ctx = document.getElementById('totalChart');
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


