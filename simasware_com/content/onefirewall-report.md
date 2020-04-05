+++
title = "OneFirewall Data Report1"
description = ""
tags = [
    "go",
    "golang",
    "templates",
    "themes",
    "development",
]
date = "2020-03-31"
categories = [
    "Development",
    "golang",
]
menu = "main"

+++
d
{{< rawhtml >}}

<!DOCTYPE HTML>
<html>

<head>
  <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
  <meta content="utf-8" http-equiv="encoding">
  <title>OneFirewall Latest Reports</title>

  <style type="text/css">
    body, html {
      font-family: sans-serif;
    }
  </style>

  <script src="https://visjs.github.io/vis-timeline/standalone/umd/vis-timeline-graph2d.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <link href="https://visjs.github.io/vis-timeline/styles/vis-timeline-graph2d.min.css" rel="stylesheet" type="text/css" />
</head>
<body onload="onload()">
<h2>OneFirewall Latest Reports</h2>

<br />
<div id="visualization"></div>

<script type="text/javascript">
    function onload(){
        console.log(1)
        return
        jQuery.ajax({
                    url: 'http://localhost:3000/api/v1/last_day_data',
                    datatype: 'json',
                    contentType: "application/json; charset=utf-8",
                    type: 'get',
                    success: function (msg) {
                        load_chart(msg)
                    },
                    error: function (msg) {
                        alert("error :( ")
                    }
                });
    }

    function load_chart(msg){
        var container = document.getElementById('visualization');
        var dataset = new vis.DataSet(msg.items);
        var graph2d = new vis.Graph2d(container, dataset, msg.options);
    }

</script>
</body>
</html>

{{< /rawhtml >}}
