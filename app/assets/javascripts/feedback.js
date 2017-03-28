var dataset = [];                        //Initialize empty array

$( document ).ready(function() {
  $.ajax({
            type: "GET",
            contentType: "application/json; charset=utf-8",
            url: 'http://localhost:3000/feedbacks',
            dataType: 'json',
            success: function (feedbacks) {
                    feedbacks.forEach(function(feedback) {
                      dataset.push(feedback.score+1);
                    })
                    viz(dataset);
            },
            error: function (error) {
              console.log("error retrieving data");
            }
    });
});

// // $(document).on('ready page:load', function () { //This version works the same as .ready but does not solve error messages
// // $(document).on('turbolinks:load', function() { // This version doe not remove divs and keeps adding to graph
//     d3.select("#graphBar").selectAll("div").remove();
//     console.log("removed");
//
//     $.get('http://localhost:3000/feedbacks')
//     .then(function(success){
//       success.forEach(function(elem) {
//         dataset.push(elem.score+1);
//       })
//       viz(dataset);
//     })
//     // .catch(function(error){
//     //   console.log("I am an error turtle");
//     // })
//     .always(function(andForever) {
//       console.log(".always");
//     })
//     viz();

  var viz = function(dataset){
    d3.select("#graphBar").selectAll("div")
      .data(dataset)
      .enter()
      .append("div")
      .attr("class", "bar")
      .style("height", function(d) {
          var barHeight = d * 20;  //Scale up by factor of 5
          return barHeight + "px";
    });

    var color = d3.scaleLinear()
    .domain([0, 1, 5])
    .range(["red", "white", "green"]);

    d3.select("#graphCircle").selectAll("div")
      .data(dataset)
      .enter()
      .append("svg")
      .attr("width", function(d) {
        var cirWidth = d * 10;  //Scale up by factor of 5
        return cirWidth;
      })
      .attr("height",  function(d) {
        var cirHeight = d * 10;  //Scale up by factor of 5
        return cirHeight;
      })
      .append("circle")
      .attr("cx",  function(d) {
        var cirCx = d/2 * 10;  //Divide d by 2 and scale up by factor of 5
        return cirCx;
      })
      .attr("cy",  function(d) {
        var cirCy = d/2 * 10;  //Divide d by 2 and scale up by factor of 5
        return cirCy;
      })
      .attr("r",  function(d) {
        var cirR = d/2 * 10;  //Divide d by 2 and scale up by factor of 5
        return cirR;
      })
      .style("fill",  function(d) {
        var cirColor = color(d);  //Define color by data
        return cirColor;
      });
  }
