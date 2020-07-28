var handle_click;

handle_click = function() {
  return $('.btn-tab').on('click', function(event) {
    $('.collapse').removeClass('show');

    $('.answers').addClass('d-none');
    const question_index = $(this).attr('class').split('question_')[1];
    $('.answer_' + question_index).removeClass('d-none')
  });
};

var handle_category_click;

handle_category_click = function() {
  $('.category-col').on('click', function() {
    $('.category-btn').removeClass('d-none');
    $('.collapse').removeClass('show');

    category = $(this).data('category');

    if (category == "source") {
      $('.pathway').addClass('d-none');
      $('.receptor').addClass('d-none');
    }
    else if(category == "receptor") {
      $('.pathway').addClass('d-none');
      $('.source').addClass('d-none');
    }
    else if (category == "pathway") {
      $('.source').addClass('d-none');
      $('.receptor').addClass('d-none');
    }
  })
};

document.addEventListener('DOMContentLoaded', function () {
  handle_category_click();
  handle_click();
});

document.addEventListener('turbolinks:load', function () {
  handle_category_click();
  handle_click();
});
