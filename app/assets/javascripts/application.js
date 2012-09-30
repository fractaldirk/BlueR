// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require twitter/bootstrap
//= require_tree .


  $(function() {
    $(document).on("focus",".competency", function() {
        $('.competency').autocomplete({
            source: ['Knowlegde and/or experience', 'Demonstrated ability in', 'Knowledge and understanding of the NGO sector', 'Identification with Greenpeace goals and supportive of Greenpeace values', 'Commitment to', 'Being a team player', 'Planning & Organizing', 'Empowering & Developing People', 'Strategic Orientation and Managing Vision']
        }); 
    });
  })

  $(function() {
    $(document).on("focus",".attitude", function() {
        $('.attitude').autocomplete({
            source: ['Identification with Greenpeace goals and supportive of Greenpeace values', 'Commitment to', 'Autonomous', 'Stress resistance', '(self) motivated', 'Integrative thinker', 'Confidential (to sensitive information)', 'Flexible', 'Positive thinker', 'Eager to learn', 'Eager to teach', 'Tenacious', 'Collaborative', 'Enthusiastic', 'Discrete', 'Proactive']
        }); 
    });
  })
