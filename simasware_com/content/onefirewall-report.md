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
date = "2020-04-05"
categories = [
    "Development",
    "golang",
]
menu = "main"

+++
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

<div id="visualization"></div>

<script type="text/javascript">
    function onload(){
        console.log(1)
        msg = {"options":{"start":"2020-04-03T00:47:17","end":"2020-04-05T21:47:17"},"items":[{"x":"2020-04-03T00:47:17","y":0,"label":{"content":0}},{"x":"2020-04-03T03:47:17","y":0,"label":{"content":0}},{"x":"2020-04-03T06:47:17","y":0,"label":{"content":0}},{"x":"2020-04-03T09:47:17","y":0,"label":{"content":0}},{"x":"2020-04-03T12:47:17","y":0,"label":{"content":0}},{"x":"2020-04-03T15:47:17","y":0,"label":{"content":0}},{"x":"2020-04-03T18:47:17","y":0,"label":{"content":0}},{"x":"2020-04-03T21:47:17","y":0,"label":{"content":0}},{"x":"2020-04-04T00:47:17","y":0,"label":{"content":0}},{"x":"2020-04-04T03:47:17","y":0,"label":{"content":0}},{"x":"2020-04-04T06:47:17","y":0,"label":{"content":0}},{"x":"2020-04-04T09:47:17","y":0,"label":{"content":0}},{"x":"2020-04-04T12:47:17","y":2,"label":{"content":2}},{"x":"2020-04-04T15:47:17","y":11,"label":{"content":11}},{"x":"2020-04-04T18:47:17","y":8,"label":{"content":8}},{"x":"2020-04-04T21:47:17","y":19020,"label":{"content":19020}},{"x":"2020-04-05T00:47:17","y":158964,"label":{"content":158964}},{"x":"2020-04-05T03:47:17","y":3,"label":{"content":3}},{"x":"2020-04-05T06:47:17","y":76,"label":{"content":76}},{"x":"2020-04-05T09:47:17","y":3,"label":{"content":3}},{"x":"2020-04-05T12:47:17","y":2,"label":{"content":2}},{"x":"2020-04-05T15:47:17","y":8,"label":{"content":8}},{"x":"2020-04-05T18:47:17","y":5,"label":{"content":5}},{"x":"2020-04-05T21:47:17","y":113936,"label":{"content":113936}}]}
        load_chart(msg)
         
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
