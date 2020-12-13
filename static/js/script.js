$(document).ready(function () {

    var API_KEY = "AIzaSyAsAYLGbJmBreevDbLso9P6QMt84dM-JQM"
    var video = " "
    

    $("#form").submit(function (event) {
        event.preventDefault()
        
        

        var search = $("#search").val()
        videoSearch(API_KEY, search, 12)
        
    })
    function videoSearch(key, search, maxResults) {

 
        $.get("https://www.googleapis.com/youtube/v3/search?key=" + key + "&type=video&part=snippet&maxResults="
            + maxResults + "&q=" + search, function (data) {
                console.log(data)
                
                data.items.forEach(item => {
                    video = ` <iframe width="355" height="300" src="https://www.youtube.com/embed/${ item.id.videoId }" frameborder="0" allowfullscreen></iframe> `
            

  
            
                    $("#videos").append(video)
                });

            })
        
    }

})
