<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .outer{
            background: rgb(165 173 179);
            color: rgb(32, 28, 28);
            width: 1000px;
            height: auto;
            margin: auto;
            margin-top: 50px;
        }

        #bodyImg{
            position : relative;
            margin: auto;
            /* position: fixed; */
        }

        button.btnShoulder {
            position: absolute;
            top: 310px;
            left: 430px;
        }
        button.btnShoulder2 {
        position: absolute;
        top: 310px;
        left : 535px;
        }
        
        button.btnChest {
            position: absolute;
            top: 310px;
            left: 430px;
        }
        button.btnAbs {
        position: absolute;
        top: 310px;
        left : 535px;
        }
        
        button.btnArm {
            position: absolute;
            top: 310px;
            left: 430px;
        }
        button.btnArm2 {
        position: absolute;
        top: 310px;
        left : 535px;
        }

        button.btnLeg {
            position: absolute;
            top: 310px;
            left: 430px;
        }
        button.btnLeg2 {
        position: absolute;
        top: 310px;
        left : 535px;
        }

    </style>

</head>
<body>
    <div class="outer" >
        <br>
        <h2 style="margin-left: 30px;">머슬지도</h2>
        <br>

    <div style="margin-left: 30px;">부위별운동</div>
    <div style="margin-left: 30px;"> - 부위 클릭시 부위별 운동방법 영상 시청 가능</div>
        
    

    <div id="bodyImg" align="center">
        <img width="300px" src="../" alt="humanbody">

        <button class="btnShoulder" type="button" onclick="javascript:sensorBtnClick('btnShoulder');">어깨</button>
        <button class="btnShoulder2" type="button" onclick="javascript:sensorBtnClick('btnShoulder2');">어깨</button>
        
        <button class="btnChest" type="button" onclick="javascript:sensorBtnClick('btnChest');">가슴</button>
        <button class="btnAbs" type="button" onclick="javascript:sensorBtnClick('btnAbs');">복근</button>
        
        <button class="btnArm" type="button" onclick="javascript:sensorBtnClick('btnArm');">삼두, 이두</button>
        <button class="btnArm2" type="button" onclick="javascript:sensorBtnClick('btnArm2');">삼두, 이두</button>
        
        <button class="btnLeg" type="button" onclick="javascript:sensorBtnClick('btnLeg');">하체</button>
        <button class="btnLeg2" type="button" onclick="javascript:sensorBtnClick('btnLeg2');">하체</button>


    </div>


    

   

    
    </div>
</body>
</html>