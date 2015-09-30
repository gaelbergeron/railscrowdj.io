$(document).ready(function(){

  Track = function(trackId){

  SC.initialize({
    client_id: 'e463348f5dce90fed78b9bc77460209e'
  });
    
  SC.stream("/tracks/"+trackId, function(sound){
    sound.play();
  });

  };

});