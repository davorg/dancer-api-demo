$( document ).ready(function() {

  // Set up editable text fields.
  $('.editable').editable(function(value, settings) {
    var data = {
      resultset: this.dataset.resultset,
      id:        this.dataset.id
    };

    var update = {};
    update[this.dataset.attribute] = value;

    data.update = update; 

    var url = '/api/update_attribute';

    $.ajax({
      url: url,
      type: 'PATCH',
      data: JSON.stringify(data),
      success: function(data) {
        console.log(data);
      }
    });

    return(value);
  }, {
    submit: '&check;',
    cancel: 'X',
    showfn : function(elem) { elem.fadeIn('slow') },
    cancelcssclass : 'btn btn-danger',
    submitcssclass : 'btn btn-success'
  });
});
