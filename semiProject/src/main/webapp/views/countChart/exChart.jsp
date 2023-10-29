<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .exchart{
        width: 90%;
        height: 800px;
        background-color: rgb(148, 148, 148);
        border-radius: 15px 15px 15px 15px;
    }
</style>
</head>
<body>
    <div align="center">
        <%@ include file="/views/common/menubar.jsp" %>

        <div class="exchart">
            <div class="exchart-chart" style="display: flex;" align="letf">  
                    <div style="width: 75%; height: 100%;">
                        <canvas id="myChart"></canvas>
                    </div>
                  
                    <script>
                        const ctx = document.getElementById('myChart');
                        // const labels = Utils.months({count: 7});
                        const data = {
                            labels: [
                                "월",
                                "월",
                                "월",
                                "월",
                                "월",
                                "월",
                                "월"
                            ],
                            datasets: [
                                {
                                    label: 'My First Dataset',
                                    data: [
                                        65,
                                        59,
                                        80,
                                        81,
                                        56,
                                        55,
                                        40
                                    ],
                                    fill: false,
                                    borderColor: 'rgb(75, 192, 192)',
                                    tension: 0.1
                                }
                            ]
                        };
                        const config = {
                            type: 'line',
                            data: data
                        };
                        new Chart(ctx, config);
                    </script>
             
            </div>
            <div class="exchart-">
                
            </div>
        </div>
    </div>
</body>
</html>