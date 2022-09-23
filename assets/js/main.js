document.addEventListener('DOMContentLoaded', function() {
    var baseUrl = $('#baseUrl').val();

    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },
      eventClick: function(info) {
        info.jsEvent.preventDefault(); // don't let the browser navigate
        
        $(info.el).popover({
            title: info.event._def.title,
            placement:'bottom',
            trigger : 'hover',
            content: `Rework Date Start At ${moment(info.event.start).format('YYYY-MM-DD')} and will end at ${moment(info.event.end).format('YYYY-MM-DD')}`,
            container:'body'
        }).popover('show');
      }
    });
    calendar.destroy();
    calendar.render(); 

    // Get All Events
    $.ajax({
      url: `${baseUrl}/order/schedules/jobs`, 
      dataType: 'json',
      type: 'GET',
      success: function (response) {
          const {record} = response;
          console.log( record)
          // Loop all events
          for (const event of record) {
              calendar.addEvent({
                title: `Reference work: ${event.client_order_ref}`,
                start: moment(event.from_date).format('YYYY-MM-DD'),
                end: moment(event.to_date ? event.to_date: event.from_date).format('YYYY-MM-DD')
              });
          }
      }
    });

    function getContent(module_id) {
      $.ajax({
        url: `${baseUrl}module/${module_id}`, 
        dataType: 'json',
        type: 'GET',
        success: function (response) {
            const {
              template, 
              scriptPath
            } = response;

            // Empty Container
            $('#content-container').empty()
            // Set Content
            $('#content-container').html(template);
            // Load Scripts
            $.getScript(scriptPath);
        }
      });
    }
    
    $('.nav-item').on('click', function(e) {
      e.preventDefault();
      const selectedId = $(this).children().attr('id'),
        module_id = $(this).children().data('module_id');
      // Disable current active
      $('.nav-item a').each(function(index, item) { 
        const linkId = item.id,
          last_module_id = item.dataset.module_id;
        $(`#${linkId}`).removeClass('active');
      })
      // Set Selected link to active
      $(`#${selectedId}`).addClass('active');

      // Get content
      getContent(module_id);
    })
});