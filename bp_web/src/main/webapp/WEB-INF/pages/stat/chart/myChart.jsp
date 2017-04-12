<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/components/myChartjs/images/style.css" type="text/css">
        <script src="${pageContext.request.contextPath}/components/myChartjs/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/components/myChartjs/amcharts/serial.js" type="text/javascript"></script>

        <script>
            var chart;

            var chartData = ${chartData};


            AmCharts.ready(function () {
                // SERIAL CHART
                chart = new AmCharts.AmSerialChart();
                chart.dataProvider = chartData;
                chart.categoryField = "商品编号";
                chart.color = "#FFFFFF";
                chart.fontSize = 10;
                chart.startDuration = 1;
                chart.plotAreaFillAlphas = 0.2;
                // the following two lines makes chart 3D
                chart.angle = 30;
                chart.depth3D = 50;

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.gridAlpha = 0.2;
                categoryAxis.gridPosition = "start";
                categoryAxis.gridColor = "#FFFFFF";
                categoryAxis.axisColor = "#FFFFFF";
                categoryAxis.axisAlpha = 0.5;
                categoryAxis.dashLength = 5;

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.stackType = "3d"; // This line makes chart 3D stacked (columns are placed one behind another)
                valueAxis.gridAlpha = 0.2;
                valueAxis.gridColor = "#FFFFFF";
                valueAxis.axisColor = "#FFFFFF";
                valueAxis.axisAlpha = 0.5;
                valueAxis.dashLength = 5;
                valueAxis.title = "产品销售排行";
                valueAxis.titleColor = "#FFFFFF";
                valueAxis.unit = "￥";
                chart.addValueAxis(valueAxis);

                // GRAPHS
                // first graph
                var graph1 = new AmCharts.AmGraph();
                graph1.title = "2004";
                graph1.valueField = "销量";
                graph1.type = "column";
                graph1.lineAlpha = 0;
                graph1.lineColor = "#D2CB00";
                graph1.fillAlphas = 1;
                graph1.balloonText = "销量 in [[category]] (2004): <b>[[value]]</b>";
                chart.addGraph(graph1);

                // second graph
                /* var graph2 = new AmCharts.AmGraph();
                graph2.title = "2005";
                graph2.valueField = "year2005";
                graph2.type = "column";
                graph2.lineAlpha = 0;
                graph2.lineColor = "#BEDF66";
                graph2.fillAlphas = 1;
                graph2.balloonText = "GDP grow in [[category]] (2005): <b>[[value]]</b>";
                chart.addGraph(graph2); */

                chart.write("chartdiv");
            });
        </script>
    </head>

    <body style="background-color:#000000;">
        <div id="chartdiv" style="width: 100%; height: 400px;"></div>
    </body>

</html>